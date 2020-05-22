{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema CountrySpecVerificationFields
module StripeAPI.Types.CountrySpecVerificationFields where

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
import StripeAPI.Types.CountrySpecVerificationFieldDetails

-- | Defines the data type for the schema country_spec_verification_fields
-- 
-- 
data CountrySpecVerificationFields = CountrySpecVerificationFields {
  -- | company: 
  countrySpecVerificationFieldsCompany :: CountrySpecVerificationFieldDetails
  -- | individual: 
  , countrySpecVerificationFieldsIndividual :: CountrySpecVerificationFieldDetails
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CountrySpecVerificationFields
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "company" (countrySpecVerificationFieldsCompany obj) : (Data.Aeson..=) "individual" (countrySpecVerificationFieldsIndividual obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "company" (countrySpecVerificationFieldsCompany obj) GHC.Base.<> (Data.Aeson..=) "individual" (countrySpecVerificationFieldsIndividual obj))
instance Data.Aeson.Types.FromJSON.FromJSON CountrySpecVerificationFields
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpecVerificationFields" (\obj -> (GHC.Base.pure CountrySpecVerificationFields GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "individual"))