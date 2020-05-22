{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema IssuingCardholderCompany
module StripeAPI.Types.IssuingCardholderCompany where

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

-- | Defines the data type for the schema issuing_cardholder_company
-- 
-- 
data IssuingCardholderCompany = IssuingCardholderCompany {
  -- | tax_id_provided: Whether the company\'s business ID number was provided.
  issuingCardholderCompanyTaxIdProvided :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardholderCompany
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "tax_id_provided" (issuingCardholderCompanyTaxIdProvided obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "tax_id_provided" (issuingCardholderCompanyTaxIdProvided obj))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderCompany
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderCompany" (\obj -> GHC.Base.pure IssuingCardholderCompany GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_id_provided"))