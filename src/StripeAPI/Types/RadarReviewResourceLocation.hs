{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema RadarReviewResourceLocation
module StripeAPI.Types.RadarReviewResourceLocation where

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

-- | Defines the data type for the schema radar_review_resource_location
-- 
-- 
data RadarReviewResourceLocation = RadarReviewResourceLocation {
  -- | city: The city where the payment originated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  radarReviewResourceLocationCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country: Two-letter ISO code representing the country where the payment originated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radarReviewResourceLocationCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | latitude: The geographic latitude where the payment originated.
  , radarReviewResourceLocationLatitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | longitude: The geographic longitude where the payment originated.
  , radarReviewResourceLocationLongitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | region: The state\/county\/province\/region where the payment originated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radarReviewResourceLocationRegion :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON RadarReviewResourceLocation
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (radarReviewResourceLocationCity obj) : (Data.Aeson..=) "country" (radarReviewResourceLocationCountry obj) : (Data.Aeson..=) "latitude" (radarReviewResourceLocationLatitude obj) : (Data.Aeson..=) "longitude" (radarReviewResourceLocationLongitude obj) : (Data.Aeson..=) "region" (radarReviewResourceLocationRegion obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (radarReviewResourceLocationCity obj) GHC.Base.<> ((Data.Aeson..=) "country" (radarReviewResourceLocationCountry obj) GHC.Base.<> ((Data.Aeson..=) "latitude" (radarReviewResourceLocationLatitude obj) GHC.Base.<> ((Data.Aeson..=) "longitude" (radarReviewResourceLocationLongitude obj) GHC.Base.<> (Data.Aeson..=) "region" (radarReviewResourceLocationRegion obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON RadarReviewResourceLocation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RadarReviewResourceLocation" (\obj -> ((((GHC.Base.pure RadarReviewResourceLocation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region"))