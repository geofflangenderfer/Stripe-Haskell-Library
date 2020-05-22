{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomerSubscriptionsSubscriptionExposedId
module StripeAPI.Operations.PostCustomersCustomerSubscriptionsSubscriptionExposedId where

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

-- | > POST /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- \<p>Updates an existing subscription on a customer to match the specified parameters. When changing plans or quantities, we will optionally prorate the price we charge next month to make up for any price changes. To preview how the proration will be calculated, use the \<a href=\"\#upcoming_invoice\">upcoming invoice\<\/a> endpoint.\<\/p>
postCustomersCustomerSubscriptionsSubscriptionExposedId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                                     -- ^ customer | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                                                     -- ^ subscription_exposed_id | Constraints: Maximum length of 5000
  -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomerSubscriptionsSubscriptionExposedId config
                                                        customer
                                                        subscriptionExposedId
                                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Subscription)
                                                                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- The same as 'postCustomersCustomerSubscriptionsSubscriptionExposedId' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerSubscriptionsSubscriptionExposedIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                            StripeAPI.Common.SecurityScheme s) =>
                                                              StripeAPI.Common.Configuration s ->
                                                              GHC.Base.String ->
                                                              GHC.Base.String ->
                                                              PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsSubscriptionExposedIdRaw config
                                                           customer
                                                           subscriptionExposedId
                                                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- Monadic version of 'postCustomersCustomerSubscriptionsSubscriptionExposedId' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSubscriptionsSubscriptionExposedIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                          StripeAPI.Common.SecurityScheme s) =>
                                                            GHC.Base.String ->
                                                            GHC.Base.String ->
                                                            PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                               m
                                                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                   (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse))
postCustomersCustomerSubscriptionsSubscriptionExposedIdM customer
                                                         subscriptionExposedId
                                                         body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Subscription)
                                                                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- Monadic version of 'postCustomersCustomerSubscriptionsSubscriptionExposedIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSubscriptionsSubscriptionExposedIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                             StripeAPI.Common.SecurityScheme s) =>
                                                               GHC.Base.String ->
                                                               GHC.Base.String ->
                                                               PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                                  m
                                                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsSubscriptionExposedIdRawM customer
                                                            subscriptionExposedId
                                                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody {
  -- | application_fee_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner\'s Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/subscriptions\#collecting-fees-on-subscriptions).
  postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | billing_cycle_anchor: Either \`now\` or \`unchanged\`. Setting the value to \`now\` resets the subscription\'s billing cycle anchor to the current time. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor')
  -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants)
  -- | cancel_at: A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using \`proration_behavior\`. If set during a future period, this will always cause a proration for that period.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants)
  -- | cancel_at_period_end: Boolean indicating whether this subscription should cancel at the end of the current period.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | collection_method: Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod')
  -- | coupon: The code of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | days_until_due: Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where \`collection_method\` is set to \`send_invoice\`.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | default_payment_method: ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. If not set, invoices will use the default payment method in the customer\'s invoice settings.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_source: ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If not set, defaults to the customer\'s default source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_tax_rates: The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription. Pass an empty string to remove previously-defined tax rates.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | items: List of subscription items, each with an attached plan.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems :: (GHC.Maybe.Maybe ([] PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata')
  -- | off_session: Indicates if a customer is on or off-session while an invoice payment is attempted.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payment_behavior: Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
  -- 
  -- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
  -- 
  -- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior')
  -- | pending_invoice_item_interval: Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants)
  -- | prorate: This field has been renamed to \`proration_behavior\`. \`prorate=true\` can be replaced with \`proration_behavior=create_prorations\` and \`prorate=false\` can be replaced with \`proration_behavior=none\`.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
  -- 
  -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
  -- 
  -- Prorations can be disabled by passing \`none\`.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior')
  -- | proration_date: If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply exactly the same proration that was previewed with [upcoming invoice](https:\/\/stripe.com\/docs\/api\#retrieve_customer_invoice) endpoint. It can also be used to implement custom proration logic, such as prorating by day instead of by second, by providing the time that you wish to use for proration calculations.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_percent: A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants)
  -- | trial_end: Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants)
  -- | trial_from_plan: Indicates if a plan\'s \`trial_period_days\` should be applied to the subscription. Setting \`trial_end\` per subscription is preferred, and this defaults to \`false\`. Setting this flag to \`true\` together with \`trial_end\` is not allowed.
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) : (Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) : (Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) : (Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "proration_date" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) GHC.Base.<> (Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj)))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody" (\obj -> ((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan"))
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBilling_cycle_anchor\'
-- 
-- Either \`now\` or \`unchanged\`. Setting the value to \`now\` resets the subscription\'s billing cycle anchor to the current time. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
                                                else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther val)
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBilling_thresholds\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBilling_thresholds\'OneOf2
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 {
  -- | amount_gte
  postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reset_billing_cycle_anchor
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBilling_thresholds\'
-- 
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancel_at\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancel_at\'
-- 
-- A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using \`proration_behavior\`. If set during a future period, this will always cause a proration for that period.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollection_method\'
-- 
-- Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther val)
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefault_tax_rates\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefault_tax_rates\'
-- 
-- The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription. Pass an empty string to remove previously-defined tax rates.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems\'
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems' = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems' {
  -- | billing_thresholds
  postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants)
  -- | clear_usage
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | deleted
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Id :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata')
  -- | plan
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "clear_usage" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) : (Data.Aeson..=) "deleted" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) : (Data.Aeson..=) "id" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "clear_usage" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'" (\obj -> (((((((GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "clear_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems\'Billing_thresholds\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems\'Billing_thresholds\'OneOf2
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 {
  -- | usage_gte
  postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems\'Billing_thresholds\'
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems\'Metadata\'
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata' = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata')
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems\'Tax_rates\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems\'Tax_rates\'
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata' = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyMetadata')
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPayment_behavior\'
-- 
-- Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
-- 
-- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
-- 
-- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther val)
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'OneOf2
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 {
  -- | interval
  postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
  -- | interval_count
  , postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'OneOf2Interval\'
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
                                                            else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'
-- 
-- Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProration_behavior\'
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
-- 
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
-- 
-- Prorations can be disabled by passing \`none\`.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
                                                      else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther val)
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTax_percent\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTax_percent\'
-- 
-- A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrial_end\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrial_end\'
-- 
-- Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1 PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    | PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postCustomersCustomerSubscriptionsSubscriptionExposedId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError' is used.
data PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse =                   
   PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Subscription      -- ^ Successful response.
  | PostCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)