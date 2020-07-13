{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema BalanceTransaction
module StripeAPI.Types.BalanceTransaction where

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
import {-# SOURCE #-} StripeAPI.Types.ApplicationFee
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.ConnectCollectionTransfer
import {-# SOURCE #-} StripeAPI.Types.Dispute
import {-# SOURCE #-} StripeAPI.Types.Fee
import {-# SOURCE #-} StripeAPI.Types.FeeRefund
import {-# SOURCE #-} StripeAPI.Types.Issuing_Authorization
import {-# SOURCE #-} StripeAPI.Types.Issuing_Transaction
import {-# SOURCE #-} StripeAPI.Types.Payout
import {-# SOURCE #-} StripeAPI.Types.PlatformTaxFee
import {-# SOURCE #-} StripeAPI.Types.Refund
import {-# SOURCE #-} StripeAPI.Types.ReserveTransaction
import {-# SOURCE #-} StripeAPI.Types.TaxDeductedAtSource
import {-# SOURCE #-} StripeAPI.Types.Topup
import {-# SOURCE #-} StripeAPI.Types.Transfer
import {-# SOURCE #-} StripeAPI.Types.TransferReversal
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.balance_transaction@ in the specification.
--
-- Balance transactions represent funds moving through your Stripe account.
-- They\'re created for every type of transaction that comes into or flows out of your Stripe account balance.
--
-- Related guide: [Balance Transaction Types](https:\/\/stripe.com\/docs\/reports\/balance-transaction-types).
data BalanceTransaction
  = BalanceTransaction
      { -- | amount: Gross amount of the transaction, in %s.
        balanceTransactionAmount :: GHC.Types.Int,
        -- | available_on: The date the transaction\'s net funds will become available in the Stripe balance.
        balanceTransactionAvailableOn :: GHC.Types.Int,
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        balanceTransactionCreated :: GHC.Types.Int,
        -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
        balanceTransactionCurrency :: Data.Text.Internal.Text,
        -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        balanceTransactionDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | exchange_rate: The exchange rate used, if applicable, for this transaction. Specifically, if money was converted from currency A to currency B, then the \`amount\` in currency A, times \`exchange_rate\`, would be the \`amount\` in currency B. For example, suppose you charged a customer 10.00 EUR. Then the PaymentIntent\'s \`amount\` would be \`1000\` and \`currency\` would be \`eur\`. Suppose this was converted into 12.34 USD in your Stripe account. Then the BalanceTransaction\'s \`amount\` would be \`1234\`, \`currency\` would be \`usd\`, and \`exchange_rate\` would be \`1.234\`.
        balanceTransactionExchangeRate :: (GHC.Maybe.Maybe GHC.Types.Double),
        -- | fee: Fees (in %s) paid for this transaction.
        balanceTransactionFee :: GHC.Types.Int,
        -- | fee_details: Detailed breakdown of fees (in %s) paid for this transaction.
        balanceTransactionFeeDetails :: ([Fee]),
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        balanceTransactionId :: Data.Text.Internal.Text,
        -- | net: Net amount of the transaction, in %s.
        balanceTransactionNet :: GHC.Types.Int,
        -- | reporting_category: [Learn more](https:\/\/stripe.com\/docs\/reports\/reporting-categories) about how reporting categories can help you understand balance transactions from an accounting perspective.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        balanceTransactionReportingCategory :: Data.Text.Internal.Text,
        -- | source: The Stripe object to which this transaction is related.
        balanceTransactionSource :: (GHC.Maybe.Maybe BalanceTransactionSource'Variants),
        -- | status: If the transaction\'s net funds are available in the Stripe balance yet. Either \`available\` or \`pending\`.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        balanceTransactionStatus :: Data.Text.Internal.Text,
        -- | type: Transaction type: \`adjustment\`, \`advance\`, \`advance_funding\`, \`application_fee\`, \`application_fee_refund\`, \`charge\`, \`connect_collection_transfer\`, \`issuing_authorization_hold\`, \`issuing_authorization_release\`, \`issuing_transaction\`, \`payment\`, \`payment_failure_refund\`, \`payment_refund\`, \`payout\`, \`payout_cancel\`, \`payout_failure\`, \`refund\`, \`refund_failure\`, \`reserve_transaction\`, \`reserved_funds\`, \`stripe_fee\`, \`stripe_fx_fee\`, \`tax_fee\`, \`topup\`, \`topup_reversal\`, \`transfer\`, \`transfer_cancel\`, \`transfer_failure\`, or \`transfer_refund\`. [Learn more](https:\/\/stripe.com\/docs\/reports\/balance-transaction-types) about balance transaction types and what they represent. If you are looking to classify transactions for accounting purposes, you might want to consider \`reporting_category\` instead.
        balanceTransactionType :: BalanceTransactionType'
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BalanceTransaction where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= balanceTransactionAmount obj : "available_on" Data.Aeson.Types.ToJSON..= balanceTransactionAvailableOn obj : "created" Data.Aeson.Types.ToJSON..= balanceTransactionCreated obj : "currency" Data.Aeson.Types.ToJSON..= balanceTransactionCurrency obj : "description" Data.Aeson.Types.ToJSON..= balanceTransactionDescription obj : "exchange_rate" Data.Aeson.Types.ToJSON..= balanceTransactionExchangeRate obj : "fee" Data.Aeson.Types.ToJSON..= balanceTransactionFee obj : "fee_details" Data.Aeson.Types.ToJSON..= balanceTransactionFeeDetails obj : "id" Data.Aeson.Types.ToJSON..= balanceTransactionId obj : "net" Data.Aeson.Types.ToJSON..= balanceTransactionNet obj : "reporting_category" Data.Aeson.Types.ToJSON..= balanceTransactionReportingCategory obj : "source" Data.Aeson.Types.ToJSON..= balanceTransactionSource obj : "status" Data.Aeson.Types.ToJSON..= balanceTransactionStatus obj : "type" Data.Aeson.Types.ToJSON..= balanceTransactionType obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "balance_transaction" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= balanceTransactionAmount obj) GHC.Base.<> (("available_on" Data.Aeson.Types.ToJSON..= balanceTransactionAvailableOn obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= balanceTransactionCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= balanceTransactionCurrency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= balanceTransactionDescription obj) GHC.Base.<> (("exchange_rate" Data.Aeson.Types.ToJSON..= balanceTransactionExchangeRate obj) GHC.Base.<> (("fee" Data.Aeson.Types.ToJSON..= balanceTransactionFee obj) GHC.Base.<> (("fee_details" Data.Aeson.Types.ToJSON..= balanceTransactionFeeDetails obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= balanceTransactionId obj) GHC.Base.<> (("net" Data.Aeson.Types.ToJSON..= balanceTransactionNet obj) GHC.Base.<> (("reporting_category" Data.Aeson.Types.ToJSON..= balanceTransactionReportingCategory obj) GHC.Base.<> (("source" Data.Aeson.Types.ToJSON..= balanceTransactionSource obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= balanceTransactionStatus obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= balanceTransactionType obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "balance_transaction")))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON BalanceTransaction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BalanceTransaction" (\obj -> (((((((((((((GHC.Base.pure BalanceTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "available_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exchange_rate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fee_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "net")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reporting_category")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'BalanceTransaction' with all required fields.
mkBalanceTransaction ::
  -- | 'balanceTransactionAmount'
  GHC.Types.Int ->
  -- | 'balanceTransactionAvailableOn'
  GHC.Types.Int ->
  -- | 'balanceTransactionCreated'
  GHC.Types.Int ->
  -- | 'balanceTransactionCurrency'
  Data.Text.Internal.Text ->
  -- | 'balanceTransactionFee'
  GHC.Types.Int ->
  -- | 'balanceTransactionFeeDetails'
  [Fee] ->
  -- | 'balanceTransactionId'
  Data.Text.Internal.Text ->
  -- | 'balanceTransactionNet'
  GHC.Types.Int ->
  -- | 'balanceTransactionReportingCategory'
  Data.Text.Internal.Text ->
  -- | 'balanceTransactionStatus'
  Data.Text.Internal.Text ->
  -- | 'balanceTransactionType'
  BalanceTransactionType' ->
  BalanceTransaction
mkBalanceTransaction balanceTransactionAmount balanceTransactionAvailableOn balanceTransactionCreated balanceTransactionCurrency balanceTransactionFee balanceTransactionFeeDetails balanceTransactionId balanceTransactionNet balanceTransactionReportingCategory balanceTransactionStatus balanceTransactionType =
  BalanceTransaction
    { balanceTransactionAmount = balanceTransactionAmount,
      balanceTransactionAvailableOn = balanceTransactionAvailableOn,
      balanceTransactionCreated = balanceTransactionCreated,
      balanceTransactionCurrency = balanceTransactionCurrency,
      balanceTransactionDescription = GHC.Maybe.Nothing,
      balanceTransactionExchangeRate = GHC.Maybe.Nothing,
      balanceTransactionFee = balanceTransactionFee,
      balanceTransactionFeeDetails = balanceTransactionFeeDetails,
      balanceTransactionId = balanceTransactionId,
      balanceTransactionNet = balanceTransactionNet,
      balanceTransactionReportingCategory = balanceTransactionReportingCategory,
      balanceTransactionSource = GHC.Maybe.Nothing,
      balanceTransactionStatus = balanceTransactionStatus,
      balanceTransactionType = balanceTransactionType
    }

-- | Defines the oneOf schema located at @components.schemas.balance_transaction.properties.source.anyOf@ in the specification.
--
-- The Stripe object to which this transaction is related.
data BalanceTransactionSource'Variants
  = BalanceTransactionSource'ApplicationFee ApplicationFee
  | BalanceTransactionSource'Charge Charge
  | BalanceTransactionSource'ConnectCollectionTransfer ConnectCollectionTransfer
  | BalanceTransactionSource'Dispute Dispute
  | BalanceTransactionSource'FeeRefund FeeRefund
  | BalanceTransactionSource'Issuing'authorization Issuing'authorization
  | BalanceTransactionSource'Issuing'transaction Issuing'transaction
  | BalanceTransactionSource'Payout Payout
  | BalanceTransactionSource'PlatformTaxFee PlatformTaxFee
  | BalanceTransactionSource'Refund Refund
  | BalanceTransactionSource'ReserveTransaction ReserveTransaction
  | BalanceTransactionSource'TaxDeductedAtSource TaxDeductedAtSource
  | BalanceTransactionSource'Topup Topup
  | BalanceTransactionSource'Transfer Transfer
  | BalanceTransactionSource'TransferReversal TransferReversal
  | BalanceTransactionSource'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON BalanceTransactionSource'Variants where
  toJSON (BalanceTransactionSource'ApplicationFee a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Charge a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'ConnectCollectionTransfer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Dispute a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'FeeRefund a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Issuing'authorization a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Issuing'transaction a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Payout a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'PlatformTaxFee a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Refund a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'ReserveTransaction a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'TaxDeductedAtSource a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Topup a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Transfer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'TransferReversal a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (BalanceTransactionSource'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON BalanceTransactionSource'Variants where
  parseJSON val = case (BalanceTransactionSource'ApplicationFee Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Charge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'ConnectCollectionTransfer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Dispute Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'FeeRefund Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Issuing'authorization Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Issuing'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Payout Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'PlatformTaxFee Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Refund Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'ReserveTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'TaxDeductedAtSource Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Topup Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Transfer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'TransferReversal Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BalanceTransactionSource'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched"))))))))))))))) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.balance_transaction.properties.type@ in the specification.
--
-- Transaction type: \`adjustment\`, \`advance\`, \`advance_funding\`, \`application_fee\`, \`application_fee_refund\`, \`charge\`, \`connect_collection_transfer\`, \`issuing_authorization_hold\`, \`issuing_authorization_release\`, \`issuing_transaction\`, \`payment\`, \`payment_failure_refund\`, \`payment_refund\`, \`payout\`, \`payout_cancel\`, \`payout_failure\`, \`refund\`, \`refund_failure\`, \`reserve_transaction\`, \`reserved_funds\`, \`stripe_fee\`, \`stripe_fx_fee\`, \`tax_fee\`, \`topup\`, \`topup_reversal\`, \`transfer\`, \`transfer_cancel\`, \`transfer_failure\`, or \`transfer_refund\`. [Learn more](https:\/\/stripe.com\/docs\/reports\/balance-transaction-types) about balance transaction types and what they represent. If you are looking to classify transactions for accounting purposes, you might want to consider \`reporting_category\` instead.
data BalanceTransactionType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    BalanceTransactionType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    BalanceTransactionType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"adjustment"@
    BalanceTransactionType'EnumAdjustment
  | -- | Represents the JSON value @"advance"@
    BalanceTransactionType'EnumAdvance
  | -- | Represents the JSON value @"advance_funding"@
    BalanceTransactionType'EnumAdvanceFunding
  | -- | Represents the JSON value @"application_fee"@
    BalanceTransactionType'EnumApplicationFee
  | -- | Represents the JSON value @"application_fee_refund"@
    BalanceTransactionType'EnumApplicationFeeRefund
  | -- | Represents the JSON value @"charge"@
    BalanceTransactionType'EnumCharge
  | -- | Represents the JSON value @"connect_collection_transfer"@
    BalanceTransactionType'EnumConnectCollectionTransfer
  | -- | Represents the JSON value @"issuing_authorization_hold"@
    BalanceTransactionType'EnumIssuingAuthorizationHold
  | -- | Represents the JSON value @"issuing_authorization_release"@
    BalanceTransactionType'EnumIssuingAuthorizationRelease
  | -- | Represents the JSON value @"issuing_transaction"@
    BalanceTransactionType'EnumIssuingTransaction
  | -- | Represents the JSON value @"payment"@
    BalanceTransactionType'EnumPayment
  | -- | Represents the JSON value @"payment_failure_refund"@
    BalanceTransactionType'EnumPaymentFailureRefund
  | -- | Represents the JSON value @"payment_refund"@
    BalanceTransactionType'EnumPaymentRefund
  | -- | Represents the JSON value @"payout"@
    BalanceTransactionType'EnumPayout
  | -- | Represents the JSON value @"payout_cancel"@
    BalanceTransactionType'EnumPayoutCancel
  | -- | Represents the JSON value @"payout_failure"@
    BalanceTransactionType'EnumPayoutFailure
  | -- | Represents the JSON value @"refund"@
    BalanceTransactionType'EnumRefund
  | -- | Represents the JSON value @"refund_failure"@
    BalanceTransactionType'EnumRefundFailure
  | -- | Represents the JSON value @"reserve_transaction"@
    BalanceTransactionType'EnumReserveTransaction
  | -- | Represents the JSON value @"reserved_funds"@
    BalanceTransactionType'EnumReservedFunds
  | -- | Represents the JSON value @"stripe_fee"@
    BalanceTransactionType'EnumStripeFee
  | -- | Represents the JSON value @"stripe_fx_fee"@
    BalanceTransactionType'EnumStripeFxFee
  | -- | Represents the JSON value @"tax_fee"@
    BalanceTransactionType'EnumTaxFee
  | -- | Represents the JSON value @"topup"@
    BalanceTransactionType'EnumTopup
  | -- | Represents the JSON value @"topup_reversal"@
    BalanceTransactionType'EnumTopupReversal
  | -- | Represents the JSON value @"transfer"@
    BalanceTransactionType'EnumTransfer
  | -- | Represents the JSON value @"transfer_cancel"@
    BalanceTransactionType'EnumTransferCancel
  | -- | Represents the JSON value @"transfer_failure"@
    BalanceTransactionType'EnumTransferFailure
  | -- | Represents the JSON value @"transfer_refund"@
    BalanceTransactionType'EnumTransferRefund
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON BalanceTransactionType' where
  toJSON (BalanceTransactionType'Other val) = val
  toJSON (BalanceTransactionType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (BalanceTransactionType'EnumAdjustment) = "adjustment"
  toJSON (BalanceTransactionType'EnumAdvance) = "advance"
  toJSON (BalanceTransactionType'EnumAdvanceFunding) = "advance_funding"
  toJSON (BalanceTransactionType'EnumApplicationFee) = "application_fee"
  toJSON (BalanceTransactionType'EnumApplicationFeeRefund) = "application_fee_refund"
  toJSON (BalanceTransactionType'EnumCharge) = "charge"
  toJSON (BalanceTransactionType'EnumConnectCollectionTransfer) = "connect_collection_transfer"
  toJSON (BalanceTransactionType'EnumIssuingAuthorizationHold) = "issuing_authorization_hold"
  toJSON (BalanceTransactionType'EnumIssuingAuthorizationRelease) = "issuing_authorization_release"
  toJSON (BalanceTransactionType'EnumIssuingTransaction) = "issuing_transaction"
  toJSON (BalanceTransactionType'EnumPayment) = "payment"
  toJSON (BalanceTransactionType'EnumPaymentFailureRefund) = "payment_failure_refund"
  toJSON (BalanceTransactionType'EnumPaymentRefund) = "payment_refund"
  toJSON (BalanceTransactionType'EnumPayout) = "payout"
  toJSON (BalanceTransactionType'EnumPayoutCancel) = "payout_cancel"
  toJSON (BalanceTransactionType'EnumPayoutFailure) = "payout_failure"
  toJSON (BalanceTransactionType'EnumRefund) = "refund"
  toJSON (BalanceTransactionType'EnumRefundFailure) = "refund_failure"
  toJSON (BalanceTransactionType'EnumReserveTransaction) = "reserve_transaction"
  toJSON (BalanceTransactionType'EnumReservedFunds) = "reserved_funds"
  toJSON (BalanceTransactionType'EnumStripeFee) = "stripe_fee"
  toJSON (BalanceTransactionType'EnumStripeFxFee) = "stripe_fx_fee"
  toJSON (BalanceTransactionType'EnumTaxFee) = "tax_fee"
  toJSON (BalanceTransactionType'EnumTopup) = "topup"
  toJSON (BalanceTransactionType'EnumTopupReversal) = "topup_reversal"
  toJSON (BalanceTransactionType'EnumTransfer) = "transfer"
  toJSON (BalanceTransactionType'EnumTransferCancel) = "transfer_cancel"
  toJSON (BalanceTransactionType'EnumTransferFailure) = "transfer_failure"
  toJSON (BalanceTransactionType'EnumTransferRefund) = "transfer_refund"

instance Data.Aeson.Types.FromJSON.FromJSON BalanceTransactionType' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "adjustment" -> BalanceTransactionType'EnumAdjustment
            | val GHC.Classes.== "advance" -> BalanceTransactionType'EnumAdvance
            | val GHC.Classes.== "advance_funding" -> BalanceTransactionType'EnumAdvanceFunding
            | val GHC.Classes.== "application_fee" -> BalanceTransactionType'EnumApplicationFee
            | val GHC.Classes.== "application_fee_refund" -> BalanceTransactionType'EnumApplicationFeeRefund
            | val GHC.Classes.== "charge" -> BalanceTransactionType'EnumCharge
            | val GHC.Classes.== "connect_collection_transfer" -> BalanceTransactionType'EnumConnectCollectionTransfer
            | val GHC.Classes.== "issuing_authorization_hold" -> BalanceTransactionType'EnumIssuingAuthorizationHold
            | val GHC.Classes.== "issuing_authorization_release" -> BalanceTransactionType'EnumIssuingAuthorizationRelease
            | val GHC.Classes.== "issuing_transaction" -> BalanceTransactionType'EnumIssuingTransaction
            | val GHC.Classes.== "payment" -> BalanceTransactionType'EnumPayment
            | val GHC.Classes.== "payment_failure_refund" -> BalanceTransactionType'EnumPaymentFailureRefund
            | val GHC.Classes.== "payment_refund" -> BalanceTransactionType'EnumPaymentRefund
            | val GHC.Classes.== "payout" -> BalanceTransactionType'EnumPayout
            | val GHC.Classes.== "payout_cancel" -> BalanceTransactionType'EnumPayoutCancel
            | val GHC.Classes.== "payout_failure" -> BalanceTransactionType'EnumPayoutFailure
            | val GHC.Classes.== "refund" -> BalanceTransactionType'EnumRefund
            | val GHC.Classes.== "refund_failure" -> BalanceTransactionType'EnumRefundFailure
            | val GHC.Classes.== "reserve_transaction" -> BalanceTransactionType'EnumReserveTransaction
            | val GHC.Classes.== "reserved_funds" -> BalanceTransactionType'EnumReservedFunds
            | val GHC.Classes.== "stripe_fee" -> BalanceTransactionType'EnumStripeFee
            | val GHC.Classes.== "stripe_fx_fee" -> BalanceTransactionType'EnumStripeFxFee
            | val GHC.Classes.== "tax_fee" -> BalanceTransactionType'EnumTaxFee
            | val GHC.Classes.== "topup" -> BalanceTransactionType'EnumTopup
            | val GHC.Classes.== "topup_reversal" -> BalanceTransactionType'EnumTopupReversal
            | val GHC.Classes.== "transfer" -> BalanceTransactionType'EnumTransfer
            | val GHC.Classes.== "transfer_cancel" -> BalanceTransactionType'EnumTransferCancel
            | val GHC.Classes.== "transfer_failure" -> BalanceTransactionType'EnumTransferFailure
            | val GHC.Classes.== "transfer_refund" -> BalanceTransactionType'EnumTransferRefund
            | GHC.Base.otherwise -> BalanceTransactionType'Other val
      )