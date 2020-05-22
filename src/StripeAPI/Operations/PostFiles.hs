{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postFiles
module StripeAPI.Operations.PostFiles where

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

-- | > POST /v1/files
-- 
-- \<p>To upload a file to Stripe, you’ll need to send a request of type \<code>multipart\/form-data\<\/code>. The request should contain the file you would like to upload, as well as the parameters for creating a file.\<\/p>
-- 
-- \<p>All of Stripe’s officially supported Client libraries should have support for sending \<code>multipart\/form-data\<\/code>.\<\/p>
postFiles :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostFilesResponse)) -- ^ Monad containing the result of the operation
postFiles config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFilesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFilesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               File)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFilesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/files") [])
-- | > POST /v1/files
-- 
-- The same as 'postFiles' but returns the raw 'Data.ByteString.Char8.ByteString'
postFilesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFilesRaw config = GHC.Base.id (StripeAPI.Common.doCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/files") [])
-- | > POST /v1/files
-- 
-- Monadic version of 'postFiles' (use with 'StripeAPI.Common.runWithConfiguration')
postFilesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                            StripeAPI.Common.SecurityScheme s) =>
              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                 m
                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                     (Network.HTTP.Client.Types.Response PostFilesResponse))
postFilesM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFilesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFilesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         File)
                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFilesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/files") [])
-- | > POST /v1/files
-- 
-- Monadic version of 'postFilesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postFilesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFilesRawM = GHC.Base.id (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/files") [])
-- | Represents a response of the operation 'postFiles'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFilesResponseError' is used.
data PostFilesResponse =                   
   PostFilesResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostFilesResponse200 File              -- ^ Successful response.
  | PostFilesResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)