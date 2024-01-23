{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DeletedTestHelpers_TestClock
module StripeAPI.Types.DeletedTestHelpers_TestClock where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.deleted_test_helpers.test_clock@ in the specification.
data DeletedTestHelpers'testClock = DeletedTestHelpers'testClock
  { -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deletedTestHelpers'testClockId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeletedTestHelpers'testClock where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= deletedTestHelpers'testClockId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "test_helpers.test_clock"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= deletedTestHelpers'testClockId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "test_helpers.test_clock"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DeletedTestHelpers'testClock where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedTestHelpers'testClock" (\obj -> GHC.Base.pure DeletedTestHelpers'testClock GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))

-- | Create a new 'DeletedTestHelpers'testClock' with all required fields.
mkDeletedTestHelpers'testClock ::
  -- | 'deletedTestHelpers'testClockId'
  Data.Text.Internal.Text ->
  DeletedTestHelpers'testClock
mkDeletedTestHelpers'testClock deletedTestHelpers'testClockId = DeletedTestHelpers'testClock {deletedTestHelpers'testClockId = deletedTestHelpers'testClockId}