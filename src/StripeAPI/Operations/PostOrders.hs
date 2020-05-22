{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postOrders
module StripeAPI.Operations.PostOrders where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
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
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/orders
-- 
-- \<p>Creates a new order object.\<\/p>
postOrders :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostOrdersRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostOrdersResponse)) -- ^ Monad containing the result of the operation
postOrders config
           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostOrdersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Order)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/orders") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders
-- 
-- The same as 'postOrders' but returns the raw 'Data.ByteString.Char8.ByteString'
postOrdersRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 PostOrdersRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersRaw config
              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/orders") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders
-- 
-- Monadic version of 'postOrders' (use with 'StripeAPI.Common.runWithConfiguration')
postOrdersM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               PostOrdersRequestBody ->
               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response PostOrdersResponse))
postOrdersM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostOrdersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 Order)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/orders") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/orders
-- 
-- Monadic version of 'postOrdersRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postOrdersRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  PostOrdersRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postOrdersRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/orders") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postOrdersRequestBody
-- 
-- 
data PostOrdersRequestBody = PostOrdersRequestBody {
  -- | coupon: A coupon code that represents a discount to be applied to this order. Must be one-time duration and in same currency as the order. An order can have multiple coupons.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postOrdersRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postOrdersRequestBodyCurrency :: GHC.Base.String
  -- | customer: The ID of an existing customer to use for this order. If provided, the customer email and shipping address will be used to create the order. Subsequently, the customer will also be charged to pay the order. If \`email\` or \`shipping\` are also provided, they will override the values retrieved from the customer object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | email: The email address of the customer placing the order.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postOrdersRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | items: List of items constituting the order. An order can have up to 25 items.
  , postOrdersRequestBodyItems :: (GHC.Maybe.Maybe ([] PostOrdersRequestBodyItems'))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postOrdersRequestBodyMetadata :: (GHC.Maybe.Maybe PostOrdersRequestBodyMetadata')
  -- | shipping: Shipping address for the order. Required if any of the SKUs are for products that have \`shippable\` set to true.
  , postOrdersRequestBodyShipping :: (GHC.Maybe.Maybe PostOrdersRequestBodyShipping')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "coupon" (postOrdersRequestBodyCoupon obj) : (Data.Aeson..=) "currency" (postOrdersRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postOrdersRequestBodyCustomer obj) : (Data.Aeson..=) "email" (postOrdersRequestBodyEmail obj) : (Data.Aeson..=) "expand" (postOrdersRequestBodyExpand obj) : (Data.Aeson..=) "items" (postOrdersRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postOrdersRequestBodyMetadata obj) : (Data.Aeson..=) "shipping" (postOrdersRequestBodyShipping obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "coupon" (postOrdersRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postOrdersRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postOrdersRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "email" (postOrdersRequestBodyEmail obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postOrdersRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postOrdersRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postOrdersRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "shipping" (postOrdersRequestBodyShipping obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersRequestBody" (\obj -> (((((((GHC.Base.pure PostOrdersRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping"))
-- | Defines the data type for the schema postOrdersRequestBodyItems\'
-- 
-- 
data PostOrdersRequestBodyItems' = PostOrdersRequestBodyItems' {
  -- | amount
  postOrdersRequestBodyItems'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency
  , postOrdersRequestBodyItems'Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1000
  , postOrdersRequestBodyItems'Description :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | parent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyItems'Parent :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postOrdersRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyItems'Type :: (GHC.Maybe.Maybe PostOrdersRequestBodyItems'Type')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postOrdersRequestBodyItems'Amount obj) : (Data.Aeson..=) "currency" (postOrdersRequestBodyItems'Currency obj) : (Data.Aeson..=) "description" (postOrdersRequestBodyItems'Description obj) : (Data.Aeson..=) "parent" (postOrdersRequestBodyItems'Parent obj) : (Data.Aeson..=) "quantity" (postOrdersRequestBodyItems'Quantity obj) : (Data.Aeson..=) "type" (postOrdersRequestBodyItems'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postOrdersRequestBodyItems'Amount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postOrdersRequestBodyItems'Currency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postOrdersRequestBodyItems'Description obj) GHC.Base.<> ((Data.Aeson..=) "parent" (postOrdersRequestBodyItems'Parent obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postOrdersRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "type" (postOrdersRequestBodyItems'Type obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersRequestBodyItems'" (\obj -> (((((GHC.Base.pure PostOrdersRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the enum schema postOrdersRequestBodyItems\'Type\'
-- 
-- 
data PostOrdersRequestBodyItems'Type'
    = PostOrdersRequestBodyItems'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostOrdersRequestBodyItems'Type'EnumTyped GHC.Base.String
    | PostOrdersRequestBodyItems'Type'EnumStringDiscount
    | PostOrdersRequestBodyItems'Type'EnumStringShipping
    | PostOrdersRequestBodyItems'Type'EnumStringSku
    | PostOrdersRequestBodyItems'Type'EnumStringTax
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersRequestBodyItems'Type'
    where toJSON (PostOrdersRequestBodyItems'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersRequestBodyItems'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostOrdersRequestBodyItems'Type'EnumStringDiscount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount"
          toJSON (PostOrdersRequestBodyItems'Type'EnumStringShipping) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping"
          toJSON (PostOrdersRequestBodyItems'Type'EnumStringSku) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku"
          toJSON (PostOrdersRequestBodyItems'Type'EnumStringTax) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax"
instance Data.Aeson.FromJSON PostOrdersRequestBodyItems'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount")
                                          then PostOrdersRequestBodyItems'Type'EnumStringDiscount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping")
                                                then PostOrdersRequestBodyItems'Type'EnumStringShipping
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku")
                                                      then PostOrdersRequestBodyItems'Type'EnumStringSku
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax")
                                                            then PostOrdersRequestBodyItems'Type'EnumStringTax
                                                            else PostOrdersRequestBodyItems'Type'EnumOther val)
-- | Defines the data type for the schema postOrdersRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostOrdersRequestBodyMetadata' = PostOrdersRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersRequestBodyMetadata'" (\obj -> GHC.Base.pure PostOrdersRequestBodyMetadata')
-- | Defines the data type for the schema postOrdersRequestBodyShipping\'
-- 
-- Shipping address for the order. Required if any of the SKUs are for products that have \`shippable\` set to true.
data PostOrdersRequestBodyShipping' = PostOrdersRequestBodyShipping' {
  -- | address
  postOrdersRequestBodyShipping'Address :: PostOrdersRequestBodyShipping'Address'
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyShipping'Name :: GHC.Base.String
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyShipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postOrdersRequestBodyShipping'Address obj) : (Data.Aeson..=) "name" (postOrdersRequestBodyShipping'Name obj) : (Data.Aeson..=) "phone" (postOrdersRequestBodyShipping'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postOrdersRequestBodyShipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "name" (postOrdersRequestBodyShipping'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postOrdersRequestBodyShipping'Phone obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersRequestBodyShipping'" (\obj -> ((GHC.Base.pure PostOrdersRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
-- | Defines the data type for the schema postOrdersRequestBodyShipping\'Address\'
-- 
-- 
data PostOrdersRequestBodyShipping'Address' = PostOrdersRequestBodyShipping'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postOrdersRequestBodyShipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyShipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyShipping'Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyShipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyShipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postOrdersRequestBodyShipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostOrdersRequestBodyShipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postOrdersRequestBodyShipping'Address'City obj) : (Data.Aeson..=) "country" (postOrdersRequestBodyShipping'Address'Country obj) : (Data.Aeson..=) "line1" (postOrdersRequestBodyShipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postOrdersRequestBodyShipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postOrdersRequestBodyShipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postOrdersRequestBodyShipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postOrdersRequestBodyShipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postOrdersRequestBodyShipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postOrdersRequestBodyShipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postOrdersRequestBodyShipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postOrdersRequestBodyShipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postOrdersRequestBodyShipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersRequestBodyShipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersRequestBodyShipping'Address'" (\obj -> (((((GHC.Base.pure PostOrdersRequestBodyShipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Represents a response of the operation 'postOrders'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostOrdersResponseError' is used.
data PostOrdersResponse =                   
   PostOrdersResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostOrdersResponse200 Order             -- ^ Successful response.
  | PostOrdersResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)