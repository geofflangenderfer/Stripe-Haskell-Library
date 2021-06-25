{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CardIssuingAccountTermsOfService
module StripeAPI.Types.CardIssuingAccountTermsOfService where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.card_issuing_account_terms_of_service@ in the specification.
data CardIssuingAccountTermsOfService = CardIssuingAccountTermsOfService
  { -- | date: The Unix timestamp marking when the account representative accepted the service agreement.
    cardIssuingAccountTermsOfServiceDate :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | ip: The IP address from which the account representative accepted the service agreement.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardIssuingAccountTermsOfServiceIp :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_agent: The user agent of the browser from which the account representative accepted the service agreement.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    cardIssuingAccountTermsOfServiceUserAgent :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CardIssuingAccountTermsOfService where
  toJSON obj = Data.Aeson.Types.Internal.object ("date" Data.Aeson.Types.ToJSON..= cardIssuingAccountTermsOfServiceDate obj : "ip" Data.Aeson.Types.ToJSON..= cardIssuingAccountTermsOfServiceIp obj : "user_agent" Data.Aeson.Types.ToJSON..= cardIssuingAccountTermsOfServiceUserAgent obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("date" Data.Aeson.Types.ToJSON..= cardIssuingAccountTermsOfServiceDate obj) GHC.Base.<> (("ip" Data.Aeson.Types.ToJSON..= cardIssuingAccountTermsOfServiceIp obj) GHC.Base.<> ("user_agent" Data.Aeson.Types.ToJSON..= cardIssuingAccountTermsOfServiceUserAgent obj)))

instance Data.Aeson.Types.FromJSON.FromJSON CardIssuingAccountTermsOfService where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CardIssuingAccountTermsOfService" (\obj -> ((GHC.Base.pure CardIssuingAccountTermsOfService GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))

-- | Create a new 'CardIssuingAccountTermsOfService' with all required fields.
mkCardIssuingAccountTermsOfService :: CardIssuingAccountTermsOfService
mkCardIssuingAccountTermsOfService =
  CardIssuingAccountTermsOfService
    { cardIssuingAccountTermsOfServiceDate = GHC.Maybe.Nothing,
      cardIssuingAccountTermsOfServiceIp = GHC.Maybe.Nothing,
      cardIssuingAccountTermsOfServiceUserAgent = GHC.Maybe.Nothing
    }