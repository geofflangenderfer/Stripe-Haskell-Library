{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedCard
module StripeAPI.Types.DeletedCard where

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

-- | Defines the data type for the schema deleted_card
-- 
-- 
data DeletedCard = DeletedCard {
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deletedCardCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | deleted: Always true for a deleted object
  , deletedCardDeleted :: DeletedCardDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedCardId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedCardObject :: DeletedCardObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCard
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "currency" (deletedCardCurrency obj) : (Data.Aeson..=) "deleted" (deletedCardDeleted obj) : (Data.Aeson..=) "id" (deletedCardId obj) : (Data.Aeson..=) "object" (deletedCardObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "currency" (deletedCardCurrency obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (deletedCardDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedCardId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedCardObject obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedCard
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedCard" (\obj -> (((GHC.Base.pure DeletedCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_cardDeleted\'
-- 
-- Always true for a deleted object
data DeletedCardDeleted'
    = DeletedCardDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedCardDeleted'EnumTyped GHC.Types.Bool
    | DeletedCardDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCardDeleted'
    where toJSON (DeletedCardDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCardDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCardDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedCardDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedCardDeleted'EnumBoolTrue
                                          else DeletedCardDeleted'EnumOther val)
-- | Defines the enum schema deleted_cardObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedCardObject'
    = DeletedCardObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedCardObject'EnumTyped GHC.Base.String
    | DeletedCardObject'EnumStringCard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCardObject'
    where toJSON (DeletedCardObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCardObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCardObject'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
instance Data.Aeson.FromJSON DeletedCardObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                          then DeletedCardObject'EnumStringCard
                                          else DeletedCardObject'EnumOther val)