{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTransfers
module StripeAPI.Operations.PostTransfers where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/transfers
-- 
-- \<p>To send funds from your Stripe account to a connected account, you create a new transfer object. Your \<a href=\"\#balance\">Stripe balance\<\/a> must be able to cover the transfer amount, or you’ll receive an “Insufficient Funds” error.\<\/p>
postTransfers :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostTransfersRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTransfersResponse)) -- ^ Monad containing the result of the operation
postTransfers config
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTransfersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Transfer)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/transfers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers
-- 
-- The same as 'postTransfers' but returns the raw 'Data.ByteString.Char8.ByteString'
postTransfersRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    PostTransfersRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersRaw config
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/transfers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers
-- 
-- Monadic version of 'postTransfers' (use with 'StripeAPI.Common.runWithConfiguration')
postTransfersM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  PostTransfersRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response PostTransfersResponse))
postTransfersM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTransfersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          Transfer)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/transfers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers
-- 
-- Monadic version of 'postTransfersRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTransfersRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PostTransfersRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/transfers") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTransfersRequestBody
-- 
-- 
data PostTransfersRequestBody = PostTransfersRequestBody {
  -- | amount: A positive integer in %s representing how much to transfer.
  postTransfersRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency: 3-letter [ISO code for currency](https:\/\/stripe.com\/docs\/payouts).
  , postTransfersRequestBodyCurrency :: GHC.Base.String
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTransfersRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | destination: The ID of a connected Stripe account. \<a href=\"\/docs\/connect\/charges-transfers\">See the Connect documentation\<\/a> for details.
  , postTransfersRequestBodyDestination :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , postTransfersRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTransfersRequestBodyMetadata :: (GHC.Maybe.Maybe PostTransfersRequestBodyMetadata')
  -- | source_transaction: You can use this parameter to transfer funds from a charge before they are added to your available balance. A pending balance will transfer immediately but the funds will not become available until the original charge becomes available. [See the Connect documentation](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#transfer-availability) for details.
  , postTransfersRequestBodySourceTransaction :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | source_type: The source balance to use for this transfer. One of \`bank_account\`, \`card\`, or \`fpx\`. For most users, this will default to \`card\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTransfersRequestBodySourceType :: (GHC.Maybe.Maybe PostTransfersRequestBodySourceType')
  -- | transfer_group: A string that identifies this transaction as part of a group. See the [Connect documentation](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#transfer-options) for details.
  , postTransfersRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postTransfersRequestBodyAmount obj) : (Data.Aeson..=) "currency" (postTransfersRequestBodyCurrency obj) : (Data.Aeson..=) "description" (postTransfersRequestBodyDescription obj) : (Data.Aeson..=) "destination" (postTransfersRequestBodyDestination obj) : (Data.Aeson..=) "expand" (postTransfersRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTransfersRequestBodyMetadata obj) : (Data.Aeson..=) "source_transaction" (postTransfersRequestBodySourceTransaction obj) : (Data.Aeson..=) "source_type" (postTransfersRequestBodySourceType obj) : (Data.Aeson..=) "transfer_group" (postTransfersRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postTransfersRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postTransfersRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postTransfersRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "destination" (postTransfersRequestBodyDestination obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTransfersRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postTransfersRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "source_transaction" (postTransfersRequestBodySourceTransaction obj) GHC.Base.<> ((Data.Aeson..=) "source_type" (postTransfersRequestBodySourceType obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postTransfersRequestBodyTransferGroup obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersRequestBody" (\obj -> ((((((((GHC.Base.pure PostTransfersRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))
-- | Defines the data type for the schema postTransfersRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTransfersRequestBodyMetadata' = PostTransfersRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTransfersRequestBodyMetadata')
-- | Defines the enum schema postTransfersRequestBodySource_type\'
-- 
-- The source balance to use for this transfer. One of \`bank_account\`, \`card\`, or \`fpx\`. For most users, this will default to \`card\`.
data PostTransfersRequestBodySourceType'
    = PostTransfersRequestBodySourceType'EnumOther Data.Aeson.Types.Internal.Value
    | PostTransfersRequestBodySourceType'EnumTyped GHC.Base.String
    | PostTransfersRequestBodySourceType'EnumStringBankAccount
    | PostTransfersRequestBodySourceType'EnumStringCard
    | PostTransfersRequestBodySourceType'EnumStringFpx
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersRequestBodySourceType'
    where toJSON (PostTransfersRequestBodySourceType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTransfersRequestBodySourceType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostTransfersRequestBodySourceType'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
          toJSON (PostTransfersRequestBodySourceType'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostTransfersRequestBodySourceType'EnumStringFpx) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx"
instance Data.Aeson.FromJSON PostTransfersRequestBodySourceType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostTransfersRequestBodySourceType'EnumStringBankAccount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                then PostTransfersRequestBodySourceType'EnumStringCard
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx")
                                                      then PostTransfersRequestBodySourceType'EnumStringFpx
                                                      else PostTransfersRequestBodySourceType'EnumOther val)
-- | Represents a response of the operation 'postTransfers'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTransfersResponseError' is used.
data PostTransfersResponse =                   
   PostTransfersResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostTransfersResponse200 Transfer          -- ^ Successful response.
  | PostTransfersResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)