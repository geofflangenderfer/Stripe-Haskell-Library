{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SubscriptionItemBillingThresholds
module StripeAPI.Types.SubscriptionItemBillingThresholds where

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

-- | Defines the data type for the schema subscription_item_billing_thresholds
-- 
-- 
data SubscriptionItemBillingThresholds = SubscriptionItemBillingThresholds {
  -- | usage_gte: Usage threshold that triggers the subscription to create an invoice
  subscriptionItemBillingThresholdsUsageGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SubscriptionItemBillingThresholds
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (subscriptionItemBillingThresholdsUsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (subscriptionItemBillingThresholdsUsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionItemBillingThresholds
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionItemBillingThresholds" (\obj -> GHC.Base.pure SubscriptionItemBillingThresholds GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage_gte"))