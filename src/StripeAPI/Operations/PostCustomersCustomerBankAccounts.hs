{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomerBankAccounts
module StripeAPI.Operations.PostCustomersCustomerBankAccounts where

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
import qualified Data.Vector
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

-- | > POST /v1/customers/{customer}/bank_accounts
-- 
-- \<p>When you create a new credit card, you must specify a customer or recipient on which to create it.\<\/p>
-- 
-- \<p>If the card’s owner has no default card, then the new card will become the default.
-- However, if the owner already has a default, then it will not change.
-- To change the default, you should \<a href=\"\/docs\/api\#update_customer\">update the customer\<\/a> to have a new \<code>default_source\<\/code>.\<\/p>
postCustomersCustomerBankAccounts :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                               -- ^ customer | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerBankAccountsResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomerBankAccounts config
                                  customer
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBankAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     PaymentSource)
                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/bank_accounts
-- 
-- The same as 'postCustomersCustomerBankAccounts' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerBankAccountsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        StripeAPI.Common.Configuration s ->
                                        GHC.Base.String ->
                                        GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBody ->
                                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBankAccountsRaw config
                                     customer
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/bank_accounts
-- 
-- Monadic version of 'postCustomersCustomerBankAccounts' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBankAccountsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      GHC.Base.String ->
                                      GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBody ->
                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response PostCustomersCustomerBankAccountsResponse))
postCustomersCustomerBankAccountsM customer
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBankAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      PaymentSource)
                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/bank_accounts
-- 
-- Monadic version of 'postCustomersCustomerBankAccountsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBankAccountsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         GHC.Base.String ->
                                         GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBody ->
                                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBankAccountsRawM customer
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/bank_accounts"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerBankAccountsRequestBody
-- 
-- 
data PostCustomersCustomerBankAccountsRequestBody = PostCustomersCustomerBankAccountsRequestBody {
  -- | alipay_account: A token returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js) representing the user’s Alipay account details.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerBankAccountsRequestBodyAlipayAccount :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
  , postCustomersCustomerBankAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBodyBankAccount'Variants)
  -- | card: A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
  , postCustomersCustomerBankAccountsRequestBodyCard :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBodyCard'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerBankAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerBankAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBodyMetadata')
  -- | source: Please refer to full [documentation](https:\/\/stripe.com\/docs\/api) instead.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodySource :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "alipay_account" (postCustomersCustomerBankAccountsRequestBodyAlipayAccount obj) : (Data.Aeson..=) "bank_account" (postCustomersCustomerBankAccountsRequestBodyBankAccount obj) : (Data.Aeson..=) "card" (postCustomersCustomerBankAccountsRequestBodyCard obj) : (Data.Aeson..=) "expand" (postCustomersCustomerBankAccountsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsRequestBodyMetadata obj) : (Data.Aeson..=) "source" (postCustomersCustomerBankAccountsRequestBodySource obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "alipay_account" (postCustomersCustomerBankAccountsRequestBodyAlipayAccount obj) GHC.Base.<> ((Data.Aeson..=) "bank_account" (postCustomersCustomerBankAccountsRequestBodyBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerBankAccountsRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerBankAccountsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "source" (postCustomersCustomerBankAccountsRequestBodySource obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsRequestBody" (\obj -> (((((GHC.Base.pure PostCustomersCustomerBankAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source"))
-- | Defines the data type for the schema postCustomersCustomerBankAccountsRequestBodyBank_account\'OneOf2
-- 
-- 
data PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2 = PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2 {
  -- | account_holder_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType')
  -- | account_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountNumber :: GHC.Base.String
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Country :: GHC.Base.String
  -- | currency
  , postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object')
  -- | routing_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) : (Data.Aeson..=) "account_number" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) : (Data.Aeson..=) "country" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Country obj) : (Data.Aeson..=) "currency" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Currency obj) : (Data.Aeson..=) "object" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "account_number" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Country obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Currency obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (postCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2RoutingNumber obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2" (\obj -> ((((((GHC.Base.pure PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))
-- | Defines the enum schema postCustomersCustomerBankAccountsRequestBodyBank_account\'OneOf2Account_holder_type\'
-- 
-- 
data PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    = PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
    | PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where toJSON (PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2AccountHolderType'EnumOther val)
-- | Defines the enum schema postCustomersCustomerBankAccountsRequestBodyBank_account\'OneOf2Object\'
-- 
-- 
data PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'
    = PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'
    where toJSON (PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumStringBankAccount
                                          else PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2Object'EnumOther val)
-- | Define the one-of schema postCustomersCustomerBankAccountsRequestBodyBank_account\'
-- 
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js), or a dictionary containing a user\'s bank account details.
data PostCustomersCustomerBankAccountsRequestBodyBankAccount'Variants
    = PostCustomersCustomerBankAccountsRequestBodyBankAccount'String GHC.Base.String
    | PostCustomersCustomerBankAccountsRequestBodyBankAccount'PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2 PostCustomersCustomerBankAccountsRequestBodyBankAccount'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsRequestBodyBankAccount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerBankAccountsRequestBodyCard\'OneOf2
-- 
-- 
data PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2 = PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2 {
  -- | address_city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | cvc
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Cvc :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_month
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2ExpMonth :: GHC.Integer.Type.Integer
  -- | exp_year
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2ExpYear :: GHC.Integer.Type.Integer
  -- | metadata
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata')
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Number :: GHC.Base.String
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object :: (GHC.Maybe.Maybe PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_city" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressZip obj) : (Data.Aeson..=) "cvc" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Cvc obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2ExpYear obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Name obj) : (Data.Aeson..=) "number" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Number obj) : (Data.Aeson..=) "object" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_city" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "cvc" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "number" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Number obj) GHC.Base.<> (Data.Aeson..=) "object" (postCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2" (\obj -> ((((((((((((GHC.Base.pure PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))
-- | Defines the data type for the schema postCustomersCustomerBankAccountsRequestBodyCard\'OneOf2Metadata\'
-- 
-- 
data PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata' = PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Metadata')
-- | Defines the enum schema postCustomersCustomerBankAccountsRequestBodyCard\'OneOf2Object\'
-- 
-- 
data PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'
    = PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'
    where toJSON (PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumStringCard
                                          else PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2Object'EnumOther val)
-- | Define the one-of schema postCustomersCustomerBankAccountsRequestBodyCard\'
-- 
-- A token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe.js).
data PostCustomersCustomerBankAccountsRequestBodyCard'Variants
    = PostCustomersCustomerBankAccountsRequestBodyCard'String GHC.Base.String
    | PostCustomersCustomerBankAccountsRequestBodyCard'PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2 PostCustomersCustomerBankAccountsRequestBodyCard'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyCard'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerBankAccountsRequestBodyCard'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerBankAccountsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerBankAccountsRequestBodyMetadata' = PostCustomersCustomerBankAccountsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerBankAccountsRequestBodyMetadata')
-- | Represents a response of the operation 'postCustomersCustomerBankAccounts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerBankAccountsResponseError' is used.
data PostCustomersCustomerBankAccountsResponse =                   
   PostCustomersCustomerBankAccountsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerBankAccountsResponse200 PaymentSource     -- ^ Successful response.
  | PostCustomersCustomerBankAccountsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
