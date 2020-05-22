{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountRequirements
module StripeAPI.Types.AccountRequirements where

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
import StripeAPI.Types.AccountRequirementsError

-- | Defines the data type for the schema account_requirements
-- 
-- 
data AccountRequirements = AccountRequirements {
  -- | current_deadline: The date the fields in \`currently_due\` must be collected by to keep payouts enabled for the account. These fields might block payouts sooner if the next threshold is reached before these fields are collected.
  accountRequirementsCurrentDeadline :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currently_due: The fields that need to be collected to keep the account enabled. If not collected by the \`current_deadline\`, these fields appear in \`past_due\` as well, and the account is disabled.
  , accountRequirementsCurrentlyDue :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | disabled_reason: If the account is disabled, this string describes why the account can’t create charges or receive payouts. Can be \`requirements.past_due\`, \`requirements.pending_verification\`, \`rejected.fraud\`, \`rejected.terms_of_service\`, \`rejected.listed\`, \`rejected.other\`, \`listed\`, \`under_review\`, or \`other\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountRequirementsDisabledReason :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | errors: The fields that need to be collected again because validation or verification failed for some reason.
  , accountRequirementsErrors :: (GHC.Maybe.Maybe ([] AccountRequirementsError))
  -- | eventually_due: The fields that need to be collected assuming all volume thresholds are reached. As they become required, these fields appear in \`currently_due\` as well, and the \`current_deadline\` is set.
  , accountRequirementsEventuallyDue :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | past_due: The fields that weren\'t collected by the \`current_deadline\`. These fields need to be collected to re-enable the account.
  , accountRequirementsPastDue :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | pending_verification: Fields that may become required depending on the results of verification or review. An empty array unless an asynchronous verification is pending. If verification fails, the fields in this array become required and move to \`currently_due\` or \`past_due\`.
  , accountRequirementsPendingVerification :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountRequirements
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "current_deadline" (accountRequirementsCurrentDeadline obj) : (Data.Aeson..=) "currently_due" (accountRequirementsCurrentlyDue obj) : (Data.Aeson..=) "disabled_reason" (accountRequirementsDisabledReason obj) : (Data.Aeson..=) "errors" (accountRequirementsErrors obj) : (Data.Aeson..=) "eventually_due" (accountRequirementsEventuallyDue obj) : (Data.Aeson..=) "past_due" (accountRequirementsPastDue obj) : (Data.Aeson..=) "pending_verification" (accountRequirementsPendingVerification obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "current_deadline" (accountRequirementsCurrentDeadline obj) GHC.Base.<> ((Data.Aeson..=) "currently_due" (accountRequirementsCurrentlyDue obj) GHC.Base.<> ((Data.Aeson..=) "disabled_reason" (accountRequirementsDisabledReason obj) GHC.Base.<> ((Data.Aeson..=) "errors" (accountRequirementsErrors obj) GHC.Base.<> ((Data.Aeson..=) "eventually_due" (accountRequirementsEventuallyDue obj) GHC.Base.<> ((Data.Aeson..=) "past_due" (accountRequirementsPastDue obj) GHC.Base.<> (Data.Aeson..=) "pending_verification" (accountRequirementsPendingVerification obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountRequirements
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountRequirements" (\obj -> ((((((GHC.Base.pure AccountRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "current_deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_verification"))