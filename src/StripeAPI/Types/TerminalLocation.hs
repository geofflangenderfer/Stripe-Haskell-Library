{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema TerminalLocation
module StripeAPI.Types.TerminalLocation where

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
import StripeAPI.Types.Address

-- | Defines the data type for the schema terminal.location
-- 
-- A Location represents a grouping of readers.
-- 
-- Related guide: [Fleet Management](https:\/\/stripe.com\/docs\/terminal\/readers\/fleet-management\#create).
data Terminal'location = Terminal'location {
  -- | address: 
  terminal'locationAddress :: Address
  -- | display_name: The display name of the location.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'locationDisplayName :: GHC.Base.String
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'locationId :: GHC.Base.String
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , terminal'locationLivemode :: GHC.Types.Bool
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , terminal'locationMetadata :: Terminal'locationMetadata'
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , terminal'locationObject :: Terminal'locationObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'location
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (terminal'locationAddress obj) : (Data.Aeson..=) "display_name" (terminal'locationDisplayName obj) : (Data.Aeson..=) "id" (terminal'locationId obj) : (Data.Aeson..=) "livemode" (terminal'locationLivemode obj) : (Data.Aeson..=) "metadata" (terminal'locationMetadata obj) : (Data.Aeson..=) "object" (terminal'locationObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (terminal'locationAddress obj) GHC.Base.<> ((Data.Aeson..=) "display_name" (terminal'locationDisplayName obj) GHC.Base.<> ((Data.Aeson..=) "id" (terminal'locationId obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (terminal'locationLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (terminal'locationMetadata obj) GHC.Base.<> (Data.Aeson..=) "object" (terminal'locationObject obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'location
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'location" (\obj -> (((((GHC.Base.pure Terminal'location GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the data type for the schema terminal.locationMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data Terminal'locationMetadata' = Terminal'locationMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'locationMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'locationMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'locationMetadata'" (\obj -> GHC.Base.pure Terminal'locationMetadata')
-- | Defines the enum schema terminal.locationObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Terminal'locationObject'
    = Terminal'locationObject'EnumOther Data.Aeson.Types.Internal.Value
    | Terminal'locationObject'EnumTyped GHC.Base.String
    | Terminal'locationObject'EnumStringTerminal'location
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'locationObject'
    where toJSON (Terminal'locationObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'locationObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'locationObject'EnumStringTerminal'location) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.location"
instance Data.Aeson.FromJSON Terminal'locationObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.location")
                                          then Terminal'locationObject'EnumStringTerminal'location
                                          else Terminal'locationObject'EnumOther val)