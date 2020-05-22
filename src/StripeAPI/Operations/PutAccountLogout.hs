{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation putAccountLogout
module StripeAPI.Operations.PutAccountLogout where

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

-- | > PUT /v1/account/logout
-- 
-- \<p>Invalidates all sessions for a light account, for a platform to use during platform logout.\<\/p>
-- 
-- \<p>\<strong>You may only log out \<a href=\"\/docs\/connect\/express-accounts\">Express accounts\<\/a> connected to your platform\<\/strong>.\<\/p>
putAccountLogout :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PutAccountLogoutRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PutAccountLogoutResponse)) -- ^ Monad containing the result of the operation
putAccountLogout config
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PutAccountLogoutResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutAccountLogoutResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  LightAccountLogout)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PutAccountLogoutResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "PUT")) (Data.Text.pack "/v1/account/logout") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > PUT /v1/account/logout
-- 
-- The same as 'putAccountLogout' but returns the raw 'Data.ByteString.Char8.ByteString'
putAccountLogoutRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       PutAccountLogoutRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
putAccountLogoutRaw config
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "PUT")) (Data.Text.pack "/v1/account/logout") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > PUT /v1/account/logout
-- 
-- Monadic version of 'putAccountLogout' (use with 'StripeAPI.Common.runWithConfiguration')
putAccountLogoutM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PutAccountLogoutRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response PutAccountLogoutResponse))
putAccountLogoutM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PutAccountLogoutResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutAccountLogoutResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                   LightAccountLogout)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PutAccountLogoutResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "PUT")) (Data.Text.pack "/v1/account/logout") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > PUT /v1/account/logout
-- 
-- Monadic version of 'putAccountLogoutRaw' (use with 'StripeAPI.Common.runWithConfiguration')
putAccountLogoutRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PutAccountLogoutRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
putAccountLogoutRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "PUT")) (Data.Text.pack "/v1/account/logout") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema putAccountLogoutRequestBody
-- 
-- 
data PutAccountLogoutRequestBody = PutAccountLogoutRequestBody {
  -- | account
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  putAccountLogoutRequestBodyAccount :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , putAccountLogoutRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutAccountLogoutRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (putAccountLogoutRequestBodyAccount obj) : (Data.Aeson..=) "expand" (putAccountLogoutRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (putAccountLogoutRequestBodyAccount obj) GHC.Base.<> (Data.Aeson..=) "expand" (putAccountLogoutRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutAccountLogoutRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutAccountLogoutRequestBody" (\obj -> (GHC.Base.pure PutAccountLogoutRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'putAccountLogout'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PutAccountLogoutResponseError' is used.
data PutAccountLogoutResponse =                     
   PutAccountLogoutResponseError GHC.Base.String    -- ^ Means either no matching case available or a parse error
  | PutAccountLogoutResponse200 LightAccountLogout  -- ^ Successful response.
  | PutAccountLogoutResponseDefault Error           -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)