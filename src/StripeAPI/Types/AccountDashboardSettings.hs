{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountDashboardSettings
module StripeAPI.Types.AccountDashboardSettings where

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

-- | Defines the data type for the schema account_dashboard_settings
-- 
-- 
data AccountDashboardSettings = AccountDashboardSettings {
  -- | display_name: The display name for this account. This is used on the Stripe Dashboard to differentiate between accounts.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  accountDashboardSettingsDisplayName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | timezone: The timezone used in the Stripe Dashboard for this account. A list of possible time zone values is maintained at the [IANA Time Zone Database](http:\/\/www.iana.org\/time-zones).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountDashboardSettingsTimezone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountDashboardSettings
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "display_name" (accountDashboardSettingsDisplayName obj) : (Data.Aeson..=) "timezone" (accountDashboardSettingsTimezone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "display_name" (accountDashboardSettingsDisplayName obj) GHC.Base.<> (Data.Aeson..=) "timezone" (accountDashboardSettingsTimezone obj))
instance Data.Aeson.Types.FromJSON.FromJSON AccountDashboardSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountDashboardSettings" (\obj -> (GHC.Base.pure AccountDashboardSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "timezone"))