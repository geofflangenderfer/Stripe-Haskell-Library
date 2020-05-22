{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentMethodDetailsEps
module StripeAPI.Types.PaymentMethodDetailsEps where

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

-- | Defines the data type for the schema payment_method_details_eps
-- 
-- 
data PaymentMethodDetailsEps = PaymentMethodDetailsEps {
  -- | verified_name: Owner\'s verified full name. Values are verified or provided by EPS directly
  -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodDetailsEpsVerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsEps
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "verified_name" (paymentMethodDetailsEpsVerifiedName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "verified_name" (paymentMethodDetailsEpsVerifiedName obj))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsEps
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsEps" (\obj -> GHC.Base.pure PaymentMethodDetailsEps GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))