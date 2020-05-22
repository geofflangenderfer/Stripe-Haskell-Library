{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTransfersTransferReversalsId
module StripeAPI.Operations.PostTransfersTransferReversalsId where

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

-- | > POST /v1/transfers/{transfer}/reversals/{id}
-- 
-- \<p>Updates the specified reversal by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
-- 
-- \<p>This request only accepts metadata and description as arguments.\<\/p>
postTransfersTransferReversalsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                              -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                              -- ^ transfer | Constraints: Maximum length of 5000
  -> PostTransfersTransferReversalsIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTransfersTransferReversalsIdResponse)) -- ^ Monad containing the result of the operation
postTransfersTransferReversalsId config
                                 id
                                 transfer
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTransfersTransferReversalsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  TransferReversal)
                                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers/{transfer}/reversals/{id}
-- 
-- The same as 'postTransfersTransferReversalsId' but returns the raw 'Data.ByteString.Char8.ByteString'
postTransfersTransferReversalsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       StripeAPI.Common.Configuration s ->
                                       GHC.Base.String ->
                                       GHC.Base.String ->
                                       PostTransfersTransferReversalsIdRequestBody ->
                                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersTransferReversalsIdRaw config
                                    id
                                    transfer
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers/{transfer}/reversals/{id}
-- 
-- Monadic version of 'postTransfersTransferReversalsId' (use with 'StripeAPI.Common.runWithConfiguration')
postTransfersTransferReversalsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     GHC.Base.String ->
                                     GHC.Base.String ->
                                     PostTransfersTransferReversalsIdRequestBody ->
                                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                        m
                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                            (Network.HTTP.Client.Types.Response PostTransfersTransferReversalsIdResponse))
postTransfersTransferReversalsIdM id
                                  transfer
                                  body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTransfersTransferReversalsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   TransferReversal)
                                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/transfers/{transfer}/reversals/{id}
-- 
-- Monadic version of 'postTransfersTransferReversalsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTransfersTransferReversalsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                      StripeAPI.Common.SecurityScheme s) =>
                                        GHC.Base.String ->
                                        GHC.Base.String ->
                                        PostTransfersTransferReversalsIdRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTransfersTransferReversalsIdRawM id
                                     transfer
                                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack (("/v1/transfers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel transfer)) GHC.Base.++ "/reversals/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTransfersTransferReversalsIdRequestBody
-- 
-- 
data PostTransfersTransferReversalsIdRequestBody = PostTransfersTransferReversalsIdRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postTransfersTransferReversalsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTransfersTransferReversalsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostTransfersTransferReversalsIdRequestBodyMetadata')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersTransferReversalsIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postTransfersTransferReversalsIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTransfersTransferReversalsIdRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postTransfersTransferReversalsIdRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postTransfersTransferReversalsIdRequestBodyMetadata obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferReversalsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferReversalsIdRequestBody" (\obj -> (GHC.Base.pure PostTransfersTransferReversalsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the data type for the schema postTransfersTransferReversalsIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTransfersTransferReversalsIdRequestBodyMetadata' = PostTransfersTransferReversalsIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTransfersTransferReversalsIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferReversalsIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferReversalsIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTransfersTransferReversalsIdRequestBodyMetadata')
-- | Represents a response of the operation 'postTransfersTransferReversalsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTransfersTransferReversalsIdResponseError' is used.
data PostTransfersTransferReversalsIdResponse =                   
   PostTransfersTransferReversalsIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostTransfersTransferReversalsIdResponse200 TransferReversal  -- ^ Successful response.
  | PostTransfersTransferReversalsIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)