{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postDisputesDisputeClose
module StripeAPI.Operations.PostDisputesDisputeClose where

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

-- | > POST /v1/disputes/{dispute}/close
-- 
-- \<p>Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.\<\/p>
-- 
-- \<p>The status of the dispute will change from \<code>needs_response\<\/code> to \<code>lost\<\/code>. \<em>Closing a dispute is irreversible\<\/em>.\<\/p>
postDisputesDisputeClose :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                      -- ^ dispute | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostDisputesDisputeCloseRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostDisputesDisputeCloseResponse)) -- ^ Monad containing the result of the operation
postDisputesDisputeClose config
                         dispute
                         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostDisputesDisputeCloseResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeCloseResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Dispute)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeCloseResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "/close"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/disputes/{dispute}/close
-- 
-- The same as 'postDisputesDisputeClose' but returns the raw 'Data.ByteString.Char8.ByteString'
postDisputesDisputeCloseRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               StripeAPI.Common.Configuration s ->
                               GHC.Base.String ->
                               GHC.Maybe.Maybe PostDisputesDisputeCloseRequestBody ->
                               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postDisputesDisputeCloseRaw config
                            dispute
                            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "/close"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/disputes/{dispute}/close
-- 
-- Monadic version of 'postDisputesDisputeClose' (use with 'StripeAPI.Common.runWithConfiguration')
postDisputesDisputeCloseM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Base.String ->
                             GHC.Maybe.Maybe PostDisputesDisputeCloseRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response PostDisputesDisputeCloseResponse))
postDisputesDisputeCloseM dispute
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostDisputesDisputeCloseResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeCloseResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Dispute)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeCloseResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "/close"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/disputes/{dispute}/close
-- 
-- Monadic version of 'postDisputesDisputeCloseRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postDisputesDisputeCloseRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                GHC.Maybe.Maybe PostDisputesDisputeCloseRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postDisputesDisputeCloseRawM dispute
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "/close"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postDisputesDisputeCloseRequestBody
-- 
-- 
data PostDisputesDisputeCloseRequestBody = PostDisputesDisputeCloseRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postDisputesDisputeCloseRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostDisputesDisputeCloseRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postDisputesDisputeCloseRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postDisputesDisputeCloseRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeCloseRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeCloseRequestBody" (\obj -> GHC.Base.pure PostDisputesDisputeCloseRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'postDisputesDisputeClose'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostDisputesDisputeCloseResponseError' is used.
data PostDisputesDisputeCloseResponse =                   
   PostDisputesDisputeCloseResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostDisputesDisputeCloseResponse200 Dispute           -- ^ Successful response.
  | PostDisputesDisputeCloseResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
