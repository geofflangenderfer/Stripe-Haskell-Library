{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema BalanceAmount
module StripeAPI.Types.BalanceAmount where

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
import StripeAPI.Types.BalanceAmountBySourceType

-- | Defines the data type for the schema balance_amount
-- 
-- 
data BalanceAmount = BalanceAmount {
  -- | amount: Balance amount.
  balanceAmountAmount :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , balanceAmountCurrency :: GHC.Base.String
  -- | source_types: 
  , balanceAmountSourceTypes :: (GHC.Maybe.Maybe BalanceAmountBySourceType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON BalanceAmount
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (balanceAmountAmount obj) : (Data.Aeson..=) "currency" (balanceAmountCurrency obj) : (Data.Aeson..=) "source_types" (balanceAmountSourceTypes obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (balanceAmountAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (balanceAmountCurrency obj) GHC.Base.<> (Data.Aeson..=) "source_types" (balanceAmountSourceTypes obj)))
instance Data.Aeson.Types.FromJSON.FromJSON BalanceAmount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BalanceAmount" (\obj -> ((GHC.Base.pure BalanceAmount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_types"))