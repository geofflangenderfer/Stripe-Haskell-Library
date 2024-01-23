{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postShippingRates
module StripeAPI.Operations.PostShippingRates where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/shipping_rates
--
-- \<p>Creates a new shipping rate object.\<\/p>
postShippingRates ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostShippingRatesRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostShippingRatesResponse)
postShippingRates body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostShippingRatesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostShippingRatesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ShippingRate
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostShippingRatesResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/shipping_rates") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostShippingRatesRequestBody = PostShippingRatesRequestBody
  { -- | delivery_estimate: The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
    postShippingRatesRequestBodyDeliveryEstimate :: (GHC.Maybe.Maybe PostShippingRatesRequestBodyDeliveryEstimate'),
    -- | display_name: The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
    --
    -- Constraints:
    --
    -- * Maximum length of 100
    postShippingRatesRequestBodyDisplayName :: Data.Text.Internal.Text,
    -- | expand: Specifies which fields in the response should be expanded.
    postShippingRatesRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | fixed_amount: Describes a fixed amount to charge for shipping. Must be present if type is \`fixed_amount\`.
    postShippingRatesRequestBodyFixedAmount :: (GHC.Maybe.Maybe PostShippingRatesRequestBodyFixedAmount'),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postShippingRatesRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | tax_behavior: Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of \`inclusive\`, \`exclusive\`, or \`unspecified\`.
    postShippingRatesRequestBodyTaxBehavior :: (GHC.Maybe.Maybe PostShippingRatesRequestBodyTaxBehavior'),
    -- | tax_code: A [tax code](https:\/\/stripe.com\/docs\/tax\/tax-categories) ID. The Shipping tax code is \`txcd_92010001\`.
    postShippingRatesRequestBodyTaxCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | type: The type of calculation to use on the shipping rate. Can only be \`fixed_amount\` for now.
    postShippingRatesRequestBodyType :: (GHC.Maybe.Maybe PostShippingRatesRequestBodyType')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delivery_estimate" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyDeliveryEstimate obj) : ["display_name" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDisplayName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fixed_amount" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyFixedAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyTaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyTaxCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delivery_estimate" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyDeliveryEstimate obj) : ["display_name" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDisplayName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fixed_amount" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyFixedAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyTaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyTaxCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostShippingRatesRequestBody" (\obj -> (((((((GHC.Base.pure PostShippingRatesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "delivery_estimate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fixed_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))

-- | Create a new 'PostShippingRatesRequestBody' with all required fields.
mkPostShippingRatesRequestBody ::
  -- | 'postShippingRatesRequestBodyDisplayName'
  Data.Text.Internal.Text ->
  PostShippingRatesRequestBody
mkPostShippingRatesRequestBody postShippingRatesRequestBodyDisplayName =
  PostShippingRatesRequestBody
    { postShippingRatesRequestBodyDeliveryEstimate = GHC.Maybe.Nothing,
      postShippingRatesRequestBodyDisplayName = postShippingRatesRequestBodyDisplayName,
      postShippingRatesRequestBodyExpand = GHC.Maybe.Nothing,
      postShippingRatesRequestBodyFixedAmount = GHC.Maybe.Nothing,
      postShippingRatesRequestBodyMetadata = GHC.Maybe.Nothing,
      postShippingRatesRequestBodyTaxBehavior = GHC.Maybe.Nothing,
      postShippingRatesRequestBodyTaxCode = GHC.Maybe.Nothing,
      postShippingRatesRequestBodyType = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.delivery_estimate@ in the specification.
--
-- The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
data PostShippingRatesRequestBodyDeliveryEstimate' = PostShippingRatesRequestBodyDeliveryEstimate'
  { -- | maximum
    postShippingRatesRequestBodyDeliveryEstimate'Maximum :: (GHC.Maybe.Maybe PostShippingRatesRequestBodyDeliveryEstimate'Maximum'),
    -- | minimum
    postShippingRatesRequestBodyDeliveryEstimate'Minimum :: (GHC.Maybe.Maybe PostShippingRatesRequestBodyDeliveryEstimate'Minimum')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyDeliveryEstimate' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("maximum" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyDeliveryEstimate'Maximum obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyDeliveryEstimate'Minimum obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("maximum" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyDeliveryEstimate'Maximum obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum" Data.Aeson.Types.ToJSON..=)) (postShippingRatesRequestBodyDeliveryEstimate'Minimum obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyDeliveryEstimate' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostShippingRatesRequestBodyDeliveryEstimate'" (\obj -> (GHC.Base.pure PostShippingRatesRequestBodyDeliveryEstimate' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "maximum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minimum"))

-- | Create a new 'PostShippingRatesRequestBodyDeliveryEstimate'' with all required fields.
mkPostShippingRatesRequestBodyDeliveryEstimate' :: PostShippingRatesRequestBodyDeliveryEstimate'
mkPostShippingRatesRequestBodyDeliveryEstimate' =
  PostShippingRatesRequestBodyDeliveryEstimate'
    { postShippingRatesRequestBodyDeliveryEstimate'Maximum = GHC.Maybe.Nothing,
      postShippingRatesRequestBodyDeliveryEstimate'Minimum = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.delivery_estimate.properties.maximum@ in the specification.
data PostShippingRatesRequestBodyDeliveryEstimate'Maximum' = PostShippingRatesRequestBodyDeliveryEstimate'Maximum'
  { -- | unit
    postShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit :: PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit',
    -- | value
    postShippingRatesRequestBodyDeliveryEstimate'Maximum'Value :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyDeliveryEstimate'Maximum' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["unit" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit obj] : ["value" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Maximum'Value obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["unit" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit obj] : ["value" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Maximum'Value obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyDeliveryEstimate'Maximum' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostShippingRatesRequestBodyDeliveryEstimate'Maximum'" (\obj -> (GHC.Base.pure PostShippingRatesRequestBodyDeliveryEstimate'Maximum' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))

-- | Create a new 'PostShippingRatesRequestBodyDeliveryEstimate'Maximum'' with all required fields.
mkPostShippingRatesRequestBodyDeliveryEstimate'Maximum' ::
  -- | 'postShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'
  PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit' ->
  -- | 'postShippingRatesRequestBodyDeliveryEstimate'Maximum'Value'
  GHC.Types.Int ->
  PostShippingRatesRequestBodyDeliveryEstimate'Maximum'
mkPostShippingRatesRequestBodyDeliveryEstimate'Maximum' postShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit postShippingRatesRequestBodyDeliveryEstimate'Maximum'Value =
  PostShippingRatesRequestBodyDeliveryEstimate'Maximum'
    { postShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit = postShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit,
      postShippingRatesRequestBodyDeliveryEstimate'Maximum'Value = postShippingRatesRequestBodyDeliveryEstimate'Maximum'Value
    }

-- | Defines the enum schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.delivery_estimate.properties.maximum.properties.unit@ in the specification.
data PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"business_day"@
    PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumBusinessDay
  | -- | Represents the JSON value @"day"@
    PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumDay
  | -- | Represents the JSON value @"hour"@
    PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumHour
  | -- | Represents the JSON value @"month"@
    PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumMonth
  | -- | Represents the JSON value @"week"@
    PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumWeek
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit' where
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'Other val) = val
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumBusinessDay) = "business_day"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumDay) = "day"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumHour) = "hour"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumMonth) = "month"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumWeek) = "week"

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "business_day" -> PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumBusinessDay
            | val GHC.Classes.== "day" -> PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumDay
            | val GHC.Classes.== "hour" -> PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumHour
            | val GHC.Classes.== "month" -> PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumMonth
            | val GHC.Classes.== "week" -> PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'EnumWeek
            | GHC.Base.otherwise -> PostShippingRatesRequestBodyDeliveryEstimate'Maximum'Unit'Other val
      )

-- | Defines the object schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.delivery_estimate.properties.minimum@ in the specification.
data PostShippingRatesRequestBodyDeliveryEstimate'Minimum' = PostShippingRatesRequestBodyDeliveryEstimate'Minimum'
  { -- | unit
    postShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit :: PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit',
    -- | value
    postShippingRatesRequestBodyDeliveryEstimate'Minimum'Value :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyDeliveryEstimate'Minimum' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["unit" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit obj] : ["value" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Minimum'Value obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["unit" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit obj] : ["value" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyDeliveryEstimate'Minimum'Value obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyDeliveryEstimate'Minimum' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostShippingRatesRequestBodyDeliveryEstimate'Minimum'" (\obj -> (GHC.Base.pure PostShippingRatesRequestBodyDeliveryEstimate'Minimum' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))

-- | Create a new 'PostShippingRatesRequestBodyDeliveryEstimate'Minimum'' with all required fields.
mkPostShippingRatesRequestBodyDeliveryEstimate'Minimum' ::
  -- | 'postShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'
  PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit' ->
  -- | 'postShippingRatesRequestBodyDeliveryEstimate'Minimum'Value'
  GHC.Types.Int ->
  PostShippingRatesRequestBodyDeliveryEstimate'Minimum'
mkPostShippingRatesRequestBodyDeliveryEstimate'Minimum' postShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit postShippingRatesRequestBodyDeliveryEstimate'Minimum'Value =
  PostShippingRatesRequestBodyDeliveryEstimate'Minimum'
    { postShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit = postShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit,
      postShippingRatesRequestBodyDeliveryEstimate'Minimum'Value = postShippingRatesRequestBodyDeliveryEstimate'Minimum'Value
    }

-- | Defines the enum schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.delivery_estimate.properties.minimum.properties.unit@ in the specification.
data PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"business_day"@
    PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumBusinessDay
  | -- | Represents the JSON value @"day"@
    PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumDay
  | -- | Represents the JSON value @"hour"@
    PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumHour
  | -- | Represents the JSON value @"month"@
    PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumMonth
  | -- | Represents the JSON value @"week"@
    PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumWeek
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit' where
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'Other val) = val
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumBusinessDay) = "business_day"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumDay) = "day"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumHour) = "hour"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumMonth) = "month"
  toJSON (PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumWeek) = "week"

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "business_day" -> PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumBusinessDay
            | val GHC.Classes.== "day" -> PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumDay
            | val GHC.Classes.== "hour" -> PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumHour
            | val GHC.Classes.== "month" -> PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumMonth
            | val GHC.Classes.== "week" -> PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'EnumWeek
            | GHC.Base.otherwise -> PostShippingRatesRequestBodyDeliveryEstimate'Minimum'Unit'Other val
      )

-- | Defines the object schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.fixed_amount@ in the specification.
--
-- Describes a fixed amount to charge for shipping. Must be present if type is \`fixed_amount\`.
data PostShippingRatesRequestBodyFixedAmount' = PostShippingRatesRequestBodyFixedAmount'
  { -- | amount
    postShippingRatesRequestBodyFixedAmount'Amount :: GHC.Types.Int,
    -- | currency
    postShippingRatesRequestBodyFixedAmount'Currency :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyFixedAmount' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyFixedAmount'Amount obj] : ["currency" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyFixedAmount'Currency obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyFixedAmount'Amount obj] : ["currency" Data.Aeson.Types.ToJSON..= postShippingRatesRequestBodyFixedAmount'Currency obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyFixedAmount' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostShippingRatesRequestBodyFixedAmount'" (\obj -> (GHC.Base.pure PostShippingRatesRequestBodyFixedAmount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency"))

-- | Create a new 'PostShippingRatesRequestBodyFixedAmount'' with all required fields.
mkPostShippingRatesRequestBodyFixedAmount' ::
  -- | 'postShippingRatesRequestBodyFixedAmount'Amount'
  GHC.Types.Int ->
  -- | 'postShippingRatesRequestBodyFixedAmount'Currency'
  Data.Text.Internal.Text ->
  PostShippingRatesRequestBodyFixedAmount'
mkPostShippingRatesRequestBodyFixedAmount' postShippingRatesRequestBodyFixedAmount'Amount postShippingRatesRequestBodyFixedAmount'Currency =
  PostShippingRatesRequestBodyFixedAmount'
    { postShippingRatesRequestBodyFixedAmount'Amount = postShippingRatesRequestBodyFixedAmount'Amount,
      postShippingRatesRequestBodyFixedAmount'Currency = postShippingRatesRequestBodyFixedAmount'Currency
    }

-- | Defines the enum schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.tax_behavior@ in the specification.
--
-- Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of \`inclusive\`, \`exclusive\`, or \`unspecified\`.
data PostShippingRatesRequestBodyTaxBehavior'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostShippingRatesRequestBodyTaxBehavior'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostShippingRatesRequestBodyTaxBehavior'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"exclusive"@
    PostShippingRatesRequestBodyTaxBehavior'EnumExclusive
  | -- | Represents the JSON value @"inclusive"@
    PostShippingRatesRequestBodyTaxBehavior'EnumInclusive
  | -- | Represents the JSON value @"unspecified"@
    PostShippingRatesRequestBodyTaxBehavior'EnumUnspecified
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyTaxBehavior' where
  toJSON (PostShippingRatesRequestBodyTaxBehavior'Other val) = val
  toJSON (PostShippingRatesRequestBodyTaxBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostShippingRatesRequestBodyTaxBehavior'EnumExclusive) = "exclusive"
  toJSON (PostShippingRatesRequestBodyTaxBehavior'EnumInclusive) = "inclusive"
  toJSON (PostShippingRatesRequestBodyTaxBehavior'EnumUnspecified) = "unspecified"

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyTaxBehavior' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "exclusive" -> PostShippingRatesRequestBodyTaxBehavior'EnumExclusive
            | val GHC.Classes.== "inclusive" -> PostShippingRatesRequestBodyTaxBehavior'EnumInclusive
            | val GHC.Classes.== "unspecified" -> PostShippingRatesRequestBodyTaxBehavior'EnumUnspecified
            | GHC.Base.otherwise -> PostShippingRatesRequestBodyTaxBehavior'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/shipping_rates.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.type@ in the specification.
--
-- The type of calculation to use on the shipping rate. Can only be \`fixed_amount\` for now.
data PostShippingRatesRequestBodyType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostShippingRatesRequestBodyType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostShippingRatesRequestBodyType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"fixed_amount"@
    PostShippingRatesRequestBodyType'EnumFixedAmount
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesRequestBodyType' where
  toJSON (PostShippingRatesRequestBodyType'Other val) = val
  toJSON (PostShippingRatesRequestBodyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostShippingRatesRequestBodyType'EnumFixedAmount) = "fixed_amount"

instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesRequestBodyType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "fixed_amount" -> PostShippingRatesRequestBodyType'EnumFixedAmount
            | GHC.Base.otherwise -> PostShippingRatesRequestBodyType'Other val
      )

-- | Represents a response of the operation 'postShippingRates'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostShippingRatesResponseError' is used.
data PostShippingRatesResponse
  = -- | Means either no matching case available or a parse error
    PostShippingRatesResponseError GHC.Base.String
  | -- | Successful response.
    PostShippingRatesResponse200 ShippingRate
  | -- | Error response.
    PostShippingRatesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)