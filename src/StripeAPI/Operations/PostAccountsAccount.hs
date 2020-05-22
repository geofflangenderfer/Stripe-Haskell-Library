{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountsAccount
module StripeAPI.Operations.PostAccountsAccount where

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

-- | > POST /v1/accounts/{account}
-- 
-- \<p>Updates a connected \<a href=\"\/docs\/connect\/accounts\">Express or Custom account\<\/a> by setting the values of the parameters passed. Any parameters not provided are left unchanged. Most parameters can be changed only for Custom accounts. (These are marked \<strong>Custom Only\<\/strong> below.) Parameters marked \<strong>Custom and Express\<\/strong> are supported by both account types.\<\/p>
-- 
-- \<p>To update your own account, use the \<a href=\"https:\/\/dashboard.stripe.com\/account\">Dashboard\<\/a>. Refer to our \<a href=\"\/docs\/connect\/updating-accounts\">Connect\<\/a> documentation to learn more about updating accounts.\<\/p>
postAccountsAccount :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                 -- ^ account | Constraints: Maximum length of 5000
  -> PostAccountsAccountRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountsAccountResponse)) -- ^ Monad containing the result of the operation
postAccountsAccount config
                    account
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Account)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}
-- 
-- The same as 'postAccountsAccount' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountsAccountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostAccountsAccountRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountRaw config
                       account
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}
-- 
-- Monadic version of 'postAccountsAccount' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostAccountsAccountRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostAccountsAccountResponse))
postAccountsAccountM account
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Account)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/accounts/{account}
-- 
-- Monadic version of 'postAccountsAccountRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountsAccountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostAccountsAccountRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountsAccountRawM account
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountsAccountRequestBody
-- 
-- 
data PostAccountsAccountRequestBody = PostAccountsAccountRequestBody {
  -- | account_token: An [account token](https:\/\/stripe.com\/docs\/api\#create_account_token), used to securely provide details to the account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountRequestBodyAccountToken :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
  , postAccountsAccountRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBankAccount'Variants)
  -- | business_profile: Business information about the account.
  , postAccountsAccountRequestBodyBusinessProfile :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBusinessProfile')
  -- | business_type: The business type.
  , postAccountsAccountRequestBodyBusinessType :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBusinessType')
  -- | company: Information about the company or business. This field is null unless \`business_type\` is set to \`company\`, \`government_entity\`, or \`non_profit\`.
  , postAccountsAccountRequestBodyCompany :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany')
  -- | default_currency: Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account\'s country](https:\/\/stripe.com\/docs\/payouts).
  , postAccountsAccountRequestBodyDefaultCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | email: Email address of the account representative. For Standard accounts, this is used to ask them to claim their Stripe account. For Custom accounts, this only makes the account easier to identify to platforms; Stripe does not email the account representative.
  , postAccountsAccountRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountsAccountRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | external_account: A card or bank account to attach to the account. You can provide either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary, as documented in the \`external_account\` parameter for [bank account](https:\/\/stripe.com\/docs\/api\#account_create_bank_account) creation. \<br>\<br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the bank account or card creation API.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyExternalAccount :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | individual: Information about the person represented by the account. This field is null unless \`business_type\` is set to \`individual\`.
  , postAccountsAccountRequestBodyIndividual :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountsAccountRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyMetadata')
  -- | requested_capabilities: The set of capabilities you want to unlock for this account. Each capability will be inactive until you have provided its specific requirements and Stripe has verified them. An account may have some of its requested capabilities be active and some be inactive.
  , postAccountsAccountRequestBodyRequestedCapabilities :: (GHC.Maybe.Maybe ([] PostAccountsAccountRequestBodyRequestedCapabilities'))
  -- | settings: Options for customizing how the account functions within Stripe.
  , postAccountsAccountRequestBodySettings :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings')
  -- | tos_acceptance: Details on the account\'s acceptance of the [Stripe Services Agreement](https:\/\/stripe.com\/docs\/connect\/updating-accounts\#tos-acceptance).
  , postAccountsAccountRequestBodyTosAcceptance :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyTosAcceptance')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_token" (postAccountsAccountRequestBodyAccountToken obj) : (Data.Aeson..=) "bank_account" (postAccountsAccountRequestBodyBankAccount obj) : (Data.Aeson..=) "business_profile" (postAccountsAccountRequestBodyBusinessProfile obj) : (Data.Aeson..=) "business_type" (postAccountsAccountRequestBodyBusinessType obj) : (Data.Aeson..=) "company" (postAccountsAccountRequestBodyCompany obj) : (Data.Aeson..=) "default_currency" (postAccountsAccountRequestBodyDefaultCurrency obj) : (Data.Aeson..=) "email" (postAccountsAccountRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postAccountsAccountRequestBodyExpand obj) : (Data.Aeson..=) "external_account" (postAccountsAccountRequestBodyExternalAccount obj) : (Data.Aeson..=) "individual" (postAccountsAccountRequestBodyIndividual obj) : (Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyMetadata obj) : (Data.Aeson..=) "requested_capabilities" (postAccountsAccountRequestBodyRequestedCapabilities obj) : (Data.Aeson..=) "settings" (postAccountsAccountRequestBodySettings obj) : (Data.Aeson..=) "tos_acceptance" (postAccountsAccountRequestBodyTosAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_token" (postAccountsAccountRequestBodyAccountToken obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postAccountsAccountRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "business_profile" (postAccountsAccountRequestBodyBusinessProfile obj) GHC.Base.<> ((Data.Aeson..=) "business_type" (postAccountsAccountRequestBodyBusinessType obj) GHC.Base.<> ((Data.Aeson..=) "company" (postAccountsAccountRequestBodyCompany obj) GHC.Base.<> ((Data.Aeson..=) "default_currency" (postAccountsAccountRequestBodyDefaultCurrency obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountsAccountRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "external_account" (postAccountsAccountRequestBodyExternalAccount obj) GHC.Base.<> ((Data.Aeson..=) "individual" (postAccountsAccountRequestBodyIndividual obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "requested_capabilities" (postAccountsAccountRequestBodyRequestedCapabilities obj) GHC.Base.<> ((Data.Aeson..=) "settings" (postAccountsAccountRequestBodySettings obj) GHC.Base.<> (Data.Aeson..=) "tos_acceptance" (postAccountsAccountRequestBodyTosAcceptance obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostAccountsAccountRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_profile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "business_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "individual")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested_capabilities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "settings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tos_acceptance"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyBank_account\'OneOf2
-- 
-- 
data PostAccountsAccountRequestBodyBankAccount'OneOf2 = PostAccountsAccountRequestBodyBankAccount'OneOf2 {
  -- | account_holder_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType')
  -- | account_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBankAccount'OneOf2Country :: GHC.Base.String
  -- | currency
  , postAccountsAccountRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyBankAccount'OneOf2Object')
  -- | routing_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postAccountsAccountRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postAccountsAccountRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postAccountsAccountRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postAccountsAccountRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postAccountsAccountRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postAccountsAccountRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postAccountsAccountRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
-- | Defines the enum schema postAccountsAccountRequestBodyBank_account\'OneOf2Account_holder_type\'
-- 
-- 
data PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostAccountsAccountRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
-- | Defines the enum schema postAccountsAccountRequestBodyBank_account\'OneOf2Object\'
-- 
-- 
data PostAccountsAccountRequestBodyBankAccount'OneOf2Object'
    = PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostAccountsAccountRequestBodyBankAccount'OneOf2Object'EnumOther val)
-- | Define the one-of schema postAccountsAccountRequestBodyBank_account\'
-- 
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
data PostAccountsAccountRequestBodyBankAccount'Variants
    = PostAccountsAccountRequestBodyBankAccount'String GHC.Base.String
    | PostAccountsAccountRequestBodyBankAccount'PostAccountsAccountRequestBodyBankAccount'OneOf2 PostAccountsAccountRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountRequestBodyBusiness_profile\'
-- 
-- Business information about the account.
data PostAccountsAccountRequestBodyBusinessProfile' = PostAccountsAccountRequestBodyBusinessProfile' {
  -- | mcc
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 4
  postAccountsAccountRequestBodyBusinessProfile'Mcc :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBusinessProfile'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | product_description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40000
  , postAccountsAccountRequestBodyBusinessProfile'ProductDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | support_email
  , postAccountsAccountRequestBodyBusinessProfile'SupportEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | support_phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBusinessProfile'SupportPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | support_url
  , postAccountsAccountRequestBodyBusinessProfile'SupportUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | url
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyBusinessProfile'Url :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBusinessProfile'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "mcc" (postAccountsAccountRequestBodyBusinessProfile'Mcc obj) : (Data.Aeson..=) "name" (postAccountsAccountRequestBodyBusinessProfile'Name obj) : (Data.Aeson..=) "product_description" (postAccountsAccountRequestBodyBusinessProfile'ProductDescription obj) : (Data.Aeson..=) "support_email" (postAccountsAccountRequestBodyBusinessProfile'SupportEmail obj) : (Data.Aeson..=) "support_phone" (postAccountsAccountRequestBodyBusinessProfile'SupportPhone obj) : (Data.Aeson..=) "support_url" (postAccountsAccountRequestBodyBusinessProfile'SupportUrl obj) : (Data.Aeson..=) "url" (postAccountsAccountRequestBodyBusinessProfile'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "mcc" (postAccountsAccountRequestBodyBusinessProfile'Mcc obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountsAccountRequestBodyBusinessProfile'Name obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postAccountsAccountRequestBodyBusinessProfile'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "support_email" (postAccountsAccountRequestBodyBusinessProfile'SupportEmail obj) GHC.Base.<> ((Data.Aeson..=) "support_phone" (postAccountsAccountRequestBodyBusinessProfile'SupportPhone obj) GHC.Base.<> ((Data.Aeson..=) "support_url" (postAccountsAccountRequestBodyBusinessProfile'SupportUrl obj) GHC.Base.<> (Data.Aeson..=) "url" (postAccountsAccountRequestBodyBusinessProfile'Url obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyBusinessProfile'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyBusinessProfile'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyBusinessProfile' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mcc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "support_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Defines the enum schema postAccountsAccountRequestBodyBusiness_type\'
-- 
-- The business type.
data PostAccountsAccountRequestBodyBusinessType'
    = PostAccountsAccountRequestBodyBusinessType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyBusinessType'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyBusinessType'EnumStringCompany
    | PostAccountsAccountRequestBodyBusinessType'EnumStringGovernmentEntity
    | PostAccountsAccountRequestBodyBusinessType'EnumStringIndividual
    | PostAccountsAccountRequestBodyBusinessType'EnumStringNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyBusinessType'
    where toJSON (PostAccountsAccountRequestBodyBusinessType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringGovernmentEntity) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity"
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
          toJSON (PostAccountsAccountRequestBodyBusinessType'EnumStringNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyBusinessType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostAccountsAccountRequestBodyBusinessType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_entity")
                                                then PostAccountsAccountRequestBodyBusinessType'EnumStringGovernmentEntity
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                      then PostAccountsAccountRequestBodyBusinessType'EnumStringIndividual
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "non_profit")
                                                            then PostAccountsAccountRequestBodyBusinessType'EnumStringNonProfit
                                                            else PostAccountsAccountRequestBodyBusinessType'EnumOther val)
-- | Defines the data type for the schema postAccountsAccountRequestBodyCompany\'
-- 
-- Information about the company or business. This field is null unless \`business_type\` is set to \`company\`, \`government_entity\`, or \`non_profit\`.
data PostAccountsAccountRequestBodyCompany' = PostAccountsAccountRequestBodyCompany' {
  -- | address
  postAccountsAccountRequestBodyCompany'Address :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Address')
  -- | address_kana
  , postAccountsAccountRequestBodyCompany'AddressKana :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'AddressKana')
  -- | address_kanji
  , postAccountsAccountRequestBodyCompany'AddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'AddressKanji')
  -- | directors_provided
  , postAccountsAccountRequestBodyCompany'DirectorsProvided :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | executives_provided
  , postAccountsAccountRequestBodyCompany'ExecutivesProvided :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountsAccountRequestBodyCompany'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountsAccountRequestBodyCompany'NameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountsAccountRequestBodyCompany'NameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | owners_provided
  , postAccountsAccountRequestBodyCompany'OwnersProvided :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | structure
  , postAccountsAccountRequestBodyCompany'Structure :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Structure')
  -- | tax_id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'TaxId :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tax_id_registrar
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'TaxIdRegistrar :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | vat_id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'VatId :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verification
  , postAccountsAccountRequestBodyCompany'Verification :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Verification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyCompany'Address obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyCompany'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyCompany'AddressKanji obj) : (Data.Aeson..=) "directors_provided" (postAccountsAccountRequestBodyCompany'DirectorsProvided obj) : (Data.Aeson..=) "executives_provided" (postAccountsAccountRequestBodyCompany'ExecutivesProvided obj) : (Data.Aeson..=) "name" (postAccountsAccountRequestBodyCompany'Name obj) : (Data.Aeson..=) "name_kana" (postAccountsAccountRequestBodyCompany'NameKana obj) : (Data.Aeson..=) "name_kanji" (postAccountsAccountRequestBodyCompany'NameKanji obj) : (Data.Aeson..=) "owners_provided" (postAccountsAccountRequestBodyCompany'OwnersProvided obj) : (Data.Aeson..=) "phone" (postAccountsAccountRequestBodyCompany'Phone obj) : (Data.Aeson..=) "structure" (postAccountsAccountRequestBodyCompany'Structure obj) : (Data.Aeson..=) "tax_id" (postAccountsAccountRequestBodyCompany'TaxId obj) : (Data.Aeson..=) "tax_id_registrar" (postAccountsAccountRequestBodyCompany'TaxIdRegistrar obj) : (Data.Aeson..=) "vat_id" (postAccountsAccountRequestBodyCompany'VatId obj) : (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyCompany'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyCompany'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyCompany'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyCompany'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "directors_provided" (postAccountsAccountRequestBodyCompany'DirectorsProvided obj) GHC.Base.<> ((Data.Aeson..=) "executives_provided" (postAccountsAccountRequestBodyCompany'ExecutivesProvided obj) GHC.Base.<> ((Data.Aeson..=) "name" (postAccountsAccountRequestBodyCompany'Name obj) GHC.Base.<> ((Data.Aeson..=) "name_kana" (postAccountsAccountRequestBodyCompany'NameKana obj) GHC.Base.<> ((Data.Aeson..=) "name_kanji" (postAccountsAccountRequestBodyCompany'NameKanji obj) GHC.Base.<> ((Data.Aeson..=) "owners_provided" (postAccountsAccountRequestBodyCompany'OwnersProvided obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountRequestBodyCompany'Phone obj) GHC.Base.<> ((Data.Aeson..=) "structure" (postAccountsAccountRequestBodyCompany'Structure obj) GHC.Base.<> ((Data.Aeson..=) "tax_id" (postAccountsAccountRequestBodyCompany'TaxId obj) GHC.Base.<> ((Data.Aeson..=) "tax_id_registrar" (postAccountsAccountRequestBodyCompany'TaxIdRegistrar obj) GHC.Base.<> ((Data.Aeson..=) "vat_id" (postAccountsAccountRequestBodyCompany'VatId obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyCompany'Verification obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'" (\obj -> ((((((((((((((GHC.Base.pure PostAccountsAccountRequestBodyCompany' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "directors_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "executives_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owners_provided")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "structure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id_registrar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyCompany\'Address\'
-- 
-- 
data PostAccountsAccountRequestBodyCompany'Address' = PostAccountsAccountRequestBodyCompany'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountsAccountRequestBodyCompany'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountRequestBodyCompany'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountRequestBodyCompany'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'Address'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'Address'" (\obj -> (((((GHC.Base.pure PostAccountsAccountRequestBodyCompany'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyCompany\'Address_kana\'
-- 
-- 
data PostAccountsAccountRequestBodyCompany'AddressKana' = PostAccountsAccountRequestBodyCompany'AddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountRequestBodyCompany'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyCompany'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyCompany\'Address_kanji\'
-- 
-- 
data PostAccountsAccountRequestBodyCompany'AddressKanji' = PostAccountsAccountRequestBodyCompany'AddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountRequestBodyCompany'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyCompany'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyCompany'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyCompany'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyCompany'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyCompany'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyCompany'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyCompany'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyCompany'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyCompany'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountsAccountRequestBodyCompany\'Structure\'
-- 
-- 
data PostAccountsAccountRequestBodyCompany'Structure'
    = PostAccountsAccountRequestBodyCompany'Structure'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyCompany'Structure'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyCompany'Structure'EnumString_
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicCorporation
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicPartnership
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
    | PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Structure'
    where toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicCorporation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicPartnership) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association"
          toJSON (PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyCompany'Structure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountRequestBodyCompany'Structure'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "government_instrumentality")
                                                then PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentInstrumentality
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "governmental_unit")
                                                      then PostAccountsAccountRequestBodyCompany'Structure'EnumStringGovernmentalUnit
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "incorporated_non_profit")
                                                            then PostAccountsAccountRequestBodyCompany'Structure'EnumStringIncorporatedNonProfit
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multi_member_llc")
                                                                  then PostAccountsAccountRequestBodyCompany'Structure'EnumStringMultiMemberLlc
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_corporation")
                                                                        then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivateCorporation
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private_partnership")
                                                                              then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPrivatePartnership
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_corporation")
                                                                                    then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicCorporation
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_partnership")
                                                                                          then PostAccountsAccountRequestBodyCompany'Structure'EnumStringPublicPartnership
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_exempt_government_instrumentality")
                                                                                                then PostAccountsAccountRequestBodyCompany'Structure'EnumStringTaxExemptGovernmentInstrumentality
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_association")
                                                                                                      then PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedAssociation
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unincorporated_non_profit")
                                                                                                            then PostAccountsAccountRequestBodyCompany'Structure'EnumStringUnincorporatedNonProfit
                                                                                                            else PostAccountsAccountRequestBodyCompany'Structure'EnumOther val)
-- | Defines the data type for the schema postAccountsAccountRequestBodyCompany\'Verification\'
-- 
-- 
data PostAccountsAccountRequestBodyCompany'Verification' = PostAccountsAccountRequestBodyCompany'Verification' {
  -- | document
  postAccountsAccountRequestBodyCompany'Verification'Document :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyCompany'Verification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "document" (postAccountsAccountRequestBodyCompany'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "document" (postAccountsAccountRequestBodyCompany'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'Verification'" (\obj -> GHC.Base.pure PostAccountsAccountRequestBodyCompany'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyCompany\'Verification\'Document\'
-- 
-- 
data PostAccountsAccountRequestBodyCompany'Verification'Document' = PostAccountsAccountRequestBodyCompany'Verification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountRequestBodyCompany'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountRequestBodyCompany'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyCompany'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyCompany'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountRequestBodyCompany'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyCompany'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountRequestBodyCompany'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyCompany'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyCompany'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyCompany'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'
-- 
-- Information about the person represented by the account. This field is null unless \`business_type\` is set to \`individual\`.
data PostAccountsAccountRequestBodyIndividual' = PostAccountsAccountRequestBodyIndividual' {
  -- | address
  postAccountsAccountRequestBodyIndividual'Address :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Address')
  -- | address_kana
  , postAccountsAccountRequestBodyIndividual'AddressKana :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'AddressKana')
  -- | address_kanji
  , postAccountsAccountRequestBodyIndividual'AddressKanji :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'AddressKanji')
  -- | dob
  , postAccountsAccountRequestBodyIndividual'Dob :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Dob'Variants)
  -- | email
  , postAccountsAccountRequestBodyIndividual'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountsAccountRequestBodyIndividual'FirstName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'FirstNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | first_name_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'FirstNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | gender
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'Gender :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | id_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'IdNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  , postAccountsAccountRequestBodyIndividual'LastName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'LastNameKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last_name_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'LastNameKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | maiden_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'MaidenName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata
  , postAccountsAccountRequestBodyIndividual'Metadata :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Metadata')
  -- | phone
  , postAccountsAccountRequestBodyIndividual'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | ssn_last_4
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'SsnLast_4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verification
  , postAccountsAccountRequestBodyIndividual'Verification :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Verification')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyIndividual'Address obj) : (Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyIndividual'AddressKana obj) : (Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyIndividual'AddressKanji obj) : (Data.Aeson..=) "dob" (postAccountsAccountRequestBodyIndividual'Dob obj) : (Data.Aeson..=) "email" (postAccountsAccountRequestBodyIndividual'Email obj) : (Data.Aeson..=) "first_name" (postAccountsAccountRequestBodyIndividual'FirstName obj) : (Data.Aeson..=) "first_name_kana" (postAccountsAccountRequestBodyIndividual'FirstNameKana obj) : (Data.Aeson..=) "first_name_kanji" (postAccountsAccountRequestBodyIndividual'FirstNameKanji obj) : (Data.Aeson..=) "gender" (postAccountsAccountRequestBodyIndividual'Gender obj) : (Data.Aeson..=) "id_number" (postAccountsAccountRequestBodyIndividual'IdNumber obj) : (Data.Aeson..=) "last_name" (postAccountsAccountRequestBodyIndividual'LastName obj) : (Data.Aeson..=) "last_name_kana" (postAccountsAccountRequestBodyIndividual'LastNameKana obj) : (Data.Aeson..=) "last_name_kanji" (postAccountsAccountRequestBodyIndividual'LastNameKanji obj) : (Data.Aeson..=) "maiden_name" (postAccountsAccountRequestBodyIndividual'MaidenName obj) : (Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyIndividual'Metadata obj) : (Data.Aeson..=) "phone" (postAccountsAccountRequestBodyIndividual'Phone obj) : (Data.Aeson..=) "ssn_last_4" (postAccountsAccountRequestBodyIndividual'SsnLast_4 obj) : (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyIndividual'Verification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postAccountsAccountRequestBodyIndividual'Address obj) GHC.Base.<> ((Data.Aeson..=) "address_kana" (postAccountsAccountRequestBodyIndividual'AddressKana obj) GHC.Base.<> ((Data.Aeson..=) "address_kanji" (postAccountsAccountRequestBodyIndividual'AddressKanji obj) GHC.Base.<> ((Data.Aeson..=) "dob" (postAccountsAccountRequestBodyIndividual'Dob obj) GHC.Base.<> ((Data.Aeson..=) "email" (postAccountsAccountRequestBodyIndividual'Email obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (postAccountsAccountRequestBodyIndividual'FirstName obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kana" (postAccountsAccountRequestBodyIndividual'FirstNameKana obj) GHC.Base.<> ((Data.Aeson..=) "first_name_kanji" (postAccountsAccountRequestBodyIndividual'FirstNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "gender" (postAccountsAccountRequestBodyIndividual'Gender obj) GHC.Base.<> ((Data.Aeson..=) "id_number" (postAccountsAccountRequestBodyIndividual'IdNumber obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (postAccountsAccountRequestBodyIndividual'LastName obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kana" (postAccountsAccountRequestBodyIndividual'LastNameKana obj) GHC.Base.<> ((Data.Aeson..=) "last_name_kanji" (postAccountsAccountRequestBodyIndividual'LastNameKanji obj) GHC.Base.<> ((Data.Aeson..=) "maiden_name" (postAccountsAccountRequestBodyIndividual'MaidenName obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postAccountsAccountRequestBodyIndividual'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postAccountsAccountRequestBodyIndividual'Phone obj) GHC.Base.<> ((Data.Aeson..=) "ssn_last_4" (postAccountsAccountRequestBodyIndividual'SsnLast_4 obj) GHC.Base.<> (Data.Aeson..=) "verification" (postAccountsAccountRequestBodyIndividual'Verification obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'" (\obj -> (((((((((((((((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gender")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "maiden_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssn_last_4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verification"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Address\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Address' = PostAccountsAccountRequestBodyIndividual'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  postAccountsAccountRequestBodyIndividual'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountRequestBodyIndividual'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , postAccountsAccountRequestBodyIndividual'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'Address'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'Address'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'Address'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'Address'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Address'" (\obj -> (((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Address_kana\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'AddressKana' = PostAccountsAccountRequestBodyIndividual'AddressKana' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountRequestBodyIndividual'AddressKana'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKana'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKana'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKana'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKana'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKana'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKana'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'AddressKana'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKana'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKana'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKana'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKana'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKana'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKana'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKana'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKana'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKana'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKana'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKana'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKana'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKana'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKana'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'AddressKana'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'AddressKana'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'AddressKana' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Address_kanji\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'AddressKanji' = PostAccountsAccountRequestBodyIndividual'AddressKanji' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountRequestBodyIndividual'AddressKanji'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKanji'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKanji'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKanji'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKanji'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKanji'State :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | town
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyIndividual'AddressKanji'Town :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'AddressKanji'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKanji'City obj) : (Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKanji'Country obj) : (Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line1 obj) : (Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line2 obj) : (Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKanji'PostalCode obj) : (Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKanji'State obj) : (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKanji'Town obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postAccountsAccountRequestBodyIndividual'AddressKanji'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postAccountsAccountRequestBodyIndividual'AddressKanji'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postAccountsAccountRequestBodyIndividual'AddressKanji'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postAccountsAccountRequestBodyIndividual'AddressKanji'PostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (postAccountsAccountRequestBodyIndividual'AddressKanji'State obj) GHC.Base.<> (Data.Aeson..=) "town" (postAccountsAccountRequestBodyIndividual'AddressKanji'Town obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'AddressKanji'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'AddressKanji'" (\obj -> ((((((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'AddressKanji' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))
-- | Defines the enum schema postAccountsAccountRequestBodyIndividual\'Dob\'OneOf1
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    = PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    where toJSON (PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumString_
                                          else PostAccountsAccountRequestBodyIndividual'Dob'OneOf1EnumOther val)
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Dob\'OneOf2
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Dob'OneOf2 = PostAccountsAccountRequestBodyIndividual'Dob'OneOf2 {
  -- | day
  postAccountsAccountRequestBodyIndividual'Dob'OneOf2Day :: GHC.Integer.Type.Integer
  -- | month
  , postAccountsAccountRequestBodyIndividual'Dob'OneOf2Month :: GHC.Integer.Type.Integer
  -- | year
  , postAccountsAccountRequestBodyIndividual'Dob'OneOf2Year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Day obj) : (Data.Aeson..=) "month" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Month obj) : (Data.Aeson..=) "year" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Day obj) GHC.Base.<> ((Data.Aeson..=) "month" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Month obj) GHC.Base.<> (Data.Aeson..=) "year" (postAccountsAccountRequestBodyIndividual'Dob'OneOf2Year obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Dob'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Dob'OneOf2" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Dob'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "year"))
-- | Define the one-of schema postAccountsAccountRequestBodyIndividual\'Dob\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Dob'Variants
    = PostAccountsAccountRequestBodyIndividual'Dob'PostAccountsAccountRequestBodyIndividual'Dob'OneOf1 PostAccountsAccountRequestBodyIndividual'Dob'OneOf1
    | PostAccountsAccountRequestBodyIndividual'Dob'PostAccountsAccountRequestBodyIndividual'Dob'OneOf2 PostAccountsAccountRequestBodyIndividual'Dob'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Dob'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyIndividual'Dob'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Metadata\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Metadata' = PostAccountsAccountRequestBodyIndividual'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Metadata'" (\obj -> GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Metadata')
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Verification\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Verification' = PostAccountsAccountRequestBodyIndividual'Verification' {
  -- | additional_document
  postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument')
  -- | document
  , postAccountsAccountRequestBodyIndividual'Verification'Document :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodyIndividual'Verification'Document')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Verification'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "additional_document" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument obj) : (Data.Aeson..=) "document" (postAccountsAccountRequestBodyIndividual'Verification'Document obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "additional_document" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument obj) GHC.Base.<> (Data.Aeson..=) "document" (postAccountsAccountRequestBodyIndividual'Verification'Document obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Verification'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Verification'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Verification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Verification\'Additional_document\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument' = PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Verification'AdditionalDocument' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyIndividual\'Verification\'Document\'
-- 
-- 
data PostAccountsAccountRequestBodyIndividual'Verification'Document' = PostAccountsAccountRequestBodyIndividual'Verification'Document' {
  -- | back
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  postAccountsAccountRequestBodyIndividual'Verification'Document'Back :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | front
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postAccountsAccountRequestBodyIndividual'Verification'Document'Front :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyIndividual'Verification'Document'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'Document'Back obj) : (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'Document'Front obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "back" (postAccountsAccountRequestBodyIndividual'Verification'Document'Back obj) GHC.Base.<> (Data.Aeson..=) "front" (postAccountsAccountRequestBodyIndividual'Verification'Document'Front obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyIndividual'Verification'Document'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyIndividual'Verification'Document'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodyIndividual'Verification'Document' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))
-- | Defines the data type for the schema postAccountsAccountRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountsAccountRequestBodyMetadata' = PostAccountsAccountRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyMetadata'" (\obj -> GHC.Base.pure PostAccountsAccountRequestBodyMetadata')
-- | Defines the enum schema postAccountsAccountRequestBodyRequested_capabilities\'
-- 
-- 
data PostAccountsAccountRequestBodyRequestedCapabilities'
    = PostAccountsAccountRequestBodyRequestedCapabilities'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardPayments
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments
    | PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringTransfers
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyRequestedCapabilities'
    where toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing"
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments"
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments"
          toJSON (PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringTransfers) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodyRequestedCapabilities'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_issuing")
                                          then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardIssuing
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_payments")
                                                then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringCardPayments
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "legacy_payments")
                                                      then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringLegacyPayments
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "transfers")
                                                            then PostAccountsAccountRequestBodyRequestedCapabilities'EnumStringTransfers
                                                            else PostAccountsAccountRequestBodyRequestedCapabilities'EnumOther val)
-- | Defines the data type for the schema postAccountsAccountRequestBodySettings\'
-- 
-- Options for customizing how the account functions within Stripe.
data PostAccountsAccountRequestBodySettings' = PostAccountsAccountRequestBodySettings' {
  -- | branding
  postAccountsAccountRequestBodySettings'Branding :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Branding')
  -- | card_payments
  , postAccountsAccountRequestBodySettings'CardPayments :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'CardPayments')
  -- | payments
  , postAccountsAccountRequestBodySettings'Payments :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payments')
  -- | payouts
  , postAccountsAccountRequestBodySettings'Payouts :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "branding" (postAccountsAccountRequestBodySettings'Branding obj) : (Data.Aeson..=) "card_payments" (postAccountsAccountRequestBodySettings'CardPayments obj) : (Data.Aeson..=) "payments" (postAccountsAccountRequestBodySettings'Payments obj) : (Data.Aeson..=) "payouts" (postAccountsAccountRequestBodySettings'Payouts obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "branding" (postAccountsAccountRequestBodySettings'Branding obj) GHC.Base.<> ((Data.Aeson..=) "card_payments" (postAccountsAccountRequestBodySettings'CardPayments obj) GHC.Base.<> ((Data.Aeson..=) "payments" (postAccountsAccountRequestBodySettings'Payments obj) GHC.Base.<> (Data.Aeson..=) "payouts" (postAccountsAccountRequestBodySettings'Payouts obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'" (\obj -> (((GHC.Base.pure PostAccountsAccountRequestBodySettings' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payouts"))
-- | Defines the data type for the schema postAccountsAccountRequestBodySettings\'Branding\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'Branding' = PostAccountsAccountRequestBodySettings'Branding' {
  -- | icon
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountRequestBodySettings'Branding'Icon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | logo
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodySettings'Branding'Logo :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | primary_color
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodySettings'Branding'PrimaryColor :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Branding'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "icon" (postAccountsAccountRequestBodySettings'Branding'Icon obj) : (Data.Aeson..=) "logo" (postAccountsAccountRequestBodySettings'Branding'Logo obj) : (Data.Aeson..=) "primary_color" (postAccountsAccountRequestBodySettings'Branding'PrimaryColor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "icon" (postAccountsAccountRequestBodySettings'Branding'Icon obj) GHC.Base.<> ((Data.Aeson..=) "logo" (postAccountsAccountRequestBodySettings'Branding'Logo obj) GHC.Base.<> (Data.Aeson..=) "primary_color" (postAccountsAccountRequestBodySettings'Branding'PrimaryColor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Branding'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Branding'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodySettings'Branding' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "logo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primary_color"))
-- | Defines the data type for the schema postAccountsAccountRequestBodySettings\'Card_payments\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'CardPayments' = PostAccountsAccountRequestBodySettings'CardPayments' {
  -- | decline_on
  postAccountsAccountRequestBodySettings'CardPayments'DeclineOn :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn')
  -- | statement_descriptor_prefix
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 10
  , postAccountsAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'CardPayments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "decline_on" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn obj) : (Data.Aeson..=) "statement_descriptor_prefix" (postAccountsAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "decline_on" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_prefix" (postAccountsAccountRequestBodySettings'CardPayments'StatementDescriptorPrefix obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'CardPayments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'CardPayments'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodySettings'CardPayments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_prefix"))
-- | Defines the data type for the schema postAccountsAccountRequestBodySettings\'Card_payments\'Decline_on\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn' = PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn' {
  -- | avs_failure
  postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | cvc_failure
  , postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "avs_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) : (Data.Aeson..=) "cvc_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "avs_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'AvsFailure obj) GHC.Base.<> (Data.Aeson..=) "cvc_failure" (postAccountsAccountRequestBodySettings'CardPayments'DeclineOn'CvcFailure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn'" (\obj -> (GHC.Base.pure PostAccountsAccountRequestBodySettings'CardPayments'DeclineOn' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avs_failure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_failure"))
-- | Defines the data type for the schema postAccountsAccountRequestBodySettings\'Payments\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'Payments' = PostAccountsAccountRequestBodySettings'Payments' {
  -- | statement_descriptor
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  postAccountsAccountRequestBodySettings'Payments'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_kana
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_kanji
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_kana" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKana obj) : (Data.Aeson..=) "statement_descriptor_kanji" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKanji obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_kana" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKana obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_kanji" (postAccountsAccountRequestBodySettings'Payments'StatementDescriptorKanji obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Payments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Payments'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodySettings'Payments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kanji"))
-- | Defines the data type for the schema postAccountsAccountRequestBodySettings\'Payouts\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'Payouts' = PostAccountsAccountRequestBodySettings'Payouts' {
  -- | debit_negative_balances
  postAccountsAccountRequestBodySettings'Payouts'DebitNegativeBalances :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | schedule
  , postAccountsAccountRequestBodySettings'Payouts'Schedule :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule')
  -- | statement_descriptor
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postAccountsAccountRequestBodySettings'Payouts'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "debit_negative_balances" (postAccountsAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) : (Data.Aeson..=) "schedule" (postAccountsAccountRequestBodySettings'Payouts'Schedule obj) : (Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payouts'StatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "debit_negative_balances" (postAccountsAccountRequestBodySettings'Payouts'DebitNegativeBalances obj) GHC.Base.<> ((Data.Aeson..=) "schedule" (postAccountsAccountRequestBodySettings'Payouts'Schedule obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (postAccountsAccountRequestBodySettings'Payouts'StatementDescriptor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Payouts'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Payouts'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodySettings'Payouts' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "debit_negative_balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))
-- | Defines the data type for the schema postAccountsAccountRequestBodySettings\'Payouts\'Schedule\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'Payouts'Schedule' = PostAccountsAccountRequestBodySettings'Payouts'Schedule' {
  -- | delay_days
  postAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants)
  -- | interval
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodySettings'Payouts'Schedule'Interval :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval')
  -- | monthly_anchor
  , postAccountsAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | weekly_anchor
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor :: (GHC.Maybe.Maybe PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delay_days" (postAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) : (Data.Aeson..=) "interval" (postAccountsAccountRequestBodySettings'Payouts'Schedule'Interval obj) : (Data.Aeson..=) "monthly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) : (Data.Aeson..=) "weekly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delay_days" (postAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postAccountsAccountRequestBodySettings'Payouts'Schedule'Interval obj) GHC.Base.<> ((Data.Aeson..=) "monthly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'MonthlyAnchor obj) GHC.Base.<> (Data.Aeson..=) "weekly_anchor" (postAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodySettings'Payouts'Schedule'" (\obj -> (((GHC.Base.pure PostAccountsAccountRequestBodySettings'Payouts'Schedule' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delay_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weekly_anchor"))
-- | Defines the enum schema postAccountsAccountRequestBodySettings\'Payouts\'Schedule\'Delay_days\'OneOf1
-- 
-- 
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "minimum")
                                          then PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumStringMinimum
                                          else PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1EnumOther val)
-- | Define the one-of schema postAccountsAccountRequestBodySettings\'Payouts\'Schedule\'Delay_days\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1 PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'OneOf1
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'DelayDays'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postAccountsAccountRequestBodySettings\'Payouts\'Schedule\'Interval\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'
    where toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "daily")
                                          then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringDaily
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringManual
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monthly")
                                                      then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringMonthly
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "weekly")
                                                            then PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumStringWeekly
                                                            else PostAccountsAccountRequestBodySettings'Payouts'Schedule'Interval'EnumOther val)
-- | Defines the enum schema postAccountsAccountRequestBodySettings\'Payouts\'Schedule\'Weekly_anchor\'
-- 
-- 
data PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    = PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped GHC.Base.String
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
    | PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday"
          toJSON (PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday"
instance Data.Aeson.FromJSON PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "friday")
                                          then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringFriday
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "monday")
                                                then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringMonday
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "saturday")
                                                      then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSaturday
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sunday")
                                                            then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringSunday
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "thursday")
                                                                  then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringThursday
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tuesday")
                                                                        then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringTuesday
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wednesday")
                                                                              then PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumStringWednesday
                                                                              else PostAccountsAccountRequestBodySettings'Payouts'Schedule'WeeklyAnchor'EnumOther val)
-- | Defines the data type for the schema postAccountsAccountRequestBodyTos_acceptance\'
-- 
-- Details on the account\'s acceptance of the [Stripe Services Agreement](https:\/\/stripe.com\/docs\/connect\/updating-accounts\#tos-acceptance).
data PostAccountsAccountRequestBodyTosAcceptance' = PostAccountsAccountRequestBodyTosAcceptance' {
  -- | date
  postAccountsAccountRequestBodyTosAcceptance'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | ip
  , postAccountsAccountRequestBodyTosAcceptance'Ip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountRequestBodyTosAcceptance'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountsAccountRequestBodyTosAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postAccountsAccountRequestBodyTosAcceptance'Date obj) : (Data.Aeson..=) "ip" (postAccountsAccountRequestBodyTosAcceptance'Ip obj) : (Data.Aeson..=) "user_agent" (postAccountsAccountRequestBodyTosAcceptance'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postAccountsAccountRequestBodyTosAcceptance'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postAccountsAccountRequestBodyTosAcceptance'Ip obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postAccountsAccountRequestBodyTosAcceptance'UserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountRequestBodyTosAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountRequestBodyTosAcceptance'" (\obj -> ((GHC.Base.pure PostAccountsAccountRequestBodyTosAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Represents a response of the operation 'postAccountsAccount'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountResponseError' is used.
data PostAccountsAccountResponse =                   
   PostAccountsAccountResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountsAccountResponse200 Account           -- ^ Successful response.
  | PostAccountsAccountResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)