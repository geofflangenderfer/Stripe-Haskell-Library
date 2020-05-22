{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema IssuingAuthorizationMerchantData
module StripeAPI.Types.IssuingAuthorizationMerchantData where

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

-- | Defines the data type for the schema issuing_authorization_merchant_data
-- 
-- 
data IssuingAuthorizationMerchantData = IssuingAuthorizationMerchantData {
  -- | category: A categorization of the seller\'s type of business. See our [merchant categories guide](https:\/\/stripe.com\/docs\/issuing\/merchant-categories) for a list of possible values.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  issuingAuthorizationMerchantDataCategory :: GHC.Base.String
  -- | city: City where the seller is located
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationMerchantDataCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country: Country where the seller is located
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationMerchantDataCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name: Name of the seller
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationMerchantDataName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | network_id: Identifier assigned to the seller by the card brand
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationMerchantDataNetworkId :: GHC.Base.String
  -- | postal_code: Postal code where the seller is located
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationMerchantDataPostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state: State where the seller is located
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationMerchantDataState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | url: The url an online purchase was made from
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationMerchantDataUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationMerchantData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "category" (issuingAuthorizationMerchantDataCategory obj) : (Data.Aeson..=) "city" (issuingAuthorizationMerchantDataCity obj) : (Data.Aeson..=) "country" (issuingAuthorizationMerchantDataCountry obj) : (Data.Aeson..=) "name" (issuingAuthorizationMerchantDataName obj) : (Data.Aeson..=) "network_id" (issuingAuthorizationMerchantDataNetworkId obj) : (Data.Aeson..=) "postal_code" (issuingAuthorizationMerchantDataPostalCode obj) : (Data.Aeson..=) "state" (issuingAuthorizationMerchantDataState obj) : (Data.Aeson..=) "url" (issuingAuthorizationMerchantDataUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "category" (issuingAuthorizationMerchantDataCategory obj) GHC.Base.<> ((Data.Aeson..=) "city" (issuingAuthorizationMerchantDataCity obj) GHC.Base.<> ((Data.Aeson..=) "country" (issuingAuthorizationMerchantDataCountry obj) GHC.Base.<> ((Data.Aeson..=) "name" (issuingAuthorizationMerchantDataName obj) GHC.Base.<> ((Data.Aeson..=) "network_id" (issuingAuthorizationMerchantDataNetworkId obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (issuingAuthorizationMerchantDataPostalCode obj) GHC.Base.<> ((Data.Aeson..=) "state" (issuingAuthorizationMerchantDataState obj) GHC.Base.<> (Data.Aeson..=) "url" (issuingAuthorizationMerchantDataUrl obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationMerchantData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationMerchantData" (\obj -> (((((((GHC.Base.pure IssuingAuthorizationMerchantData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "category")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))