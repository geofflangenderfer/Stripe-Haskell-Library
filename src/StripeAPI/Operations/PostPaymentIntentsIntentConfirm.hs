{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPaymentIntentsIntentConfirm
module StripeAPI.Operations.PostPaymentIntentsIntentConfirm where

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

-- | > POST /v1/payment_intents/{intent}/confirm
-- 
-- \<p>Confirm that your customer intends to pay with current or provided
-- payment method. Upon confirmation, the PaymentIntent will attempt to initiate
-- a payment.\<\/p>
-- 
-- \<p>If the selected payment method requires additional authentication steps, the
-- PaymentIntent will transition to the \<code>requires_action\<\/code> status and
-- suggest additional actions via \<code>next_action\<\/code>. If payment fails,
-- the PaymentIntent will transition to the \<code>requires_payment_method\<\/code> status. If
-- payment succeeds, the PaymentIntent will transition to the \<code>succeeded\<\/code>
-- status (or \<code>requires_capture\<\/code>, if \<code>capture_method\<\/code> is set to \<code>manual\<\/code>).\<\/p>
-- 
-- \<p>If the \<code>confirmation_method\<\/code> is \<code>automatic\<\/code>, payment may be attempted
-- using our \<a href=\"\/docs\/stripe-js\/reference\#stripe-handle-card-payment\">client SDKs\<\/a>
-- and the PaymentIntent’s \<a href=\"\#payment_intent_object-client_secret\">client_secret\<\/a>.
-- After \<code>next_action\<\/code>s are handled by the client, no additional
-- confirmation is required to complete the payment.\<\/p>
-- 
-- \<p>If the \<code>confirmation_method\<\/code> is \<code>manual\<\/code>, all payment attempts must be
-- initiated using a secret key.
-- If any actions are required for the payment, the PaymentIntent will
-- return to the \<code>requires_confirmation\<\/code> state
-- after those actions are completed. Your server needs to then
-- explicitly re-confirm the PaymentIntent to initiate the next payment
-- attempt. Read the \<a href=\"\/docs\/payments\/payment-intents\/web-manual\">expanded documentation\<\/a>
-- to learn more about manual confirmation.\<\/p>
postPaymentIntentsIntentConfirm :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                             -- ^ intent | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentConfirmResponse)) -- ^ Monad containing the result of the operation
postPaymentIntentsIntentConfirm config
                                intent
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PaymentIntent)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/confirm
-- 
-- The same as 'postPaymentIntentsIntentConfirm' but returns the raw 'Data.ByteString.Char8.ByteString'
postPaymentIntentsIntentConfirmRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentConfirmRaw config
                                   intent
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/confirm
-- 
-- Monadic version of 'postPaymentIntentsIntentConfirm' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsIntentConfirmM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentConfirmResponse))
postPaymentIntentsIntentConfirmM intent
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentIntent)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/confirm
-- 
-- Monadic version of 'postPaymentIntentsIntentConfirmRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsIntentConfirmRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentConfirmRawM intent
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/confirm"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBody
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBody = PostPaymentIntentsIntentConfirmRequestBody {
  -- | client_secret: The client secret of the PaymentIntent.
  postPaymentIntentsIntentConfirmRequestBodyClientSecret :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | error_on_requires_action: Set to \`true\` to fail the payment attempt if the PaymentIntent transitions into \`requires_action\`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https:\/\/stripe.com\/docs\/payments\/save-card-without-authentication).
  , postPaymentIntentsIntentConfirmRequestBodyErrorOnRequiresAction :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentIntentsIntentConfirmRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | mandate: ID of the mandate to be used for this payment.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyMandate :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | mandate_data: This hash contains details about the Mandate to create
  , postPaymentIntentsIntentConfirmRequestBodyMandateData :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyMandateData')
  -- | off_session: Set to \`true\` to indicate that the customer is not in your checkout flow during this payment attempt, and therefore is unable to authenticate. This parameter is intended for scenarios where you collect card details and [charge them later](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards).
  , postPaymentIntentsIntentConfirmRequestBodyOffSession :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants)
  -- | payment_method: ID of the payment method (a PaymentMethod, Card, or [compatible Source](https:\/\/stripe.com\/docs\/payments\/payment-methods\#compatibility) object) to attach to this PaymentIntent.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | payment_method_options: Payment-method-specific configuration for this PaymentIntent.
  , postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions')
  -- | payment_method_types: The list of payment method types (e.g. card) that this PaymentIntent is allowed to use.
  , postPaymentIntentsIntentConfirmRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | receipt_email: Email address that the receipt for the resulting payment will be sent to.
  , postPaymentIntentsIntentConfirmRequestBodyReceiptEmail :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants)
  -- | return_url: The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method\'s app or site.
  -- If you\'d prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
  -- This parameter is only used for cards and other redirect-based payment methods.
  , postPaymentIntentsIntentConfirmRequestBodyReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | save_payment_method: If the PaymentIntent has a \`payment_method\` and a \`customer\` or if you\'re attaching a payment method to the PaymentIntent in this request, you can pass \`save_payment_method=true\` to save the payment method to the customer. Defaults to \`false\`.
  -- 
  -- If the payment method is already saved to a customer, this does nothing. If this type of payment method cannot be saved to a customer, the request will error.
  -- 
  -- _Note that saving a payment method using this parameter does not guarantee that the payment method can be charged._ To ensure that only payment methods which can be charged are saved to a customer, you can [manually save](https:\/\/stripe.com\/docs\/api\/customers\/create\#create_customer-source) the payment method in response to the [\`payment_intent.succeeded\` webhook](https:\/\/stripe.com\/docs\/api\/events\/types\#event_types-payment_intent.succeeded).
  , postPaymentIntentsIntentConfirmRequestBodySavePaymentMethod :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
  -- 
  -- If present, the payment method used with this PaymentIntent can be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer, even after the transaction completes.
  -- 
  -- Use \`on_session\` if you intend to only reuse the payment method when your customer is present in your checkout flow. Use \`off_session\` if your customer may or may not be in your checkout flow.
  -- 
  -- Stripe uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules. For example, if your customer is impacted by [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication), using \`off_session\` will ensure that they are authenticated while processing this PaymentIntent. You will then be able to collect [off-session payments](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards\#off-session-payments-with-saved-cards) for this customer.
  -- 
  -- If \`setup_future_usage\` is already set and you are performing a request using a publishable key, you may only update the value from \`on_session\` to \`off_session\`.
  , postPaymentIntentsIntentConfirmRequestBodySetupFutureUsage :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage')
  -- | shipping: Shipping information for this PaymentIntent.
  , postPaymentIntentsIntentConfirmRequestBodyShipping :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants)
  -- | use_stripe_sdk: Set to \`true\` only when using manual confirmation and the iOS or Android SDKs to handle additional authentication steps.
  , postPaymentIntentsIntentConfirmRequestBodyUseStripeSdk :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "client_secret" (postPaymentIntentsIntentConfirmRequestBodyClientSecret obj) : (Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsIntentConfirmRequestBodyErrorOnRequiresAction obj) : (Data.Aeson..=) "expand" (postPaymentIntentsIntentConfirmRequestBodyExpand obj) : (Data.Aeson..=) "mandate" (postPaymentIntentsIntentConfirmRequestBodyMandate obj) : (Data.Aeson..=) "mandate_data" (postPaymentIntentsIntentConfirmRequestBodyMandateData obj) : (Data.Aeson..=) "off_session" (postPaymentIntentsIntentConfirmRequestBodyOffSession obj) : (Data.Aeson..=) "payment_method" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodTypes obj) : (Data.Aeson..=) "receipt_email" (postPaymentIntentsIntentConfirmRequestBodyReceiptEmail obj) : (Data.Aeson..=) "return_url" (postPaymentIntentsIntentConfirmRequestBodyReturnUrl obj) : (Data.Aeson..=) "save_payment_method" (postPaymentIntentsIntentConfirmRequestBodySavePaymentMethod obj) : (Data.Aeson..=) "setup_future_usage" (postPaymentIntentsIntentConfirmRequestBodySetupFutureUsage obj) : (Data.Aeson..=) "shipping" (postPaymentIntentsIntentConfirmRequestBodyShipping obj) : (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsIntentConfirmRequestBodyUseStripeSdk obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "client_secret" (postPaymentIntentsIntentConfirmRequestBodyClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsIntentConfirmRequestBodyErrorOnRequiresAction obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentIntentsIntentConfirmRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate" (postPaymentIntentsIntentConfirmRequestBodyMandate obj) GHC.Base.<> ((Data.Aeson..=) "mandate_data" (postPaymentIntentsIntentConfirmRequestBodyMandateData obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postPaymentIntentsIntentConfirmRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_types" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodTypes obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postPaymentIntentsIntentConfirmRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "return_url" (postPaymentIntentsIntentConfirmRequestBodyReturnUrl obj) GHC.Base.<> ((Data.Aeson..=) "save_payment_method" (postPaymentIntentsIntentConfirmRequestBodySavePaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "setup_future_usage" (postPaymentIntentsIntentConfirmRequestBodySetupFutureUsage obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postPaymentIntentsIntentConfirmRequestBodyShipping obj) GHC.Base.<> (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsIntentConfirmRequestBodyUseStripeSdk obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBody" (\obj -> ((((((((((((((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error_on_requires_action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "save_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "use_stripe_sdk"))
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyMandate_data\'
-- 
-- This hash contains details about the Mandate to create
data PostPaymentIntentsIntentConfirmRequestBodyMandateData' = PostPaymentIntentsIntentConfirmRequestBodyMandateData' {
  -- | customer_acceptance
  postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyMandateData'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyMandateData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_acceptance"))
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyMandate_data\'Customer_acceptance\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' = PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' {
  -- | online
  postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online :: PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type :: PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "online" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) : (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "online" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyMandate_data\'Customer_acceptance\'Online\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' = PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' {
  -- | ip_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) : (Data.Aeson..=) "user_agent" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyMandate_data\'Customer_acceptance\'Type\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    = PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                          then PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
                                          else PostPaymentIntentsIntentConfirmRequestBodyMandateData'CustomerAcceptance'Type'EnumOther val)
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyOff_session\'OneOf1
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    = PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringOneOff
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringRecurring
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringOneOff) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off"
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringRecurring) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off")
                                          then PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringOneOff
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring")
                                                then PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumStringRecurring
                                                else PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1EnumOther val)
-- | Define the one-of schema postPaymentIntentsIntentConfirmRequestBodyOff_session\'
-- 
-- Set to \`true\` to indicate that the customer is not in your checkout flow during this payment attempt, and therefore is unable to authenticate. This parameter is intended for scenarios where you collect card details and [charge them later](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards).
data PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyOffSession'PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1 PostPaymentIntentsIntentConfirmRequestBodyOffSession'OneOf1
    | PostPaymentIntentsIntentConfirmRequestBodyOffSession'Bool GHC.Types.Bool
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyOffSession'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'
-- 
-- Payment-method-specific configuration for this PaymentIntent.
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions' = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions' {
  -- | card
  postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' {
  -- | installments
  postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments')
  -- | request_three_d_secure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "installments" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments obj) : (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "installments" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments obj) GHC.Base.<> (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "installments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Installments\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments' = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments' {
  -- | enabled
  postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Enabled :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | plan
  , postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan :: (GHC.Maybe.Maybe PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "enabled" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) : (Data.Aeson..=) "plan" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "enabled" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) GHC.Base.<> (Data.Aeson..=) "plan" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf1
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
                                          else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther val)
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf2
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 {
  -- | count
  postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count :: GHC.Integer.Type.Integer
  -- | interval
  , postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval :: PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
  -- | type
  , postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type :: PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "count" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) : (Data.Aeson..=) "interval" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) : (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "count" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2" (\obj -> ((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf2Interval\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
                                          else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther val)
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf2Type\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
                                          else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther val)
-- | Define the one-of schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Installments\'Plan\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1 PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyPayment_method_options\'Card\'Request_three_d_secure\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostPaymentIntentsIntentConfirmRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyReceipt_email\'OneOf2
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    = PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumString_
                                          else PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2EnumOther val)
-- | Define the one-of schema postPaymentIntentsIntentConfirmRequestBodyReceipt_email\'
-- 
-- Email address that the receipt for the resulting payment will be sent to.
data PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'String GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2 PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyReceiptEmail'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodySetup_future_usage\'
-- 
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
-- 
-- If present, the payment method used with this PaymentIntent can be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer, even after the transaction completes.
-- 
-- Use \`on_session\` if you intend to only reuse the payment method when your customer is present in your checkout flow. Use \`off_session\` if your customer may or may not be in your checkout flow.
-- 
-- Stripe uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules. For example, if your customer is impacted by [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication), using \`off_session\` will ensure that they are authenticated while processing this PaymentIntent. You will then be able to collect [off-session payments](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards\#off-session-payments-with-saved-cards) for this customer.
-- 
-- If \`setup_future_usage\` is already set and you are performing a request using a publishable key, you may only update the value from \`on_session\` to \`off_session\`.
data PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'
    = PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumString_
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOffSession
    | PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOnSession
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOffSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session"
          toJSON (PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOnSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session")
                                                then PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOffSession
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session")
                                                      then PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumStringOnSession
                                                      else PostPaymentIntentsIntentConfirmRequestBodySetupFutureUsage'EnumOther val)
-- | Defines the enum schema postPaymentIntentsIntentConfirmRequestBodyShipping\'OneOf1
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    = PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    where toJSON (PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumString_
                                          else PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1EnumOther val)
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyShipping\'OneOf2
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2 = PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2 {
  -- | address
  postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address :: PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'
  -- | carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Carrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Name :: GHC.Base.String
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address obj) : (Data.Aeson..=) "carrier" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Carrier obj) : (Data.Aeson..=) "name" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Name obj) : (Data.Aeson..=) "phone" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Phone obj) : (Data.Aeson..=) "tracking_number" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2" (\obj -> ((((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
-- | Defines the data type for the schema postPaymentIntentsIntentConfirmRequestBodyShipping\'OneOf2Address\'
-- 
-- 
data PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address' = PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'City obj) : (Data.Aeson..=) "country" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address'" (\obj -> (((((GHC.Base.pure PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Define the one-of schema postPaymentIntentsIntentConfirmRequestBodyShipping\'
-- 
-- Shipping information for this PaymentIntent.
data PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants
    = PostPaymentIntentsIntentConfirmRequestBodyShipping'PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1 PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf1
    | PostPaymentIntentsIntentConfirmRequestBodyShipping'PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2 PostPaymentIntentsIntentConfirmRequestBodyShipping'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsIntentConfirmRequestBodyShipping'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postPaymentIntentsIntentConfirm'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsIntentConfirmResponseError' is used.
data PostPaymentIntentsIntentConfirmResponse =                   
   PostPaymentIntentsIntentConfirmResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPaymentIntentsIntentConfirmResponse200 PaymentIntent     -- ^ Successful response.
  | PostPaymentIntentsIntentConfirmResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
