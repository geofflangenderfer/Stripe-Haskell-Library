{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema TransferReversal
module StripeAPI.Types.TransferReversal where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.BalanceTransaction
import {-# SOURCE #-} StripeAPI.Types.Refund
import {-# SOURCE #-} StripeAPI.Types.Transfer
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.transfer_reversal@ in the specification.
--
-- [Stripe Connect](https:\/\/stripe.com\/docs\/connect) platforms can reverse transfers made to a
-- connected account, either entirely or partially, and can also specify whether
-- to refund any related application fees. Transfer reversals add to the
-- platform\'s balance and subtract from the destination account\'s balance.
--
-- Reversing a transfer that was made for a [destination
-- charge](\/docs\/connect\/destination-charges) is allowed only up to the amount of
-- the charge. It is possible to reverse a
-- [transfer_group](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#transfer-options)
-- transfer only if the destination account has enough balance to cover the
-- reversal.
--
-- Related guide: [Reversing Transfers](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#reversing-transfers).
data TransferReversal
  = TransferReversal
      { -- | amount: Amount, in %s.
        transferReversalAmount :: GHC.Types.Int,
        -- | balance_transaction: Balance transaction that describes the impact on your account balance.
        transferReversalBalanceTransaction :: (GHC.Maybe.Maybe TransferReversalBalanceTransaction'Variants),
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        transferReversalCreated :: GHC.Types.Int,
        -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
        transferReversalCurrency :: Data.Text.Internal.Text,
        -- | destination_payment_refund: Linked payment refund for the transfer reversal.
        transferReversalDestinationPaymentRefund :: (GHC.Maybe.Maybe TransferReversalDestinationPaymentRefund'Variants),
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        transferReversalId :: Data.Text.Internal.Text,
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        transferReversalMetadata :: Data.Aeson.Types.Internal.Object,
        -- | source_refund: ID of the refund responsible for the transfer reversal.
        transferReversalSourceRefund :: (GHC.Maybe.Maybe TransferReversalSourceRefund'Variants),
        -- | transfer: ID of the transfer that was reversed.
        transferReversalTransfer :: TransferReversalTransfer'Variants
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TransferReversal where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= transferReversalAmount obj : "balance_transaction" Data.Aeson.Types.ToJSON..= transferReversalBalanceTransaction obj : "created" Data.Aeson.Types.ToJSON..= transferReversalCreated obj : "currency" Data.Aeson.Types.ToJSON..= transferReversalCurrency obj : "destination_payment_refund" Data.Aeson.Types.ToJSON..= transferReversalDestinationPaymentRefund obj : "id" Data.Aeson.Types.ToJSON..= transferReversalId obj : "metadata" Data.Aeson.Types.ToJSON..= transferReversalMetadata obj : "source_refund" Data.Aeson.Types.ToJSON..= transferReversalSourceRefund obj : "transfer" Data.Aeson.Types.ToJSON..= transferReversalTransfer obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "transfer_reversal" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= transferReversalAmount obj) GHC.Base.<> (("balance_transaction" Data.Aeson.Types.ToJSON..= transferReversalBalanceTransaction obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= transferReversalCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= transferReversalCurrency obj) GHC.Base.<> (("destination_payment_refund" Data.Aeson.Types.ToJSON..= transferReversalDestinationPaymentRefund obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= transferReversalId obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= transferReversalMetadata obj) GHC.Base.<> (("source_refund" Data.Aeson.Types.ToJSON..= transferReversalSourceRefund obj) GHC.Base.<> (("transfer" Data.Aeson.Types.ToJSON..= transferReversalTransfer obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "transfer_reversal"))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON TransferReversal where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TransferReversal" (\obj -> ((((((((GHC.Base.pure TransferReversal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination_payment_refund")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_refund")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transfer"))

-- | Create a new 'TransferReversal' with all required fields.
mkTransferReversal ::
  -- | 'transferReversalAmount'
  GHC.Types.Int ->
  -- | 'transferReversalCreated'
  GHC.Types.Int ->
  -- | 'transferReversalCurrency'
  Data.Text.Internal.Text ->
  -- | 'transferReversalId'
  Data.Text.Internal.Text ->
  -- | 'transferReversalMetadata'
  Data.Aeson.Types.Internal.Object ->
  -- | 'transferReversalTransfer'
  TransferReversalTransfer'Variants ->
  TransferReversal
mkTransferReversal transferReversalAmount transferReversalCreated transferReversalCurrency transferReversalId transferReversalMetadata transferReversalTransfer =
  TransferReversal
    { transferReversalAmount = transferReversalAmount,
      transferReversalBalanceTransaction = GHC.Maybe.Nothing,
      transferReversalCreated = transferReversalCreated,
      transferReversalCurrency = transferReversalCurrency,
      transferReversalDestinationPaymentRefund = GHC.Maybe.Nothing,
      transferReversalId = transferReversalId,
      transferReversalMetadata = transferReversalMetadata,
      transferReversalSourceRefund = GHC.Maybe.Nothing,
      transferReversalTransfer = transferReversalTransfer
    }

-- | Defines the oneOf schema located at @components.schemas.transfer_reversal.properties.balance_transaction.anyOf@ in the specification.
--
-- Balance transaction that describes the impact on your account balance.
data TransferReversalBalanceTransaction'Variants
  = TransferReversalBalanceTransaction'BalanceTransaction BalanceTransaction
  | TransferReversalBalanceTransaction'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TransferReversalBalanceTransaction'Variants where
  toJSON (TransferReversalBalanceTransaction'BalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (TransferReversalBalanceTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON TransferReversalBalanceTransaction'Variants where
  parseJSON val = case (TransferReversalBalanceTransaction'BalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TransferReversalBalanceTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.transfer_reversal.properties.destination_payment_refund.anyOf@ in the specification.
--
-- Linked payment refund for the transfer reversal.
data TransferReversalDestinationPaymentRefund'Variants
  = TransferReversalDestinationPaymentRefund'Refund Refund
  | TransferReversalDestinationPaymentRefund'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TransferReversalDestinationPaymentRefund'Variants where
  toJSON (TransferReversalDestinationPaymentRefund'Refund a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (TransferReversalDestinationPaymentRefund'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON TransferReversalDestinationPaymentRefund'Variants where
  parseJSON val = case (TransferReversalDestinationPaymentRefund'Refund Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TransferReversalDestinationPaymentRefund'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.transfer_reversal.properties.source_refund.anyOf@ in the specification.
--
-- ID of the refund responsible for the transfer reversal.
data TransferReversalSourceRefund'Variants
  = TransferReversalSourceRefund'Refund Refund
  | TransferReversalSourceRefund'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TransferReversalSourceRefund'Variants where
  toJSON (TransferReversalSourceRefund'Refund a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (TransferReversalSourceRefund'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON TransferReversalSourceRefund'Variants where
  parseJSON val = case (TransferReversalSourceRefund'Refund Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TransferReversalSourceRefund'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.transfer_reversal.properties.transfer.anyOf@ in the specification.
--
-- ID of the transfer that was reversed.
data TransferReversalTransfer'Variants
  = TransferReversalTransfer'Transfer Transfer
  | TransferReversalTransfer'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TransferReversalTransfer'Variants where
  toJSON (TransferReversalTransfer'Transfer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (TransferReversalTransfer'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON TransferReversalTransfer'Variants where
  parseJSON val = case (TransferReversalTransfer'Transfer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TransferReversalTransfer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a