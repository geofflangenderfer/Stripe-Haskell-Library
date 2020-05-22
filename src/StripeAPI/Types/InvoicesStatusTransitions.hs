{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema InvoicesStatusTransitions
module StripeAPI.Types.InvoicesStatusTransitions where

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

-- | Defines the data type for the schema invoices_status_transitions
-- 
-- 
data InvoicesStatusTransitions = InvoicesStatusTransitions {
  -- | finalized_at: The time that the invoice draft was finalized.
  invoicesStatusTransitionsFinalizedAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | marked_uncollectible_at: The time that the invoice was marked uncollectible.
  , invoicesStatusTransitionsMarkedUncollectibleAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | paid_at: The time that the invoice was paid.
  , invoicesStatusTransitionsPaidAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | voided_at: The time that the invoice was voided.
  , invoicesStatusTransitionsVoidedAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON InvoicesStatusTransitions
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "finalized_at" (invoicesStatusTransitionsFinalizedAt obj) : (Data.Aeson..=) "marked_uncollectible_at" (invoicesStatusTransitionsMarkedUncollectibleAt obj) : (Data.Aeson..=) "paid_at" (invoicesStatusTransitionsPaidAt obj) : (Data.Aeson..=) "voided_at" (invoicesStatusTransitionsVoidedAt obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "finalized_at" (invoicesStatusTransitionsFinalizedAt obj) GHC.Base.<> ((Data.Aeson..=) "marked_uncollectible_at" (invoicesStatusTransitionsMarkedUncollectibleAt obj) GHC.Base.<> ((Data.Aeson..=) "paid_at" (invoicesStatusTransitionsPaidAt obj) GHC.Base.<> (Data.Aeson..=) "voided_at" (invoicesStatusTransitionsVoidedAt obj))))
instance Data.Aeson.Types.FromJSON.FromJSON InvoicesStatusTransitions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesStatusTransitions" (\obj -> (((GHC.Base.pure InvoicesStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "finalized_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "marked_uncollectible_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paid_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voided_at"))