{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema InvoiceSettingCustomField
module StripeAPI.Types.InvoiceSettingCustomField where

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

-- | Defines the data type for the schema invoice_setting_custom_field
-- 
-- 
data InvoiceSettingCustomField = InvoiceSettingCustomField {
  -- | name: The name of the custom field.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  invoiceSettingCustomFieldName :: GHC.Base.String
  -- | value: The value of the custom field.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , invoiceSettingCustomFieldValue :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON InvoiceSettingCustomField
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (invoiceSettingCustomFieldName obj) : (Data.Aeson..=) "value" (invoiceSettingCustomFieldValue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (invoiceSettingCustomFieldName obj) GHC.Base.<> (Data.Aeson..=) "value" (invoiceSettingCustomFieldValue obj))
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceSettingCustomField
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceSettingCustomField" (\obj -> (GHC.Base.pure InvoiceSettingCustomField GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))