{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getRadarEarlyFraudWarningsEarlyFraudWarning
module StripeAPI.Operations.GetRadarEarlyFraudWarningsEarlyFraudWarning where

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

-- | > GET /v1/radar/early_fraud_warnings/{early_fraud_warning}
-- 
-- \<p>Retrieves the details of an early fraud warning that has previously been created. \<\/p>
-- 
-- \<p>Please refer to the \<a href=\"\#early_fraud_warning_object\">early fraud warning\<\/a> object reference for more details.\<\/p>
getRadarEarlyFraudWarningsEarlyFraudWarning :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                         -- ^ early_fraud_warning | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                                         -- ^ expand: Specifies which fields in the response should be expanded.
  -> GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetRadarEarlyFraudWarningsEarlyFraudWarningResponse)) -- ^ Monad containing the result of the operation
getRadarEarlyFraudWarningsEarlyFraudWarning config
                                            earlyFraudWarning
                                            expand
                                            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetRadarEarlyFraudWarningsEarlyFraudWarningResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRadarEarlyFraudWarningsEarlyFraudWarningResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Radar'earlyFraudWarning)
                                                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetRadarEarlyFraudWarningsEarlyFraudWarningResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/radar/early_fraud_warnings/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel earlyFraudWarning)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/radar/early_fraud_warnings/{early_fraud_warning}
-- 
-- The same as 'getRadarEarlyFraudWarningsEarlyFraudWarning' but returns the raw 'Data.ByteString.Char8.ByteString'
getRadarEarlyFraudWarningsEarlyFraudWarningRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                StripeAPI.Common.SecurityScheme s) =>
                                                  StripeAPI.Common.Configuration s ->
                                                  GHC.Base.String ->
                                                  GHC.Maybe.Maybe GHC.Base.String ->
                                                  GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody ->
                                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getRadarEarlyFraudWarningsEarlyFraudWarningRaw config
                                               earlyFraudWarning
                                               expand
                                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/radar/early_fraud_warnings/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel earlyFraudWarning)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/radar/early_fraud_warnings/{early_fraud_warning}
-- 
-- Monadic version of 'getRadarEarlyFraudWarningsEarlyFraudWarning' (use with 'StripeAPI.Common.runWithConfiguration')
getRadarEarlyFraudWarningsEarlyFraudWarningM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                              StripeAPI.Common.SecurityScheme s) =>
                                                GHC.Base.String ->
                                                GHC.Maybe.Maybe GHC.Base.String ->
                                                GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody ->
                                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                   m
                                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                       (Network.HTTP.Client.Types.Response GetRadarEarlyFraudWarningsEarlyFraudWarningResponse))
getRadarEarlyFraudWarningsEarlyFraudWarningM earlyFraudWarning
                                             expand
                                             body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetRadarEarlyFraudWarningsEarlyFraudWarningResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRadarEarlyFraudWarningsEarlyFraudWarningResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Radar'earlyFraudWarning)
                                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetRadarEarlyFraudWarningsEarlyFraudWarningResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/radar/early_fraud_warnings/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel earlyFraudWarning)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/radar/early_fraud_warnings/{early_fraud_warning}
-- 
-- Monadic version of 'getRadarEarlyFraudWarningsEarlyFraudWarningRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getRadarEarlyFraudWarningsEarlyFraudWarningRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                                 StripeAPI.Common.SecurityScheme s) =>
                                                   GHC.Base.String ->
                                                   GHC.Maybe.Maybe GHC.Base.String ->
                                                   GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody ->
                                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                      m
                                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getRadarEarlyFraudWarningsEarlyFraudWarningRawM earlyFraudWarning
                                                expand
                                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/radar/early_fraud_warnings/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel earlyFraudWarning)) GHC.Base.++ ""))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getRadarEarlyFraudWarningsEarlyFraudWarningRequestBody
-- 
-- 
data GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody = GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody" (\obj -> GHC.Base.pure GetRadarEarlyFraudWarningsEarlyFraudWarningRequestBody)
-- | Represents a response of the operation 'getRadarEarlyFraudWarningsEarlyFraudWarning'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRadarEarlyFraudWarningsEarlyFraudWarningResponseError' is used.
data GetRadarEarlyFraudWarningsEarlyFraudWarningResponse =                          
   GetRadarEarlyFraudWarningsEarlyFraudWarningResponseError GHC.Base.String         -- ^ Means either no matching case available or a parse error
  | GetRadarEarlyFraudWarningsEarlyFraudWarningResponse200 Radar'earlyFraudWarning  -- ^ Successful response.
  | GetRadarEarlyFraudWarningsEarlyFraudWarningResponseDefault Error                -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)