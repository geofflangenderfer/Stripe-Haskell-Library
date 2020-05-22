{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTaxRates
module StripeAPI.Operations.PostTaxRates where

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

-- | > POST /v1/tax_rates
-- 
-- \<p>Creates a new tax rate.\<\/p>
postTaxRates :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostTaxRatesRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTaxRatesResponse)) -- ^ Monad containing the result of the operation
postTaxRates config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTaxRatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      TaxRate)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tax_rates") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/tax_rates
-- 
-- The same as 'postTaxRates' but returns the raw 'Data.ByteString.Char8.ByteString'
postTaxRatesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   PostTaxRatesRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTaxRatesRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tax_rates") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/tax_rates
-- 
-- Monadic version of 'postTaxRates' (use with 'StripeAPI.Common.runWithConfiguration')
postTaxRatesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 PostTaxRatesRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response PostTaxRatesResponse))
postTaxRatesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTaxRatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       TaxRate)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTaxRatesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tax_rates") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/tax_rates
-- 
-- Monadic version of 'postTaxRatesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTaxRatesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    PostTaxRatesRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTaxRatesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/tax_rates") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTaxRatesRequestBody
-- 
-- 
data PostTaxRatesRequestBody = PostTaxRatesRequestBody {
  -- | active: Flag determining whether the tax rate is active or inactive. Inactive tax rates continue to work where they are currently applied however they cannot be used for new applications.
  postTaxRatesRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | description: An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTaxRatesRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | display_name: The display name of the tax rate, which will be shown to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 50
  , postTaxRatesRequestBodyDisplayName :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , postTaxRatesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | inclusive: This specifies if the tax rate is inclusive or exclusive.
  , postTaxRatesRequestBodyInclusive :: GHC.Types.Bool
  -- | jurisdiction: The jurisdiction for the tax rate.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 50
  , postTaxRatesRequestBodyJurisdiction :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTaxRatesRequestBodyMetadata :: (GHC.Maybe.Maybe PostTaxRatesRequestBodyMetadata')
  -- | percentage: This represents the tax rate percent out of 100.
  , postTaxRatesRequestBodyPercentage :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTaxRatesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postTaxRatesRequestBodyActive obj) : (Data.Aeson..=) "description" (postTaxRatesRequestBodyDescription obj) : (Data.Aeson..=) "display_name" (postTaxRatesRequestBodyDisplayName obj) : (Data.Aeson..=) "expand" (postTaxRatesRequestBodyExpand obj) : (Data.Aeson..=) "inclusive" (postTaxRatesRequestBodyInclusive obj) : (Data.Aeson..=) "jurisdiction" (postTaxRatesRequestBodyJurisdiction obj) : (Data.Aeson..=) "metadata" (postTaxRatesRequestBodyMetadata obj) : (Data.Aeson..=) "percentage" (postTaxRatesRequestBodyPercentage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postTaxRatesRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "description" (postTaxRatesRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "display_name" (postTaxRatesRequestBodyDisplayName obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTaxRatesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "inclusive" (postTaxRatesRequestBodyInclusive obj) GHC.Base.<> ((Data.Aeson..=) "jurisdiction" (postTaxRatesRequestBodyJurisdiction obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postTaxRatesRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "percentage" (postTaxRatesRequestBodyPercentage obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTaxRatesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxRatesRequestBody" (\obj -> (((((((GHC.Base.pure PostTaxRatesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "jurisdiction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "percentage"))
-- | Defines the data type for the schema postTaxRatesRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTaxRatesRequestBodyMetadata' = PostTaxRatesRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTaxRatesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTaxRatesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTaxRatesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTaxRatesRequestBodyMetadata')
-- | Represents a response of the operation 'postTaxRates'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTaxRatesResponseError' is used.
data PostTaxRatesResponse =                   
   PostTaxRatesResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostTaxRatesResponse200 TaxRate           -- ^ Successful response.
  | PostTaxRatesResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)