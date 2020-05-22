{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPaymentMethods
module StripeAPI.Operations.PostPaymentMethods where

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

-- | > POST /v1/payment_methods
-- 
-- \<p>Creates a PaymentMethod object. Read the \<a href=\"\/docs\/stripe-js\/reference\#stripe-create-payment-method\">Stripe.js reference\<\/a> to learn how to create PaymentMethods via Stripe.js.\<\/p>
postPaymentMethods :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostPaymentMethodsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPaymentMethodsResponse)) -- ^ Monad containing the result of the operation
postPaymentMethods config
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        PaymentMethod)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_methods") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods
-- 
-- The same as 'postPaymentMethods' but returns the raw 'Data.ByteString.Char8.ByteString'
postPaymentMethodsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         PostPaymentMethodsRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsRaw config
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_methods") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods
-- 
-- Monadic version of 'postPaymentMethods' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentMethodsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       PostPaymentMethodsRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response PostPaymentMethodsResponse))
postPaymentMethodsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         PaymentMethod)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_methods") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_methods
-- 
-- Monadic version of 'postPaymentMethodsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentMethodsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          PostPaymentMethodsRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentMethodsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_methods") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPaymentMethodsRequestBody
-- 
-- 
data PostPaymentMethodsRequestBody = PostPaymentMethodsRequestBody {
  -- | billing_details: Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
  postPaymentMethodsRequestBodyBillingDetails :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyBillingDetails')
  -- | card: If this is a \`card\` PaymentMethod, this hash contains the user\'s card details. For backwards compatibility, you can alternatively provide a Stripe token (e.g., for Apple Pay, Amex Express Checkout, or legacy Checkout) into the card hash with format \`card: {token: \"tok_visa\"}\`. When creating with a card number, you must meet the requirements for [PCI compliance](https:\/\/stripe.com\/docs\/security\#validating-pci-compliance). We strongly recommend using Stripe.js instead of interacting with this API directly.
  , postPaymentMethodsRequestBodyCard :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyCard')
  -- | customer: The \`Customer\` to whom the original PaymentMethod is attached.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentMethodsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | fpx: If this is an \`fpx\` PaymentMethod, this hash contains details about the FPX payment method.
  , postPaymentMethodsRequestBodyFpx :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyFpx')
  -- | ideal: If this is an \`ideal\` PaymentMethod, this hash contains details about the iDEAL payment method.
  , postPaymentMethodsRequestBodyIdeal :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyIdeal')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPaymentMethodsRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyMetadata')
  -- | payment_method: The PaymentMethod to share.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | sepa_debit: If this is a \`sepa_debit\` PaymentMethod, this hash contains details about the SEPA debit bank account.
  , postPaymentMethodsRequestBodySepaDebit :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodySepaDebit')
  -- | type: The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type. Required unless \`payment_method\` is specified (see the [Cloning PaymentMethods](https:\/\/stripe.com\/docs\/payments\/payment-methods\/connect\#cloning-payment-methods) guide)
  , postPaymentMethodsRequestBodyType :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_details" (postPaymentMethodsRequestBodyBillingDetails obj) : (Data.Aeson..=) "card" (postPaymentMethodsRequestBodyCard obj) : (Data.Aeson..=) "customer" (postPaymentMethodsRequestBodyCustomer obj) : (Data.Aeson..=) "expand" (postPaymentMethodsRequestBodyExpand obj) : (Data.Aeson..=) "fpx" (postPaymentMethodsRequestBodyFpx obj) : (Data.Aeson..=) "ideal" (postPaymentMethodsRequestBodyIdeal obj) : (Data.Aeson..=) "metadata" (postPaymentMethodsRequestBodyMetadata obj) : (Data.Aeson..=) "payment_method" (postPaymentMethodsRequestBodyPaymentMethod obj) : (Data.Aeson..=) "sepa_debit" (postPaymentMethodsRequestBodySepaDebit obj) : (Data.Aeson..=) "type" (postPaymentMethodsRequestBodyType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_details" (postPaymentMethodsRequestBodyBillingDetails obj) GHC.Base.<> ((Data.Aeson..=) "card" (postPaymentMethodsRequestBodyCard obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postPaymentMethodsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentMethodsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "fpx" (postPaymentMethodsRequestBodyFpx obj) GHC.Base.<> ((Data.Aeson..=) "ideal" (postPaymentMethodsRequestBodyIdeal obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPaymentMethodsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postPaymentMethodsRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (postPaymentMethodsRequestBodySepaDebit obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentMethodsRequestBodyType obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBody" (\obj -> (((((((((GHC.Base.pure PostPaymentMethodsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fpx")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the data type for the schema postPaymentMethodsRequestBodyBilling_details\'
-- 
-- Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
data PostPaymentMethodsRequestBodyBillingDetails' = PostPaymentMethodsRequestBodyBillingDetails' {
  -- | address
  postPaymentMethodsRequestBodyBillingDetails'Address :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyBillingDetails'Address')
  -- | email
  , postPaymentMethodsRequestBodyBillingDetails'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyBillingDetails'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyBillingDetails'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyBillingDetails'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentMethodsRequestBodyBillingDetails'Address obj) : (Data.Aeson..=) "email" (postPaymentMethodsRequestBodyBillingDetails'Email obj) : (Data.Aeson..=) "name" (postPaymentMethodsRequestBodyBillingDetails'Name obj) : (Data.Aeson..=) "phone" (postPaymentMethodsRequestBodyBillingDetails'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentMethodsRequestBodyBillingDetails'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postPaymentMethodsRequestBodyBillingDetails'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentMethodsRequestBodyBillingDetails'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postPaymentMethodsRequestBodyBillingDetails'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBodyBillingDetails'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBodyBillingDetails'" (\obj -> (((GHC.Base.pure PostPaymentMethodsRequestBodyBillingDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
-- | Defines the data type for the schema postPaymentMethodsRequestBodyBilling_details\'Address\'
-- 
-- 
data PostPaymentMethodsRequestBodyBillingDetails'Address' = PostPaymentMethodsRequestBodyBillingDetails'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsRequestBodyBillingDetails'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyBillingDetails'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyBillingDetails'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyBillingDetails'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyBillingDetails'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyBillingDetails'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyBillingDetails'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentMethodsRequestBodyBillingDetails'Address'City obj) : (Data.Aeson..=) "country" (postPaymentMethodsRequestBodyBillingDetails'Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentMethodsRequestBodyBillingDetails'Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentMethodsRequestBodyBillingDetails'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentMethodsRequestBodyBillingDetails'Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentMethodsRequestBodyBillingDetails'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentMethodsRequestBodyBillingDetails'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentMethodsRequestBodyBillingDetails'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentMethodsRequestBodyBillingDetails'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentMethodsRequestBodyBillingDetails'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentMethodsRequestBodyBillingDetails'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentMethodsRequestBodyBillingDetails'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBodyBillingDetails'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBodyBillingDetails'Address'" (\obj -> (((((GHC.Base.pure PostPaymentMethodsRequestBodyBillingDetails'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postPaymentMethodsRequestBodyCard\'
-- 
-- If this is a \\\`card\\\` PaymentMethod, this hash contains the user\\\'s card details. For backwards compatibility, you can alternatively provide a Stripe token (e.g., for Apple Pay, Amex Express Checkout, or legacy Checkout) into the card hash with format \\\`card: {token: \\\"tok_visa\\\"}\\\`. When creating with a card number, you must meet the requirements for [PCI compliance](https:\\\/\\\/stripe.com\\\/docs\\\/security\\\#validating-pci-compliance). We strongly recommend using Stripe.js instead of interacting with this API directly.
data PostPaymentMethodsRequestBodyCard' = PostPaymentMethodsRequestBodyCard' {
  -- | cvc
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsRequestBodyCard'Cvc :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_month
  , postPaymentMethodsRequestBodyCard'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | exp_year
  , postPaymentMethodsRequestBodyCard'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyCard'Number :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | token
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsRequestBodyCard'Token :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyCard'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "cvc" (postPaymentMethodsRequestBodyCard'Cvc obj) : (Data.Aeson..=) "exp_month" (postPaymentMethodsRequestBodyCard'ExpMonth obj) : (Data.Aeson..=) "exp_year" (postPaymentMethodsRequestBodyCard'ExpYear obj) : (Data.Aeson..=) "number" (postPaymentMethodsRequestBodyCard'Number obj) : (Data.Aeson..=) "token" (postPaymentMethodsRequestBodyCard'Token obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "cvc" (postPaymentMethodsRequestBodyCard'Cvc obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postPaymentMethodsRequestBodyCard'ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postPaymentMethodsRequestBodyCard'ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "number" (postPaymentMethodsRequestBodyCard'Number obj) GHC.Base.<> (Data.Aeson..=) "token" (postPaymentMethodsRequestBodyCard'Token obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBodyCard'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBodyCard'" (\obj -> ((((GHC.Base.pure PostPaymentMethodsRequestBodyCard' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "token"))
-- | Defines the data type for the schema postPaymentMethodsRequestBodyFpx\'
-- 
-- If this is an \`fpx\` PaymentMethod, this hash contains details about the FPX payment method.
data PostPaymentMethodsRequestBodyFpx' = PostPaymentMethodsRequestBodyFpx' {
  -- | bank
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsRequestBodyFpx'Bank :: PostPaymentMethodsRequestBodyFpx'Bank'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyFpx'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank" (postPaymentMethodsRequestBodyFpx'Bank obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank" (postPaymentMethodsRequestBodyFpx'Bank obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBodyFpx'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBodyFpx'" (\obj -> GHC.Base.pure PostPaymentMethodsRequestBodyFpx' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank"))
-- | Defines the enum schema postPaymentMethodsRequestBodyFpx\'Bank\'
-- 
-- 
data PostPaymentMethodsRequestBodyFpx'Bank'
    = PostPaymentMethodsRequestBodyFpx'Bank'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumTyped GHC.Base.String
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAffinBank
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAllianceBank
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAmbank
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankIslam
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankMuamalat
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankRakyat
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBsn
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringCimb
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringDeutscheBank
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringHongLeongBank
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringHsbc
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringKfh
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringMaybank2e
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringMaybank2u
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringOcbc
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringPbEnterprise
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringPublicBank
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringRhb
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringStandardChartered
    | PostPaymentMethodsRequestBodyFpx'Bank'EnumStringUob
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyFpx'Bank'
    where toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAffinBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "affin_bank"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAllianceBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alliance_bank"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAmbank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ambank"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankIslam) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_islam"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankMuamalat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_muamalat"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankRakyat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_rakyat"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBsn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bsn"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringCimb) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cimb"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringDeutscheBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deutsche_bank"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringHongLeongBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hong_leong_bank"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringHsbc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hsbc"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringKfh) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kfh"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringMaybank2e) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2e"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringMaybank2u) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2u"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringOcbc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ocbc"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringPbEnterprise) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pb_enterprise"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringPublicBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_bank"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringRhb) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rhb"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringStandardChartered) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard_chartered"
          toJSON (PostPaymentMethodsRequestBodyFpx'Bank'EnumStringUob) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uob"
instance Data.Aeson.FromJSON PostPaymentMethodsRequestBodyFpx'Bank'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "affin_bank")
                                          then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAffinBank
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alliance_bank")
                                                then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAllianceBank
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ambank")
                                                      then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringAmbank
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_islam")
                                                            then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankIslam
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_muamalat")
                                                                  then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankMuamalat
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_rakyat")
                                                                        then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBankRakyat
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bsn")
                                                                              then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringBsn
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cimb")
                                                                                    then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringCimb
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deutsche_bank")
                                                                                          then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringDeutscheBank
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hong_leong_bank")
                                                                                                then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringHongLeongBank
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hsbc")
                                                                                                      then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringHsbc
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kfh")
                                                                                                            then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringKfh
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2e")
                                                                                                                  then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringMaybank2e
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2u")
                                                                                                                        then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringMaybank2u
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ocbc")
                                                                                                                              then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringOcbc
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pb_enterprise")
                                                                                                                                    then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringPbEnterprise
                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_bank")
                                                                                                                                          then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringPublicBank
                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rhb")
                                                                                                                                                then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringRhb
                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard_chartered")
                                                                                                                                                      then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringStandardChartered
                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uob")
                                                                                                                                                            then PostPaymentMethodsRequestBodyFpx'Bank'EnumStringUob
                                                                                                                                                            else PostPaymentMethodsRequestBodyFpx'Bank'EnumOther val)
-- | Defines the data type for the schema postPaymentMethodsRequestBodyIdeal\'
-- 
-- If this is an \`ideal\` PaymentMethod, this hash contains details about the iDEAL payment method.
data PostPaymentMethodsRequestBodyIdeal' = PostPaymentMethodsRequestBodyIdeal' {
  -- | bank
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsRequestBodyIdeal'Bank :: (GHC.Maybe.Maybe PostPaymentMethodsRequestBodyIdeal'Bank')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyIdeal'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank" (postPaymentMethodsRequestBodyIdeal'Bank obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank" (postPaymentMethodsRequestBodyIdeal'Bank obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBodyIdeal'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBodyIdeal'" (\obj -> GHC.Base.pure PostPaymentMethodsRequestBodyIdeal' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank"))
-- | Defines the enum schema postPaymentMethodsRequestBodyIdeal\'Bank\'
-- 
-- 
data PostPaymentMethodsRequestBodyIdeal'Bank'
    = PostPaymentMethodsRequestBodyIdeal'Bank'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumTyped GHC.Base.String
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringAbnAmro
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringAsnBank
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringBunq
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringHandelsbanken
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringIng
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringKnab
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringMoneyou
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringRabobank
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringRegiobank
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringSnsBank
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringTriodosBank
    | PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringVanLanschot
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyIdeal'Bank'
    where toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringAbnAmro) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abn_amro"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringAsnBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "asn_bank"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringBunq) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bunq"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringHandelsbanken) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "handelsbanken"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringIng) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ing"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringKnab) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "knab"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringMoneyou) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "moneyou"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringRabobank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rabobank"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringRegiobank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "regiobank"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringSnsBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sns_bank"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringTriodosBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "triodos_bank"
          toJSON (PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringVanLanschot) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "van_lanschot"
instance Data.Aeson.FromJSON PostPaymentMethodsRequestBodyIdeal'Bank'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abn_amro")
                                          then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringAbnAmro
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "asn_bank")
                                                then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringAsnBank
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bunq")
                                                      then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringBunq
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "handelsbanken")
                                                            then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringHandelsbanken
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ing")
                                                                  then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringIng
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "knab")
                                                                        then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringKnab
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "moneyou")
                                                                              then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringMoneyou
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rabobank")
                                                                                    then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringRabobank
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "regiobank")
                                                                                          then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringRegiobank
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sns_bank")
                                                                                                then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringSnsBank
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "triodos_bank")
                                                                                                      then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringTriodosBank
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "van_lanschot")
                                                                                                            then PostPaymentMethodsRequestBodyIdeal'Bank'EnumStringVanLanschot
                                                                                                            else PostPaymentMethodsRequestBodyIdeal'Bank'EnumOther val)
-- | Defines the data type for the schema postPaymentMethodsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPaymentMethodsRequestBodyMetadata' = PostPaymentMethodsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPaymentMethodsRequestBodyMetadata')
-- | Defines the data type for the schema postPaymentMethodsRequestBodySepa_debit\'
-- 
-- If this is a \`sepa_debit\` PaymentMethod, this hash contains details about the SEPA debit bank account.
data PostPaymentMethodsRequestBodySepaDebit' = PostPaymentMethodsRequestBodySepaDebit' {
  -- | iban
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsRequestBodySepaDebit'Iban :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodySepaDebit'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "iban" (postPaymentMethodsRequestBodySepaDebit'Iban obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "iban" (postPaymentMethodsRequestBodySepaDebit'Iban obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsRequestBodySepaDebit'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsRequestBodySepaDebit'" (\obj -> GHC.Base.pure PostPaymentMethodsRequestBodySepaDebit' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "iban"))
-- | Defines the enum schema postPaymentMethodsRequestBodyType\'
-- 
-- The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type. Required unless \`payment_method\` is specified (see the [Cloning PaymentMethods](https:\/\/stripe.com\/docs\/payments\/payment-methods\/connect\#cloning-payment-methods) guide)
data PostPaymentMethodsRequestBodyType'
    = PostPaymentMethodsRequestBodyType'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentMethodsRequestBodyType'EnumTyped GHC.Base.String
    | PostPaymentMethodsRequestBodyType'EnumStringCard
    | PostPaymentMethodsRequestBodyType'EnumStringFpx
    | PostPaymentMethodsRequestBodyType'EnumStringIdeal
    | PostPaymentMethodsRequestBodyType'EnumStringSepaDebit
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentMethodsRequestBodyType'
    where toJSON (PostPaymentMethodsRequestBodyType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentMethodsRequestBodyType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentMethodsRequestBodyType'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostPaymentMethodsRequestBodyType'EnumStringFpx) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx"
          toJSON (PostPaymentMethodsRequestBodyType'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (PostPaymentMethodsRequestBodyType'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
instance Data.Aeson.FromJSON PostPaymentMethodsRequestBodyType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then PostPaymentMethodsRequestBodyType'EnumStringCard
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fpx")
                                                then PostPaymentMethodsRequestBodyType'EnumStringFpx
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                      then PostPaymentMethodsRequestBodyType'EnumStringIdeal
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                            then PostPaymentMethodsRequestBodyType'EnumStringSepaDebit
                                                            else PostPaymentMethodsRequestBodyType'EnumOther val)
-- | Represents a response of the operation 'postPaymentMethods'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentMethodsResponseError' is used.
data PostPaymentMethodsResponse =                   
   PostPaymentMethodsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPaymentMethodsResponse200 PaymentMethod     -- ^ Successful response.
  | PostPaymentMethodsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)