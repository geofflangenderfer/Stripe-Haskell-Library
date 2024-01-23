{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentNextActionKonbini
module StripeAPI.Types.PaymentIntentNextActionKonbini where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentNextActionKonbiniStores
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_intent_next_action_konbini@ in the specification.
data PaymentIntentNextActionKonbini = PaymentIntentNextActionKonbini
  { -- | expires_at: The timestamp at which the pending Konbini payment expires.
    paymentIntentNextActionKonbiniExpiresAt :: GHC.Types.Int,
    -- | hosted_voucher_url: The URL for the Konbini payment instructions page, which allows customers to view and print a Konbini voucher.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionKonbiniHostedVoucherUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | stores:
    paymentIntentNextActionKonbiniStores :: PaymentIntentNextActionKonbiniStores
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionKonbini where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["expires_at" Data.Aeson.Types.ToJSON..= paymentIntentNextActionKonbiniExpiresAt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_voucher_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionKonbiniHostedVoucherUrl obj) : ["stores" Data.Aeson.Types.ToJSON..= paymentIntentNextActionKonbiniStores obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["expires_at" Data.Aeson.Types.ToJSON..= paymentIntentNextActionKonbiniExpiresAt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_voucher_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionKonbiniHostedVoucherUrl obj) : ["stores" Data.Aeson.Types.ToJSON..= paymentIntentNextActionKonbiniStores obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionKonbini where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionKonbini" (\obj -> ((GHC.Base.pure PaymentIntentNextActionKonbini GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_voucher_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "stores"))

-- | Create a new 'PaymentIntentNextActionKonbini' with all required fields.
mkPaymentIntentNextActionKonbini ::
  -- | 'paymentIntentNextActionKonbiniExpiresAt'
  GHC.Types.Int ->
  -- | 'paymentIntentNextActionKonbiniStores'
  PaymentIntentNextActionKonbiniStores ->
  PaymentIntentNextActionKonbini
mkPaymentIntentNextActionKonbini paymentIntentNextActionKonbiniExpiresAt paymentIntentNextActionKonbiniStores =
  PaymentIntentNextActionKonbini
    { paymentIntentNextActionKonbiniExpiresAt = paymentIntentNextActionKonbiniExpiresAt,
      paymentIntentNextActionKonbiniHostedVoucherUrl = GHC.Maybe.Nothing,
      paymentIntentNextActionKonbiniStores = paymentIntentNextActionKonbiniStores
    }