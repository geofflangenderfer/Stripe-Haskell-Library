{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSkusId
module StripeAPI.Operations.PostSkusId where

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

-- | > POST /v1/skus/{id}
-- 
-- \<p>Updates the specific SKU by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
-- 
-- \<p>Note that a SKU’s \<code>attributes\<\/code> are not editable. Instead, you would need to deactivate the existing SKU and create a new one with the new attribute values.\<\/p>
postSkusId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                        -- ^ id | Constraints: Maximum length of 5000
  -> PostSkusIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSkusIdResponse)) -- ^ Monad containing the result of the operation
postSkusId config
           id
           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSkusIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSkusIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Sku)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSkusIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/skus/{id}
-- 
-- The same as 'postSkusId' but returns the raw 'Data.ByteString.Char8.ByteString'
postSkusIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 StripeAPI.Common.Configuration s ->
                 GHC.Base.String ->
                 PostSkusIdRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSkusIdRaw config
              id
              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/skus/{id}
-- 
-- Monadic version of 'postSkusId' (use with 'StripeAPI.Common.runWithConfiguration')
postSkusIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               GHC.Base.String ->
               PostSkusIdRequestBody ->
               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response PostSkusIdResponse))
postSkusIdM id
            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSkusIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSkusIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 Sku)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSkusIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/skus/{id}
-- 
-- Monadic version of 'postSkusIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSkusIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  GHC.Base.String ->
                  PostSkusIdRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSkusIdRawM id
               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/skus/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSkusIdRequestBody
-- 
-- 
data PostSkusIdRequestBody = PostSkusIdRequestBody {
  -- | active: Whether this SKU is available for purchase.
  postSkusIdRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | attributes: A dictionary of attributes and values for the attributes defined by the product. When specified, \`attributes\` will partially update the existing attributes dictionary on the product, with the postcondition that a value must be present for each attribute key on the product.
  , postSkusIdRequestBodyAttributes :: (GHC.Maybe.Maybe PostSkusIdRequestBodyAttributes')
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postSkusIdRequestBodyCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSkusIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | image: The URL of an image for this SKU, meant to be displayable to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusIdRequestBodyImage :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | inventory: Description of the SKU\'s inventory.
  , postSkusIdRequestBodyInventory :: (GHC.Maybe.Maybe PostSkusIdRequestBodyInventory')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSkusIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostSkusIdRequestBodyMetadata')
  -- | package_dimensions: The dimensions of this SKU for shipping purposes.
  , postSkusIdRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostSkusIdRequestBodyPackageDimensions'Variants)
  -- | price: The cost of the item as a positive integer in the smallest currency unit (that is, 100 cents to charge \$1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
  , postSkusIdRequestBodyPrice :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | product: The ID of the product that this SKU should belong to. The product must exist, have the same set of attribute names as the SKU\'s current product, and be of type \`good\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusIdRequestBodyProduct :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postSkusIdRequestBodyActive obj) : (Data.Aeson..=) "attributes" (postSkusIdRequestBodyAttributes obj) : (Data.Aeson..=) "currency" (postSkusIdRequestBodyCurrency obj) : (Data.Aeson..=) "expand" (postSkusIdRequestBodyExpand obj) : (Data.Aeson..=) "image" (postSkusIdRequestBodyImage obj) : (Data.Aeson..=) "inventory" (postSkusIdRequestBodyInventory obj) : (Data.Aeson..=) "metadata" (postSkusIdRequestBodyMetadata obj) : (Data.Aeson..=) "package_dimensions" (postSkusIdRequestBodyPackageDimensions obj) : (Data.Aeson..=) "price" (postSkusIdRequestBodyPrice obj) : (Data.Aeson..=) "product" (postSkusIdRequestBodyProduct obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postSkusIdRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "attributes" (postSkusIdRequestBodyAttributes obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSkusIdRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSkusIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "image" (postSkusIdRequestBodyImage obj) GHC.Base.<> ((Data.Aeson..=) "inventory" (postSkusIdRequestBodyInventory obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSkusIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "package_dimensions" (postSkusIdRequestBodyPackageDimensions obj) GHC.Base.<> ((Data.Aeson..=) "price" (postSkusIdRequestBodyPrice obj) GHC.Base.<> (Data.Aeson..=) "product" (postSkusIdRequestBodyProduct obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusIdRequestBody" (\obj -> (((((((((GHC.Base.pure PostSkusIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inventory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product"))
-- | Defines the data type for the schema postSkusIdRequestBodyAttributes\'
-- 
-- A dictionary of attributes and values for the attributes defined by the product. When specified, \`attributes\` will partially update the existing attributes dictionary on the product, with the postcondition that a value must be present for each attribute key on the product.
data PostSkusIdRequestBodyAttributes' = PostSkusIdRequestBodyAttributes' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyAttributes'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusIdRequestBodyAttributes'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusIdRequestBodyAttributes'" (\obj -> GHC.Base.pure PostSkusIdRequestBodyAttributes')
-- | Defines the data type for the schema postSkusIdRequestBodyInventory\'
-- 
-- Description of the SKU\'s inventory.
data PostSkusIdRequestBodyInventory' = PostSkusIdRequestBodyInventory' {
  -- | quantity
  postSkusIdRequestBodyInventory'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusIdRequestBodyInventory'Type :: (GHC.Maybe.Maybe PostSkusIdRequestBodyInventory'Type')
  -- | value
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSkusIdRequestBodyInventory'Value :: (GHC.Maybe.Maybe PostSkusIdRequestBodyInventory'Value')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyInventory'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "quantity" (postSkusIdRequestBodyInventory'Quantity obj) : (Data.Aeson..=) "type" (postSkusIdRequestBodyInventory'Type obj) : (Data.Aeson..=) "value" (postSkusIdRequestBodyInventory'Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "quantity" (postSkusIdRequestBodyInventory'Quantity obj) GHC.Base.<> ((Data.Aeson..=) "type" (postSkusIdRequestBodyInventory'Type obj) GHC.Base.<> (Data.Aeson..=) "value" (postSkusIdRequestBodyInventory'Value obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusIdRequestBodyInventory'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusIdRequestBodyInventory'" (\obj -> ((GHC.Base.pure PostSkusIdRequestBodyInventory' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "value"))
-- | Defines the enum schema postSkusIdRequestBodyInventory\'Type\'
-- 
-- 
data PostSkusIdRequestBodyInventory'Type'
    = PostSkusIdRequestBodyInventory'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSkusIdRequestBodyInventory'Type'EnumTyped GHC.Base.String
    | PostSkusIdRequestBodyInventory'Type'EnumStringBucket
    | PostSkusIdRequestBodyInventory'Type'EnumStringFinite
    | PostSkusIdRequestBodyInventory'Type'EnumStringInfinite
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyInventory'Type'
    where toJSON (PostSkusIdRequestBodyInventory'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusIdRequestBodyInventory'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusIdRequestBodyInventory'Type'EnumStringBucket) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bucket"
          toJSON (PostSkusIdRequestBodyInventory'Type'EnumStringFinite) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "finite"
          toJSON (PostSkusIdRequestBodyInventory'Type'EnumStringInfinite) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "infinite"
instance Data.Aeson.FromJSON PostSkusIdRequestBodyInventory'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bucket")
                                          then PostSkusIdRequestBodyInventory'Type'EnumStringBucket
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "finite")
                                                then PostSkusIdRequestBodyInventory'Type'EnumStringFinite
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "infinite")
                                                      then PostSkusIdRequestBodyInventory'Type'EnumStringInfinite
                                                      else PostSkusIdRequestBodyInventory'Type'EnumOther val)
-- | Defines the enum schema postSkusIdRequestBodyInventory\'Value\'
-- 
-- 
data PostSkusIdRequestBodyInventory'Value'
    = PostSkusIdRequestBodyInventory'Value'EnumOther Data.Aeson.Types.Internal.Value
    | PostSkusIdRequestBodyInventory'Value'EnumTyped GHC.Base.String
    | PostSkusIdRequestBodyInventory'Value'EnumString_
    | PostSkusIdRequestBodyInventory'Value'EnumStringInStock
    | PostSkusIdRequestBodyInventory'Value'EnumStringLimited
    | PostSkusIdRequestBodyInventory'Value'EnumStringOutOfStock
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyInventory'Value'
    where toJSON (PostSkusIdRequestBodyInventory'Value'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusIdRequestBodyInventory'Value'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusIdRequestBodyInventory'Value'EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
          toJSON (PostSkusIdRequestBodyInventory'Value'EnumStringInStock) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_stock"
          toJSON (PostSkusIdRequestBodyInventory'Value'EnumStringLimited) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "limited"
          toJSON (PostSkusIdRequestBodyInventory'Value'EnumStringOutOfStock) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "out_of_stock"
instance Data.Aeson.FromJSON PostSkusIdRequestBodyInventory'Value'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSkusIdRequestBodyInventory'Value'EnumString_
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_stock")
                                                then PostSkusIdRequestBodyInventory'Value'EnumStringInStock
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "limited")
                                                      then PostSkusIdRequestBodyInventory'Value'EnumStringLimited
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "out_of_stock")
                                                            then PostSkusIdRequestBodyInventory'Value'EnumStringOutOfStock
                                                            else PostSkusIdRequestBodyInventory'Value'EnumOther val)
-- | Defines the data type for the schema postSkusIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSkusIdRequestBodyMetadata' = PostSkusIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSkusIdRequestBodyMetadata')
-- | Defines the enum schema postSkusIdRequestBodyPackage_dimensions\'OneOf1
-- 
-- 
data PostSkusIdRequestBodyPackageDimensions'OneOf1
    = PostSkusIdRequestBodyPackageDimensions'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSkusIdRequestBodyPackageDimensions'OneOf1EnumTyped GHC.Base.String
    | PostSkusIdRequestBodyPackageDimensions'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyPackageDimensions'OneOf1
    where toJSON (PostSkusIdRequestBodyPackageDimensions'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusIdRequestBodyPackageDimensions'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSkusIdRequestBodyPackageDimensions'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSkusIdRequestBodyPackageDimensions'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSkusIdRequestBodyPackageDimensions'OneOf1EnumString_
                                          else PostSkusIdRequestBodyPackageDimensions'OneOf1EnumOther val)
-- | Defines the data type for the schema postSkusIdRequestBodyPackage_dimensions\'OneOf2
-- 
-- 
data PostSkusIdRequestBodyPackageDimensions'OneOf2 = PostSkusIdRequestBodyPackageDimensions'OneOf2 {
  -- | height
  postSkusIdRequestBodyPackageDimensions'OneOf2Height :: GHC.Types.Double
  -- | length
  , postSkusIdRequestBodyPackageDimensions'OneOf2Length :: GHC.Types.Double
  -- | weight
  , postSkusIdRequestBodyPackageDimensions'OneOf2Weight :: GHC.Types.Double
  -- | width
  , postSkusIdRequestBodyPackageDimensions'OneOf2Width :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyPackageDimensions'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (postSkusIdRequestBodyPackageDimensions'OneOf2Height obj) : (Data.Aeson..=) "length" (postSkusIdRequestBodyPackageDimensions'OneOf2Length obj) : (Data.Aeson..=) "weight" (postSkusIdRequestBodyPackageDimensions'OneOf2Weight obj) : (Data.Aeson..=) "width" (postSkusIdRequestBodyPackageDimensions'OneOf2Width obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (postSkusIdRequestBodyPackageDimensions'OneOf2Height obj) GHC.Base.<> ((Data.Aeson..=) "length" (postSkusIdRequestBodyPackageDimensions'OneOf2Length obj) GHC.Base.<> ((Data.Aeson..=) "weight" (postSkusIdRequestBodyPackageDimensions'OneOf2Weight obj) GHC.Base.<> (Data.Aeson..=) "width" (postSkusIdRequestBodyPackageDimensions'OneOf2Width obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSkusIdRequestBodyPackageDimensions'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusIdRequestBodyPackageDimensions'OneOf2" (\obj -> (((GHC.Base.pure PostSkusIdRequestBodyPackageDimensions'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Define the one-of schema postSkusIdRequestBodyPackage_dimensions\'
-- 
-- The dimensions of this SKU for shipping purposes.
data PostSkusIdRequestBodyPackageDimensions'Variants
    = PostSkusIdRequestBodyPackageDimensions'PostSkusIdRequestBodyPackageDimensions'OneOf1 PostSkusIdRequestBodyPackageDimensions'OneOf1
    | PostSkusIdRequestBodyPackageDimensions'PostSkusIdRequestBodyPackageDimensions'OneOf2 PostSkusIdRequestBodyPackageDimensions'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSkusIdRequestBodyPackageDimensions'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSkusIdRequestBodyPackageDimensions'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postSkusId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSkusIdResponseError' is used.
data PostSkusIdResponse =                   
   PostSkusIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSkusIdResponse200 Sku               -- ^ Successful response.
  | PostSkusIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)