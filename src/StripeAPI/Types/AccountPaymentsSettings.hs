{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountPaymentsSettings
module StripeAPI.Types.AccountPaymentsSettings where

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

-- | Defines the data type for the schema account_payments_settings
-- 
-- 
data AccountPaymentsSettings = AccountPaymentsSettings {
  -- | statement_descriptor: The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic \`statement_descriptor\` specified on the charge.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  accountPaymentsSettingsStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_kana: The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountPaymentsSettingsStatementDescriptorKana :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_kanji: The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountPaymentsSettingsStatementDescriptorKanji :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountPaymentsSettings
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "statement_descriptor" (accountPaymentsSettingsStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_kana" (accountPaymentsSettingsStatementDescriptorKana obj) : (Data.Aeson..=) "statement_descriptor_kanji" (accountPaymentsSettingsStatementDescriptorKanji obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "statement_descriptor" (accountPaymentsSettingsStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_kana" (accountPaymentsSettingsStatementDescriptorKana obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor_kanji" (accountPaymentsSettingsStatementDescriptorKanji obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountPaymentsSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountPaymentsSettings" (\obj -> ((GHC.Base.pure AccountPaymentsSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_kanji"))