{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postChargesChargeCapture
module StripeAPI.Operations.PostChargesChargeCapture where

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

-- | > POST /v1/charges/{charge}/capture
-- 
-- \<p>Capture the payment of an existing, uncaptured, charge. This is the second half of the two-step payment flow, where first you \<a href=\"\#create_charge\">created a charge\<\/a> with the capture option set to false.\<\/p>
-- 
-- \<p>Uncaptured payments expire exactly seven days after they are created. If they are not captured by that point in time, they will be marked as refunded and will no longer be capturable.\<\/p>
postChargesChargeCapture :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                      -- ^ charge | Constraints: Maximum length of 5000
  -> PostChargesChargeCaptureRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostChargesChargeCaptureResponse)) -- ^ Monad containing the result of the operation
postChargesChargeCapture config
                         charge
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostChargesChargeCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Charge)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/capture
-- 
-- The same as 'postChargesChargeCapture' but returns the raw 'Data.ByteString.Char8.ByteString'
postChargesChargeCaptureRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               PostChargesChargeCaptureRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeCaptureRaw config
                            charge
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/capture
-- 
-- Monadic version of 'postChargesChargeCapture' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeCaptureM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             PostChargesChargeCaptureRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostChargesChargeCaptureResponse))
postChargesChargeCaptureM charge
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostChargesChargeCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Charge)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostChargesChargeCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/charges/{charge}/capture
-- 
-- Monadic version of 'postChargesChargeCaptureRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postChargesChargeCaptureRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                PostChargesChargeCaptureRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postChargesChargeCaptureRawM charge
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/charges/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel charge)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postChargesChargeCaptureRequestBody
-- 
-- 
data PostChargesChargeCaptureRequestBody = PostChargesChargeCaptureRequestBody {
  -- | amount: The amount to capture, which must be less than or equal to the original amount. Any additional amount will be automatically refunded.
  postChargesChargeCaptureRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | application_fee: An application fee to add on to this charge.
  , postChargesChargeCaptureRequestBodyApplicationFee :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | application_fee_amount: An application fee amount to add on to this charge, which must be less than or equal to the original amount.
  , postChargesChargeCaptureRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postChargesChargeCaptureRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | receipt_email: The email address to send this charge\'s receipt to. This will override the previously-specified email address for this charge, if one was set. Receipts will not be sent in test mode.
  , postChargesChargeCaptureRequestBodyReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor: For card charges, use \`statement_descriptor_suffix\` instead. Otherwise, you can use this value as the complete description of a charge on your customers’ statements. Must contain at least one letter, maximum 22 characters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postChargesChargeCaptureRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_suffix: Provides information about the charge that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postChargesChargeCaptureRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | transfer_data: An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https:\/\/stripe.com\/docs\/connect\/destination-charges) for details.
  , postChargesChargeCaptureRequestBodyTransferData :: (GHC.Maybe.Maybe PostChargesChargeCaptureRequestBodyTransferData')
  -- | transfer_group: A string that identifies this transaction as part of a group. \`transfer_group\` may only be provided if it has not been set. See the [Connect documentation](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#transfer-options) for details.
  , postChargesChargeCaptureRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeCaptureRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyAmount obj) : (Data.Aeson..=) "application_fee" (postChargesChargeCaptureRequestBodyApplicationFee obj) : (Data.Aeson..=) "application_fee_amount" (postChargesChargeCaptureRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "expand" (postChargesChargeCaptureRequestBodyExpand obj) : (Data.Aeson..=) "receipt_email" (postChargesChargeCaptureRequestBodyReceiptEmail obj) : (Data.Aeson..=) "statement_descriptor" (postChargesChargeCaptureRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postChargesChargeCaptureRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postChargesChargeCaptureRequestBodyTransferData obj) : (Data.Aeson..=) "transfer_group" (postChargesChargeCaptureRequestBodyTransferGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "application_fee" (postChargesChargeCaptureRequestBodyApplicationFee obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postChargesChargeCaptureRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postChargesChargeCaptureRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postChargesChargeCaptureRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postChargesChargeCaptureRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postChargesChargeCaptureRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> ((Data.Aeson..=) "transfer_data" (postChargesChargeCaptureRequestBodyTransferData obj) GHC.Base.<> (Data.Aeson..=) "transfer_group" (postChargesChargeCaptureRequestBodyTransferGroup obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeCaptureRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeCaptureRequestBody" (\obj -> ((((((((GHC.Base.pure PostChargesChargeCaptureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group"))
-- | Defines the data type for the schema postChargesChargeCaptureRequestBodyTransfer_data\'
-- 
-- An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https:\/\/stripe.com\/docs\/connect\/destination-charges) for details.
data PostChargesChargeCaptureRequestBodyTransferData' = PostChargesChargeCaptureRequestBodyTransferData' {
  -- | amount
  postChargesChargeCaptureRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostChargesChargeCaptureRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyTransferData'Amount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postChargesChargeCaptureRequestBodyTransferData'Amount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostChargesChargeCaptureRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostChargesChargeCaptureRequestBodyTransferData'" (\obj -> GHC.Base.pure PostChargesChargeCaptureRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount"))
-- | Represents a response of the operation 'postChargesChargeCapture'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostChargesChargeCaptureResponseError' is used.
data PostChargesChargeCaptureResponse =                   
   PostChargesChargeCaptureResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostChargesChargeCaptureResponse200 Charge            -- ^ Successful response.
  | PostChargesChargeCaptureResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)