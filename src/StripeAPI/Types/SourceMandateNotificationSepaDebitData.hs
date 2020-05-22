{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceMandateNotificationSepaDebitData
module StripeAPI.Types.SourceMandateNotificationSepaDebitData where

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

-- | Defines the data type for the schema source_mandate_notification_sepa_debit_data
-- 
-- 
data SourceMandateNotificationSepaDebitData = SourceMandateNotificationSepaDebitData {
  -- | creditor_identifier: SEPA creditor ID.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sourceMandateNotificationSepaDebitDataCreditorIdentifier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | last4: Last 4 digits of the account number associated with the debit.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceMandateNotificationSepaDebitDataLast4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | mandate_reference: Mandate reference associated with the debit.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceMandateNotificationSepaDebitDataMandateReference :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceMandateNotificationSepaDebitData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "creditor_identifier" (sourceMandateNotificationSepaDebitDataCreditorIdentifier obj) : (Data.Aeson..=) "last4" (sourceMandateNotificationSepaDebitDataLast4 obj) : (Data.Aeson..=) "mandate_reference" (sourceMandateNotificationSepaDebitDataMandateReference obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "creditor_identifier" (sourceMandateNotificationSepaDebitDataCreditorIdentifier obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceMandateNotificationSepaDebitDataLast4 obj) GHC.Base.<> (Data.Aeson..=) "mandate_reference" (sourceMandateNotificationSepaDebitDataMandateReference obj)))
instance Data.Aeson.Types.FromJSON.FromJSON SourceMandateNotificationSepaDebitData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceMandateNotificationSepaDebitData" (\obj -> ((GHC.Base.pure SourceMandateNotificationSepaDebitData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "creditor_identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_reference"))