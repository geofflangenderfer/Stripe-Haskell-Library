{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteCustomersCustomerSubscriptionsSubscriptionExposedId
module StripeAPI.Operations.DeleteCustomersCustomerSubscriptionsSubscriptionExposedId where

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

-- | > DELETE /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- \<p>Cancels a customer’s subscription. If you set the \<code>at_period_end\<\/code> parameter to \<code>true\<\/code>, the subscription will remain active until the end of the period, at which point it will be canceled and not renewed. Otherwise, with the default \<code>false\<\/code> value, the subscription is terminated immediately. In either case, the customer will not be charged again for the subscription.\<\/p>
-- 
-- \<p>Note, however, that any pending invoice items that you’ve created will still be charged for at the end of the period, unless manually \<a href=\"\#delete_invoiceitem\">deleted\<\/a>. If you’ve set the subscription to cancel at the end of the period, any pending prorations will also be left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations will be removed.\<\/p>
-- 
-- \<p>By default, upon subscription cancellation, Stripe will stop automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.\<\/p>
deleteCustomersCustomerSubscriptionsSubscriptionExposedId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                                       -- ^ customer | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                                                       -- ^ subscription_exposed_id | Constraints: Maximum length of 5000
  -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponse)) -- ^ Monad containing the result of the operation
deleteCustomersCustomerSubscriptionsSubscriptionExposedId config
                                                          customer
                                                          subscriptionExposedId
                                                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Subscription)
                                                                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- The same as 'deleteCustomersCustomerSubscriptionsSubscriptionExposedId' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                              StripeAPI.Common.SecurityScheme s) =>
                                                                StripeAPI.Common.Configuration s ->
                                                                GHC.Base.String ->
                                                                GHC.Base.String ->
                                                                DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRaw config
                                                             customer
                                                             subscriptionExposedId
                                                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- Monadic version of 'deleteCustomersCustomerSubscriptionsSubscriptionExposedId' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                            StripeAPI.Common.SecurityScheme s) =>
                                                              GHC.Base.String ->
                                                              GHC.Base.String ->
                                                              DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                                 m
                                                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                     (Network.HTTP.Client.Types.Response DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponse))
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdM customer
                                                           subscriptionExposedId
                                                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Subscription)
                                                                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/subscriptions/{subscription_exposed_id}
-- 
-- Monadic version of 'deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                               StripeAPI.Common.SecurityScheme s) =>
                                                                 GHC.Base.String ->
                                                                 GHC.Base.String ->
                                                                 DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody ->
                                                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                                    m
                                                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRawM customer
                                                              subscriptionExposedId
                                                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
-- 
-- 
data DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody = DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | invoice_now: Can be set to \`true\` if \`at_period_end\` is not set to \`true\`. Will generate a final invoice that invoices for any un-invoiced metered usage and new\/pending proration invoice items.
  , deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | prorate: Can be set to \`true\` if \`at_period_end\` is not set to \`true\`. Will generate a proration invoice item that credits remaining unused time until the subscription period end.
  , deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) : (Data.Aeson..=) "invoice_now" (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow obj) : (Data.Aeson..=) "prorate" (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "invoice_now" (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow obj) GHC.Base.<> (Data.Aeson..=) "prorate" (deleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBodyProrate obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody" (\obj -> ((GHC.Base.pure DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_now")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate"))
-- | Represents a response of the operation 'deleteCustomersCustomerSubscriptionsSubscriptionExposedId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError' is used.
data DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponse =                   
   DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponse200 Subscription      -- ^ Successful response.
  | DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)