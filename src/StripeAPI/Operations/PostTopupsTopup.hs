{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTopupsTopup
module StripeAPI.Operations.PostTopupsTopup where

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
import qualified Data.Vector
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

-- | > POST /v1/topups/{topup}
-- 
-- \<p>Updates the metadata of a top-up. Other top-up details are not editable by design.\<\/p>
postTopupsTopup :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                             -- ^ topup | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostTopupsTopupRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTopupsTopupResponse)) -- ^ Monad containing the result of the operation
postTopupsTopup config
                topup
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTopupsTopupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsTopupResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Topup)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsTopupResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/topups/{topup}
-- 
-- The same as 'postTopupsTopup' but returns the raw 'Data.ByteString.Char8.ByteString'
postTopupsTopupRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      GHC.Base.String ->
                      GHC.Maybe.Maybe PostTopupsTopupRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTopupsTopupRaw config
                   topup
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/topups/{topup}
-- 
-- Monadic version of 'postTopupsTopup' (use with 'StripeAPI.Common.runWithConfiguration')
postTopupsTopupM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    GHC.Base.String ->
                    GHC.Maybe.Maybe PostTopupsTopupRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response PostTopupsTopupResponse))
postTopupsTopupM topup
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTopupsTopupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsTopupResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                Topup)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsTopupResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/topups/{topup}
-- 
-- Monadic version of 'postTopupsTopupRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTopupsTopupRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Base.String ->
                       GHC.Maybe.Maybe PostTopupsTopupRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTopupsTopupRawM topup
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTopupsTopupRequestBody
-- 
-- 
data PostTopupsTopupRequestBody = PostTopupsTopupRequestBody {
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postTopupsTopupRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postTopupsTopupRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTopupsTopupRequestBodyMetadata :: (GHC.Maybe.Maybe PostTopupsTopupRequestBodyMetadata')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTopupsTopupRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (postTopupsTopupRequestBodyDescription obj) : (Data.Aeson..=) "expand" (postTopupsTopupRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTopupsTopupRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (postTopupsTopupRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTopupsTopupRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postTopupsTopupRequestBodyMetadata obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsTopupRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTopupsTopupRequestBody" (\obj -> ((GHC.Base.pure PostTopupsTopupRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the data type for the schema postTopupsTopupRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTopupsTopupRequestBodyMetadata' = PostTopupsTopupRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTopupsTopupRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsTopupRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTopupsTopupRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTopupsTopupRequestBodyMetadata')
-- | Represents a response of the operation 'postTopupsTopup'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTopupsTopupResponseError' is used.
data PostTopupsTopupResponse =                   
   PostTopupsTopupResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostTopupsTopupResponse200 Topup             -- ^ Successful response.
  | PostTopupsTopupResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
