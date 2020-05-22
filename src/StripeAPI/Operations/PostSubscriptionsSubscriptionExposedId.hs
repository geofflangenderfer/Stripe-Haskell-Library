{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSubscriptionsSubscriptionExposedId
module StripeAPI.Operations.PostSubscriptionsSubscriptionExposedId where

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

-- | > POST /v1/subscriptions/{subscription_exposed_id}
-- 
-- \<p>Updates an existing subscription on a customer to match the specified parameters. When changing plans or quantities, we will optionally prorate the price we charge next month to make up for any price changes. To preview how the proration will be calculated, use the \<a href=\"\#upcoming_invoice\">upcoming invoice\<\/a> endpoint.\<\/p>
postSubscriptionsSubscriptionExposedId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                    -- ^ subscription_exposed_id | Constraints: Maximum length of 5000
  -> PostSubscriptionsSubscriptionExposedIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSubscriptionsSubscriptionExposedIdResponse)) -- ^ Monad containing the result of the operation
postSubscriptionsSubscriptionExposedId config
                                       subscriptionExposedId
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Subscription)
                                                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscriptions/{subscription_exposed_id}
-- 
-- The same as 'postSubscriptionsSubscriptionExposedId' but returns the raw 'Data.ByteString.Char8.ByteString'
postSubscriptionsSubscriptionExposedIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                           StripeAPI.Common.SecurityScheme s) =>
                                             StripeAPI.Common.Configuration s ->
                                             GHC.Base.String ->
                                             PostSubscriptionsSubscriptionExposedIdRequestBody ->
                                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsSubscriptionExposedIdRaw config
                                          subscriptionExposedId
                                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscriptions/{subscription_exposed_id}
-- 
-- Monadic version of 'postSubscriptionsSubscriptionExposedId' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionsSubscriptionExposedIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                         StripeAPI.Common.SecurityScheme s) =>
                                           GHC.Base.String ->
                                           PostSubscriptionsSubscriptionExposedIdRequestBody ->
                                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response PostSubscriptionsSubscriptionExposedIdResponse))
postSubscriptionsSubscriptionExposedIdM subscriptionExposedId
                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Subscription)
                                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/subscriptions/{subscription_exposed_id}
-- 
-- Monadic version of 'postSubscriptionsSubscriptionExposedIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSubscriptionsSubscriptionExposedIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                            StripeAPI.Common.SecurityScheme s) =>
                                              GHC.Base.String ->
                                              PostSubscriptionsSubscriptionExposedIdRequestBody ->
                                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                 m
                                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSubscriptionsSubscriptionExposedIdRawM subscriptionExposedId
                                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSubscriptionsSubscriptionExposedIdRequestBody
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBody = PostSubscriptionsSubscriptionExposedIdRequestBody {
  -- | application_fee_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner\'s Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/subscriptions\#collecting-fees-on-subscriptions).
  postSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | billing_cycle_anchor: Either \`now\` or \`unchanged\`. Setting the value to \`now\` resets the subscription\'s billing cycle anchor to the current time. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor')
  -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
  , postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants)
  -- | cancel_at: A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using \`proration_behavior\`. If set during a future period, this will always cause a proration for that period.
  , postSubscriptionsSubscriptionExposedIdRequestBodyCancelAt :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants)
  -- | cancel_at_period_end: Boolean indicating whether this subscription should cancel at the end of the current period.
  , postSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | collection_method: Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod')
  -- | coupon: The code of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsSubscriptionExposedIdRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | days_until_due: Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where \`collection_method\` is set to \`send_invoice\`.
  , postSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | default_payment_method: ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. If not set, invoices will use the default payment method in the customer\'s invoice settings.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_source: ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If not set, defaults to the customer\'s default source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_tax_rates: The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription. Pass an empty string to remove previously-defined tax rates.
  , postSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSubscriptionsSubscriptionExposedIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | items: List of subscription items, each with an attached plan.
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems :: (GHC.Maybe.Maybe ([] PostSubscriptionsSubscriptionExposedIdRequestBodyItems'))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSubscriptionsSubscriptionExposedIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata')
  -- | off_session: Indicates if a customer is on or off-session while an invoice payment is attempted.
  , postSubscriptionsSubscriptionExposedIdRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payment_behavior: Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
  -- 
  -- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
  -- 
  -- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
  , postSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior')
  -- | pending_invoice_item_interval: Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
  , postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants)
  -- | prorate: This field has been renamed to \`proration_behavior\`. \`prorate=true\` can be replaced with \`proration_behavior=create_prorations\` and \`prorate=false\` can be replaced with \`proration_behavior=none\`.
  , postSubscriptionsSubscriptionExposedIdRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
  -- 
  -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
  -- 
  -- Prorations can be disabled by passing \`none\`.
  , postSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior')
  -- | proration_date: If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply exactly the same proration that was previewed with [upcoming invoice](https:\/\/stripe.com\/docs\/api\#retrieve_customer_invoice) endpoint. It can also be used to implement custom proration logic, such as prorating by day instead of by second, by providing the time that you wish to use for proration calculations.
  , postSubscriptionsSubscriptionExposedIdRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_percent: A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
  , postSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants)
  -- | trial_end: Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
  , postSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants)
  -- | trial_from_plan: Indicates if a plan\'s \`trial_period_days\` should be applied to the subscription. Setting \`trial_end\` per subscription is preferred, and this defaults to \`false\`. Setting this flag to \`true\` together with \`trial_end\` is not allowed.
  , postSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) : (Data.Aeson..=) "days_until_due" (postSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) : (Data.Aeson..=) "items" (postSubscriptionsSubscriptionExposedIdRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) : (Data.Aeson..=) "tax_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postSubscriptionsSubscriptionExposedIdRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postSubscriptionsSubscriptionExposedIdRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postSubscriptionsSubscriptionExposedIdRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postSubscriptionsSubscriptionExposedIdRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postSubscriptionsSubscriptionExposedIdRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "proration_date" (postSubscriptionsSubscriptionExposedIdRequestBodyProrationDate obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd obj) GHC.Base.<> (Data.Aeson..=) "trial_from_plan" (postSubscriptionsSubscriptionExposedIdRequestBodyTrialFromPlan obj)))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBody" (\obj -> ((((((((((((((((((((((GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan"))
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyBilling_cycle_anchor\'
-- 
-- Either \`now\` or \`unchanged\`. Setting the value to \`now\` resets the subscription\'s billing cycle anchor to the current time. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringNow
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unchanged")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumStringUnchanged
                                                else PostSubscriptionsSubscriptionExposedIdRequestBodyBillingCycleAnchor'EnumOther val)
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyBilling_thresholds\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postSubscriptionsSubscriptionExposedIdRequestBodyBilling_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 {
  -- | amount_gte
  postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reset_billing_cycle_anchor
  , postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyBilling_thresholds\'
-- 
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
data PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2 PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyCancel_at\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1EnumOther val)
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyCancel_at\'
-- 
-- A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using \`proration_behavior\`. If set during a future period, this will always cause a proration for that period.
data PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCancelAt'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyCollection_method\'
-- 
-- Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
data PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostSubscriptionsSubscriptionExposedIdRequestBodyCollectionMethod'EnumOther val)
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyDefault_tax_rates\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyDefault_tax_rates\'
-- 
-- The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription. Pass an empty string to remove previously-defined tax rates.
data PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionsSubscriptionExposedIdRequestBodyItems\'
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems' = PostSubscriptionsSubscriptionExposedIdRequestBodyItems' {
  -- | billing_thresholds
  postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants)
  -- | clear_usage
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | deleted
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems'Id :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata')
  -- | plan
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates
  , postSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "clear_usage" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) : (Data.Aeson..=) "deleted" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) : (Data.Aeson..=) "id" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) : (Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "clear_usage" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'ClearUsage obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Deleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Id obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyItems'" (\obj -> (((((((GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "clear_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyItems\'Billing_thresholds\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postSubscriptionsSubscriptionExposedIdRequestBodyItems\'Billing_thresholds\'OneOf2
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 {
  -- | usage_gte
  postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyItems\'Billing_thresholds\'
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2 PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionsSubscriptionExposedIdRequestBodyItems\'Metadata\'
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata' = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyItems'Metadata')
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyItems\'Tax_rates\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyItems\'Tax_rates\'
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postSubscriptionsSubscriptionExposedIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata' = PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyMetadata')
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyPayment_behavior\'
-- 
-- Use \`allow_incomplete\` to transition the subscription to \`status=past_due\` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
-- 
-- Use \`pending_if_incomplete\` to update the subscription using [pending updates](https:\/\/stripe.com\/docs\/billing\/subscriptions\/pending-updates). When you use \`pending_if_incomplete\` you can only pass the parameters [supported by pending updates](https:\/\/stripe.com\/docs\/billing\/pending-updates-reference\#supported-attributes).
-- 
-- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
data PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostSubscriptionsSubscriptionExposedIdRequestBodyPaymentBehavior'EnumOther val)
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther val)
-- | Defines the data type for the schema postSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'OneOf2
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 {
  -- | interval
  postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
  -- | interval_count
  , postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'OneOf2Interval\'
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
                                                            else PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther val)
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyPending_invoice_item_interval\'
-- 
-- Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
data PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2 PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyProration_behavior\'
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
-- 
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
-- 
-- Prorations can be disabled by passing \`none\`.
data PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    = PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumStringNone
                                                      else PostSubscriptionsSubscriptionExposedIdRequestBodyProrationBehavior'EnumOther val)
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyTax_percent\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1EnumOther val)
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyTax_percent\'
-- 
-- A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
data PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSubscriptionsSubscriptionExposedIdRequestBodyTrial_end\'OneOf1
-- 
-- 
data PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1EnumOther val)
-- | Define the one-of schema postSubscriptionsSubscriptionExposedIdRequestBodyTrial_end\'
-- 
-- Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
data PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    = PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1 PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'OneOf1
    | PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSubscriptionsSubscriptionExposedIdRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postSubscriptionsSubscriptionExposedId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionsSubscriptionExposedIdResponseError' is used.
data PostSubscriptionsSubscriptionExposedIdResponse =                   
   PostSubscriptionsSubscriptionExposedIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSubscriptionsSubscriptionExposedIdResponse200 Subscription      -- ^ Successful response.
  | PostSubscriptionsSubscriptionExposedIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)