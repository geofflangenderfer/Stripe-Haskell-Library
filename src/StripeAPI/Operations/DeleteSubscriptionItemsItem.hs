{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteSubscriptionItemsItem
module StripeAPI.Operations.DeleteSubscriptionItemsItem where

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

-- | > DELETE /v1/subscription_items/{item}
-- 
-- \<p>Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.\<\/p>
deleteSubscriptionItemsItem :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                         -- ^ item | Constraints: Maximum length of 5000
  -> DeleteSubscriptionItemsItemRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteSubscriptionItemsItemResponse)) -- ^ Monad containing the result of the operation
deleteSubscriptionItemsItem config
                            item
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteSubscriptionItemsItemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionItemsItemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DeletedSubscriptionItem)
                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionItemsItemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/subscription_items/{item}
-- 
-- The same as 'deleteSubscriptionItemsItem' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteSubscriptionItemsItemRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  StripeAPI.Common.Configuration s ->
                                  GHC.Base.String ->
                                  DeleteSubscriptionItemsItemRequestBody ->
                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteSubscriptionItemsItemRaw config
                               item
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/subscription_items/{item}
-- 
-- Monadic version of 'deleteSubscriptionItemsItem' (use with 'StripeAPI.Common.runWithConfiguration')
deleteSubscriptionItemsItemM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                DeleteSubscriptionItemsItemRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response DeleteSubscriptionItemsItemResponse))
deleteSubscriptionItemsItemM item
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteSubscriptionItemsItemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionItemsItemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    DeletedSubscriptionItem)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteSubscriptionItemsItemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/subscription_items/{item}
-- 
-- Monadic version of 'deleteSubscriptionItemsItemRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteSubscriptionItemsItemRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   GHC.Base.String ->
                                   DeleteSubscriptionItemsItemRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteSubscriptionItemsItemRawM item
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel item)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteSubscriptionItemsItemRequestBody
-- 
-- 
data DeleteSubscriptionItemsItemRequestBody = DeleteSubscriptionItemsItemRequestBody {
  -- | clear_usage: Delete all usage for the given subscription item. Allowed only when the current plan\'s \`usage_type\` is \`metered\`.
  deleteSubscriptionItemsItemRequestBodyClearUsage :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | prorate: This field has been renamed to \`proration_behavior\`. \`prorate=true\` can be replaced with \`proration_behavior=create_prorations\` and \`prorate=false\` can be replaced with \`proration_behavior=none\`.
  , deleteSubscriptionItemsItemRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
  -- 
  -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
  -- 
  -- Prorations can be disabled by passing \`none\`.
  , deleteSubscriptionItemsItemRequestBodyProrationBehavior :: (GHC.Maybe.Maybe DeleteSubscriptionItemsItemRequestBodyProrationBehavior')
  -- | proration_date: If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https:\/\/stripe.com\/docs\/api\#retrieve_customer_invoice) endpoint.
  , deleteSubscriptionItemsItemRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteSubscriptionItemsItemRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "clear_usage" (deleteSubscriptionItemsItemRequestBodyClearUsage obj) : (Data.Aeson..=) "prorate" (deleteSubscriptionItemsItemRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (deleteSubscriptionItemsItemRequestBodyProrationBehavior obj) : (Data.Aeson..=) "proration_date" (deleteSubscriptionItemsItemRequestBodyProrationDate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "clear_usage" (deleteSubscriptionItemsItemRequestBodyClearUsage obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (deleteSubscriptionItemsItemRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (deleteSubscriptionItemsItemRequestBodyProrationBehavior obj) GHC.Base.<> (Data.Aeson..=) "proration_date" (deleteSubscriptionItemsItemRequestBodyProrationDate obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionItemsItemRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSubscriptionItemsItemRequestBody" (\obj -> (((GHC.Base.pure DeleteSubscriptionItemsItemRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "clear_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_date"))
-- | Defines the enum schema deleteSubscriptionItemsItemRequestBodyProration_behavior\'
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. Valid values are \`create_prorations\`, \`none\`, or \`always_invoice\`.
-- 
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https:\/\/stripe.com\/docs\/subscriptions\/upgrading-downgrading\#immediate-payment). In order to always invoice immediately for prorations, pass \`always_invoice\`.
-- 
-- Prorations can be disabled by passing \`none\`.
data DeleteSubscriptionItemsItemRequestBodyProrationBehavior'
    = DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations
    | DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteSubscriptionItemsItemRequestBodyProrationBehavior'
    where toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON DeleteSubscriptionItemsItemRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumStringNone
                                                      else DeleteSubscriptionItemsItemRequestBodyProrationBehavior'EnumOther val)
-- | Represents a response of the operation 'deleteSubscriptionItemsItem'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSubscriptionItemsItemResponseError' is used.
data DeleteSubscriptionItemsItemResponse =                          
   DeleteSubscriptionItemsItemResponseError GHC.Base.String         -- ^ Means either no matching case available or a parse error
  | DeleteSubscriptionItemsItemResponse200 DeletedSubscriptionItem  -- ^ Successful response.
  | DeleteSubscriptionItemsItemResponseDefault Error                -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)