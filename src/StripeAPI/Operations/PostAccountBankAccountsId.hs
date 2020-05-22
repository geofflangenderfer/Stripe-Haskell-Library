{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountBankAccountsId
module StripeAPI.Operations.PostAccountBankAccountsId where

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

-- | > POST /v1/account/bank_accounts/{id}
-- 
-- \<p>Updates the metadata, account holder name, and account holder type of a bank account belonging to a \<a href=\"\/docs\/connect\/custom-accounts\">Custom account\<\/a>, and optionally sets it as the default for its currency. Other bank account details are not editable by design.\<\/p>
-- \<p>You can re-enable a disabled bank account by performing an update call without providing any arguments or changes.\<\/p>
postAccountBankAccountsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                       -- ^ id
  -> PostAccountBankAccountsIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountBankAccountsIdResponse)) -- ^ Monad containing the result of the operation
postAccountBankAccountsId config
                          id
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             ExternalAccount)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/bank_accounts/{id}
-- 
-- The same as 'postAccountBankAccountsId' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountBankAccountsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                PostAccountBankAccountsIdRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountBankAccountsIdRaw config
                             id
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/bank_accounts/{id}
-- 
-- Monadic version of 'postAccountBankAccountsId' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountBankAccountsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              PostAccountBankAccountsIdRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response PostAccountBankAccountsIdResponse))
postAccountBankAccountsIdM id
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountBankAccountsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              ExternalAccount)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountBankAccountsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/bank_accounts/{id}
-- 
-- Monadic version of 'postAccountBankAccountsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountBankAccountsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 PostAccountBankAccountsIdRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountBankAccountsIdRawM id
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountBankAccountsIdRequestBody
-- 
-- 
data PostAccountBankAccountsIdRequestBody = PostAccountBankAccountsIdRequestBody {
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountBankAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBodyAccountHolderType')
  -- | address_city: City\/District\/Suburb\/Town\/Village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country: Billing address country, if provided when creating card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state: State\/County\/Province\/Region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_for_currency: When set to true, this becomes the default external account for its currency.
  , postAccountBankAccountsIdRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | exp_month: Two digit number representing the card’s expiration month.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_year: Four digit number representing the card’s expiration year.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountBankAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountBankAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBodyMetadata')
  -- | name: Cardholder name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountBankAccountsIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountBankAccountsIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountBankAccountsIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postAccountBankAccountsIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postAccountBankAccountsIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postAccountBankAccountsIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postAccountBankAccountsIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postAccountBankAccountsIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postAccountBankAccountsIdRequestBodyAddressZip obj) : (Data.Aeson..=) "default_for_currency" (postAccountBankAccountsIdRequestBodyDefaultForCurrency obj) : (Data.Aeson..=) "exp_month" (postAccountBankAccountsIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postAccountBankAccountsIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postAccountBankAccountsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postAccountBankAccountsIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postAccountBankAccountsIdRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountBankAccountsIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountBankAccountsIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postAccountBankAccountsIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postAccountBankAccountsIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postAccountBankAccountsIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postAccountBankAccountsIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postAccountBankAccountsIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postAccountBankAccountsIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postAccountBankAccountsIdRequestBodyDefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postAccountBankAccountsIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postAccountBankAccountsIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountBankAccountsIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountBankAccountsIdRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "name" (postAccountBankAccountsIdRequestBodyName obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountBankAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name"))
-- | Defines the enum schema postAccountBankAccountsIdRequestBodyAccount_holder_type\'
-- 
-- The type of entity that holds the account. This can be either \`individual\` or \`company\`.
data PostAccountBankAccountsIdRequestBodyAccountHolderType'
    = PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
    | PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsIdRequestBodyAccountHolderType'
    where toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountBankAccountsIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                                then PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringCompany
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumStringIndividual
                                                      else PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumOther val)
-- | Defines the data type for the schema postAccountBankAccountsIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountBankAccountsIdRequestBodyMetadata' = PostAccountBankAccountsIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountBankAccountsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountBankAccountsIdRequestBodyMetadata')
-- | Represents a response of the operation 'postAccountBankAccountsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountBankAccountsIdResponseError' is used.
data PostAccountBankAccountsIdResponse =                   
   PostAccountBankAccountsIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountBankAccountsIdResponse200 ExternalAccount   -- ^ Successful response.
  | PostAccountBankAccountsIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)