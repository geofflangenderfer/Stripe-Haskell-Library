{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PortalSubscriptionUpdate
module StripeAPI.Types.PortalSubscriptionUpdate where

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
import {-# SOURCE #-} StripeAPI.Types.PortalSubscriptionUpdateProduct
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.portal_subscription_update@ in the specification.
data PortalSubscriptionUpdate = PortalSubscriptionUpdate
  { -- | default_allowed_updates: The types of subscription updates that are supported for items listed in the \`products\` attribute. When empty, subscriptions are not updateable.
    portalSubscriptionUpdateDefaultAllowedUpdates :: ([PortalSubscriptionUpdateDefaultAllowedUpdates']),
    -- | enabled: Whether the feature is enabled.
    portalSubscriptionUpdateEnabled :: GHC.Types.Bool,
    -- | products: The list of products that support subscription updates.
    portalSubscriptionUpdateProducts :: (GHC.Maybe.Maybe ([PortalSubscriptionUpdateProduct])),
    -- | proration_behavior: Determines how to handle prorations resulting from subscription updates. Valid values are \`none\`, \`create_prorations\`, and \`always_invoice\`.
    portalSubscriptionUpdateProrationBehavior :: PortalSubscriptionUpdateProrationBehavior'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PortalSubscriptionUpdate where
  toJSON obj = Data.Aeson.Types.Internal.object ("default_allowed_updates" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateDefaultAllowedUpdates obj : "enabled" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateEnabled obj : "products" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateProducts obj : "proration_behavior" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateProrationBehavior obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("default_allowed_updates" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateDefaultAllowedUpdates obj) GHC.Base.<> (("enabled" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateEnabled obj) GHC.Base.<> (("products" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateProducts obj) GHC.Base.<> ("proration_behavior" Data.Aeson.Types.ToJSON..= portalSubscriptionUpdateProrationBehavior obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PortalSubscriptionUpdate where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalSubscriptionUpdate" (\obj -> (((GHC.Base.pure PortalSubscriptionUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "default_allowed_updates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "products")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "proration_behavior"))

-- | Create a new 'PortalSubscriptionUpdate' with all required fields.
mkPortalSubscriptionUpdate ::
  -- | 'portalSubscriptionUpdateDefaultAllowedUpdates'
  [PortalSubscriptionUpdateDefaultAllowedUpdates'] ->
  -- | 'portalSubscriptionUpdateEnabled'
  GHC.Types.Bool ->
  -- | 'portalSubscriptionUpdateProrationBehavior'
  PortalSubscriptionUpdateProrationBehavior' ->
  PortalSubscriptionUpdate
mkPortalSubscriptionUpdate portalSubscriptionUpdateDefaultAllowedUpdates portalSubscriptionUpdateEnabled portalSubscriptionUpdateProrationBehavior =
  PortalSubscriptionUpdate
    { portalSubscriptionUpdateDefaultAllowedUpdates = portalSubscriptionUpdateDefaultAllowedUpdates,
      portalSubscriptionUpdateEnabled = portalSubscriptionUpdateEnabled,
      portalSubscriptionUpdateProducts = GHC.Maybe.Nothing,
      portalSubscriptionUpdateProrationBehavior = portalSubscriptionUpdateProrationBehavior
    }

-- | Defines the enum schema located at @components.schemas.portal_subscription_update.properties.default_allowed_updates.items@ in the specification.
data PortalSubscriptionUpdateDefaultAllowedUpdates'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PortalSubscriptionUpdateDefaultAllowedUpdates'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PortalSubscriptionUpdateDefaultAllowedUpdates'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"price"@
    PortalSubscriptionUpdateDefaultAllowedUpdates'EnumPrice
  | -- | Represents the JSON value @"promotion_code"@
    PortalSubscriptionUpdateDefaultAllowedUpdates'EnumPromotionCode
  | -- | Represents the JSON value @"quantity"@
    PortalSubscriptionUpdateDefaultAllowedUpdates'EnumQuantity
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PortalSubscriptionUpdateDefaultAllowedUpdates' where
  toJSON (PortalSubscriptionUpdateDefaultAllowedUpdates'Other val) = val
  toJSON (PortalSubscriptionUpdateDefaultAllowedUpdates'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PortalSubscriptionUpdateDefaultAllowedUpdates'EnumPrice) = "price"
  toJSON (PortalSubscriptionUpdateDefaultAllowedUpdates'EnumPromotionCode) = "promotion_code"
  toJSON (PortalSubscriptionUpdateDefaultAllowedUpdates'EnumQuantity) = "quantity"

instance Data.Aeson.Types.FromJSON.FromJSON PortalSubscriptionUpdateDefaultAllowedUpdates' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "price" -> PortalSubscriptionUpdateDefaultAllowedUpdates'EnumPrice
            | val GHC.Classes.== "promotion_code" -> PortalSubscriptionUpdateDefaultAllowedUpdates'EnumPromotionCode
            | val GHC.Classes.== "quantity" -> PortalSubscriptionUpdateDefaultAllowedUpdates'EnumQuantity
            | GHC.Base.otherwise -> PortalSubscriptionUpdateDefaultAllowedUpdates'Other val
      )

-- | Defines the enum schema located at @components.schemas.portal_subscription_update.properties.proration_behavior@ in the specification.
--
-- Determines how to handle prorations resulting from subscription updates. Valid values are \`none\`, \`create_prorations\`, and \`always_invoice\`.
data PortalSubscriptionUpdateProrationBehavior'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PortalSubscriptionUpdateProrationBehavior'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PortalSubscriptionUpdateProrationBehavior'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"always_invoice"@
    PortalSubscriptionUpdateProrationBehavior'EnumAlwaysInvoice
  | -- | Represents the JSON value @"create_prorations"@
    PortalSubscriptionUpdateProrationBehavior'EnumCreateProrations
  | -- | Represents the JSON value @"none"@
    PortalSubscriptionUpdateProrationBehavior'EnumNone
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PortalSubscriptionUpdateProrationBehavior' where
  toJSON (PortalSubscriptionUpdateProrationBehavior'Other val) = val
  toJSON (PortalSubscriptionUpdateProrationBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PortalSubscriptionUpdateProrationBehavior'EnumAlwaysInvoice) = "always_invoice"
  toJSON (PortalSubscriptionUpdateProrationBehavior'EnumCreateProrations) = "create_prorations"
  toJSON (PortalSubscriptionUpdateProrationBehavior'EnumNone) = "none"

instance Data.Aeson.Types.FromJSON.FromJSON PortalSubscriptionUpdateProrationBehavior' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "always_invoice" -> PortalSubscriptionUpdateProrationBehavior'EnumAlwaysInvoice
            | val GHC.Classes.== "create_prorations" -> PortalSubscriptionUpdateProrationBehavior'EnumCreateProrations
            | val GHC.Classes.== "none" -> PortalSubscriptionUpdateProrationBehavior'EnumNone
            | GHC.Base.otherwise -> PortalSubscriptionUpdateProrationBehavior'Other val
      )