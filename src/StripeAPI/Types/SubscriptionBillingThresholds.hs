{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SubscriptionBillingThresholds
module StripeAPI.Types.SubscriptionBillingThresholds where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified StripeAPI.Common

-- | Defines the data type for the schema subscription_billing_thresholds
-- 
-- 
data SubscriptionBillingThresholds = SubscriptionBillingThresholds {
  -- | amount_gte: Monetary threshold that triggers the subscription to create an invoice
  subscriptionBillingThresholdsAmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reset_billing_cycle_anchor: Indicates if the \`billing_cycle_anchor\` should be reset when a threshold is reached. If true, \`billing_cycle_anchor\` will be updated to the date\/time the threshold was last reached; otherwise, the value will remain unchanged. This value may not be \`true\` if the subscription contains items with plans that have \`aggregate_usage=last_ever\`.
  , subscriptionBillingThresholdsResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SubscriptionBillingThresholds
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (subscriptionBillingThresholdsAmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (subscriptionBillingThresholdsResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (subscriptionBillingThresholdsAmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (subscriptionBillingThresholdsResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionBillingThresholds
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionBillingThresholds" (\obj -> (GHC.Base.pure SubscriptionBillingThresholds GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))