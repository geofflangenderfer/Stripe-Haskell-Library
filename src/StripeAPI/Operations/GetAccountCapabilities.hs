{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getAccountCapabilities
module StripeAPI.Operations.GetAccountCapabilities where

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

-- | > GET /v1/account/capabilities
-- 
-- \<p>Returns a list of capabilities associated with the account. The capabilities are returned sorted by creation date, with the most recent capability appearing first.\<\/p>
getAccountCapabilities :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GetAccountCapabilitiesRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetAccountCapabilitiesResponse)) -- ^ Monad containing the result of the operation
getAccountCapabilities config
                       expand
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountCapabilitiesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountCapabilitiesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetAccountCapabilitiesResponseBody200)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountCapabilitiesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/capabilities") ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/account/capabilities
-- 
-- The same as 'getAccountCapabilities' but returns the raw 'Data.ByteString.Char8.ByteString'
getAccountCapabilitiesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GetAccountCapabilitiesRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountCapabilitiesRaw config
                          expand
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/capabilities") ((Data.Text.pack ['e',
                                                                                                                                                                                                                  'x',
                                                                                                                                                                                                                  'p',
                                                                                                                                                                                                                  'a',
                                                                                                                                                                                                                  'n',
                                                                                                                                                                                                                  'd'],
                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/account/capabilities
-- 
-- Monadic version of 'getAccountCapabilities' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountCapabilitiesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GetAccountCapabilitiesRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response GetAccountCapabilitiesResponse))
getAccountCapabilitiesM expand
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountCapabilitiesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountCapabilitiesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     GetAccountCapabilitiesResponseBody200)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountCapabilitiesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/capabilities") ((Data.Text.pack ['e',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'x',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'p',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'a',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'n',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 'd'],
                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/account/capabilities
-- 
-- Monadic version of 'getAccountCapabilitiesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountCapabilitiesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GetAccountCapabilitiesRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountCapabilitiesRawM expand
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/capabilities") ((Data.Text.pack ['e',
                                                                                                                                                                                                             'x',
                                                                                                                                                                                                             'p',
                                                                                                                                                                                                             'a',
                                                                                                                                                                                                             'n',
                                                                                                                                                                                                             'd'],
                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getAccountCapabilitiesRequestBody
-- 
-- 
data GetAccountCapabilitiesRequestBody = GetAccountCapabilitiesRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountCapabilitiesRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountCapabilitiesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountCapabilitiesRequestBody" (\obj -> GHC.Base.pure GetAccountCapabilitiesRequestBody)
-- | Represents a response of the operation 'getAccountCapabilities'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountCapabilitiesResponseError' is used.
data GetAccountCapabilitiesResponse =                                        
   GetAccountCapabilitiesResponseError GHC.Base.String                       -- ^ Means either no matching case available or a parse error
  | GetAccountCapabilitiesResponse200 GetAccountCapabilitiesResponseBody200  -- ^ Successful response.
  | GetAccountCapabilitiesResponseDefault Error                              -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetAccountCapabilitiesResponseBody200
-- 
-- 
data GetAccountCapabilitiesResponseBody200 = GetAccountCapabilitiesResponseBody200 {
  -- | data
  getAccountCapabilitiesResponseBody200Data :: ([] Capability)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getAccountCapabilitiesResponseBody200HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getAccountCapabilitiesResponseBody200Object :: GetAccountCapabilitiesResponseBody200Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountCapabilitiesResponseBody200Url :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountCapabilitiesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getAccountCapabilitiesResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getAccountCapabilitiesResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getAccountCapabilitiesResponseBody200Object obj) : (Data.Aeson..=) "url" (getAccountCapabilitiesResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getAccountCapabilitiesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getAccountCapabilitiesResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountCapabilitiesResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getAccountCapabilitiesResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountCapabilitiesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountCapabilitiesResponseBody200" (\obj -> (((GHC.Base.pure GetAccountCapabilitiesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema GetAccountCapabilitiesResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetAccountCapabilitiesResponseBody200Object'
    = GetAccountCapabilitiesResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountCapabilitiesResponseBody200Object'EnumTyped GHC.Base.String
    | GetAccountCapabilitiesResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountCapabilitiesResponseBody200Object'
    where toJSON (GetAccountCapabilitiesResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountCapabilitiesResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountCapabilitiesResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetAccountCapabilitiesResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetAccountCapabilitiesResponseBody200Object'EnumStringList
                                          else GetAccountCapabilitiesResponseBody200Object'EnumOther val)
