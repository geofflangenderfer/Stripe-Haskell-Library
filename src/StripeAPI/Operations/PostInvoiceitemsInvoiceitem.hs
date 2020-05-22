{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postInvoiceitemsInvoiceitem
module StripeAPI.Operations.PostInvoiceitemsInvoiceitem where

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

-- | > POST /v1/invoiceitems/{invoiceitem}
-- 
-- \<p>Updates the amount or description of an invoice item on an upcoming invoice. Updating an invoice item is only possible before the invoice it’s attached to is closed.\<\/p>
postInvoiceitemsInvoiceitem :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                         -- ^ invoiceitem | Constraints: Maximum length of 5000
  -> PostInvoiceitemsInvoiceitemRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostInvoiceitemsInvoiceitemResponse)) -- ^ Monad containing the result of the operation
postInvoiceitemsInvoiceitem config
                            invoiceitem
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoiceitemsInvoiceitemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsInvoiceitemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Invoiceitem)
                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsInvoiceitemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoiceitems/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoiceitem)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoiceitems/{invoiceitem}
-- 
-- The same as 'postInvoiceitemsInvoiceitem' but returns the raw 'Data.ByteString.Char8.ByteString'
postInvoiceitemsInvoiceitemRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  StripeAPI.Common.Configuration s ->
                                  GHC.Base.String ->
                                  PostInvoiceitemsInvoiceitemRequestBody ->
                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoiceitemsInvoiceitemRaw config
                               invoiceitem
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoiceitems/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoiceitem)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoiceitems/{invoiceitem}
-- 
-- Monadic version of 'postInvoiceitemsInvoiceitem' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoiceitemsInvoiceitemM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                PostInvoiceitemsInvoiceitemRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response PostInvoiceitemsInvoiceitemResponse))
postInvoiceitemsInvoiceitemM invoiceitem
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoiceitemsInvoiceitemResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsInvoiceitemResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Invoiceitem)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoiceitemsInvoiceitemResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoiceitems/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoiceitem)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoiceitems/{invoiceitem}
-- 
-- Monadic version of 'postInvoiceitemsInvoiceitemRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoiceitemsInvoiceitemRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   GHC.Base.String ->
                                   PostInvoiceitemsInvoiceitemRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoiceitemsInvoiceitemRawM invoiceitem
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoiceitems/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoiceitem)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postInvoiceitemsInvoiceitemRequestBody
-- 
-- 
data PostInvoiceitemsInvoiceitemRequestBody = PostInvoiceitemsInvoiceitemRequestBody {
  -- | amount: The integer amount in **%s** of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer\'s account, pass a negative amount.
  postInvoiceitemsInvoiceitemRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | description: An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoiceitemsInvoiceitemRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | discountable: Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items. Cannot be set to true for prorations.
  , postInvoiceitemsInvoiceitemRequestBodyDiscountable :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | expand: Specifies which fields in the response should be expanded.
  , postInvoiceitemsInvoiceitemRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postInvoiceitemsInvoiceitemRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoiceitemsInvoiceitemRequestBodyMetadata')
  -- | period: The period associated with this invoice item.
  , postInvoiceitemsInvoiceitemRequestBodyPeriod :: (GHC.Maybe.Maybe PostInvoiceitemsInvoiceitemRequestBodyPeriod')
  -- | quantity: Non-negative integer. The quantity of units for the invoice item.
  , postInvoiceitemsInvoiceitemRequestBodyQuantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates: The tax rates which apply to the invoice item. When set, the \`default_tax_rates\` on the invoice do not apply to this invoice item. Pass an empty string to remove previously-defined tax rates.
  , postInvoiceitemsInvoiceitemRequestBodyTaxRates :: (GHC.Maybe.Maybe PostInvoiceitemsInvoiceitemRequestBodyTaxRates'Variants)
  -- | unit_amount: The integer unit amount in **%s** of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer\'s account, pass a negative unit_amount.
  , postInvoiceitemsInvoiceitemRequestBodyUnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | unit_amount_decimal: Same as \`unit_amount\`, but accepts a decimal value with at most 12 decimal places. Only one of \`unit_amount\` and \`unit_amount_decimal\` can be set.
  , postInvoiceitemsInvoiceitemRequestBodyUnitAmountDecimal :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsInvoiceitemRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postInvoiceitemsInvoiceitemRequestBodyAmount obj) : (Data.Aeson..=) "description" (postInvoiceitemsInvoiceitemRequestBodyDescription obj) : (Data.Aeson..=) "discountable" (postInvoiceitemsInvoiceitemRequestBodyDiscountable obj) : (Data.Aeson..=) "expand" (postInvoiceitemsInvoiceitemRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postInvoiceitemsInvoiceitemRequestBodyMetadata obj) : (Data.Aeson..=) "period" (postInvoiceitemsInvoiceitemRequestBodyPeriod obj) : (Data.Aeson..=) "quantity" (postInvoiceitemsInvoiceitemRequestBodyQuantity obj) : (Data.Aeson..=) "tax_rates" (postInvoiceitemsInvoiceitemRequestBodyTaxRates obj) : (Data.Aeson..=) "unit_amount" (postInvoiceitemsInvoiceitemRequestBodyUnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (postInvoiceitemsInvoiceitemRequestBodyUnitAmountDecimal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postInvoiceitemsInvoiceitemRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "description" (postInvoiceitemsInvoiceitemRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "discountable" (postInvoiceitemsInvoiceitemRequestBodyDiscountable obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postInvoiceitemsInvoiceitemRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postInvoiceitemsInvoiceitemRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "period" (postInvoiceitemsInvoiceitemRequestBodyPeriod obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postInvoiceitemsInvoiceitemRequestBodyQuantity obj) GHC.Base.<> ((Data.Aeson..=) "tax_rates" (postInvoiceitemsInvoiceitemRequestBodyTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (postInvoiceitemsInvoiceitemRequestBodyUnitAmount obj) GHC.Base.<> (Data.Aeson..=) "unit_amount_decimal" (postInvoiceitemsInvoiceitemRequestBodyUnitAmountDecimal obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsInvoiceitemRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsInvoiceitemRequestBody" (\obj -> (((((((((GHC.Base.pure PostInvoiceitemsInvoiceitemRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discountable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal"))
-- | Defines the data type for the schema postInvoiceitemsInvoiceitemRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostInvoiceitemsInvoiceitemRequestBodyMetadata' = PostInvoiceitemsInvoiceitemRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsInvoiceitemRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsInvoiceitemRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsInvoiceitemRequestBodyMetadata'" (\obj -> GHC.Base.pure PostInvoiceitemsInvoiceitemRequestBodyMetadata')
-- | Defines the data type for the schema postInvoiceitemsInvoiceitemRequestBodyPeriod\'
-- 
-- The period associated with this invoice item.
data PostInvoiceitemsInvoiceitemRequestBodyPeriod' = PostInvoiceitemsInvoiceitemRequestBodyPeriod' {
  -- | end
  postInvoiceitemsInvoiceitemRequestBodyPeriod'End :: GHC.Integer.Type.Integer
  -- | start
  , postInvoiceitemsInvoiceitemRequestBodyPeriod'Start :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsInvoiceitemRequestBodyPeriod'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "end" (postInvoiceitemsInvoiceitemRequestBodyPeriod'End obj) : (Data.Aeson..=) "start" (postInvoiceitemsInvoiceitemRequestBodyPeriod'Start obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "end" (postInvoiceitemsInvoiceitemRequestBodyPeriod'End obj) GHC.Base.<> (Data.Aeson..=) "start" (postInvoiceitemsInvoiceitemRequestBodyPeriod'Start obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoiceitemsInvoiceitemRequestBodyPeriod'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoiceitemsInvoiceitemRequestBodyPeriod'" (\obj -> (GHC.Base.pure PostInvoiceitemsInvoiceitemRequestBodyPeriod' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start"))
-- | Defines the enum schema postInvoiceitemsInvoiceitemRequestBodyTax_rates\'OneOf1
-- 
-- 
data PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1
    = PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1
    where toJSON (PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumString_
                                          else PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postInvoiceitemsInvoiceitemRequestBodyTax_rates\'
-- 
-- The tax rates which apply to the invoice item. When set, the \`default_tax_rates\` on the invoice do not apply to this invoice item. Pass an empty string to remove previously-defined tax rates.
data PostInvoiceitemsInvoiceitemRequestBodyTaxRates'Variants
    = PostInvoiceitemsInvoiceitemRequestBodyTaxRates'PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1 PostInvoiceitemsInvoiceitemRequestBodyTaxRates'OneOf1
    | PostInvoiceitemsInvoiceitemRequestBodyTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoiceitemsInvoiceitemRequestBodyTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoiceitemsInvoiceitemRequestBodyTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postInvoiceitemsInvoiceitem'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoiceitemsInvoiceitemResponseError' is used.
data PostInvoiceitemsInvoiceitemResponse =                   
   PostInvoiceitemsInvoiceitemResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostInvoiceitemsInvoiceitemResponse200 Invoiceitem       -- ^ Successful response.
  | PostInvoiceitemsInvoiceitemResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)