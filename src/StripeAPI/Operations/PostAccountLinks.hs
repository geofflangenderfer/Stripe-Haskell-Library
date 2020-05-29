{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountLinks
module StripeAPI.Operations.PostAccountLinks where

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

-- | > POST /v1/account_links
-- 
-- \<p>Creates an AccountLink object that returns a single-use Stripe URL that the user can redirect their user to in order to take them through the Connect Onboarding flow.\<\/p>
postAccountLinks :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostAccountLinksRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountLinksResponse)) -- ^ Monad containing the result of the operation
postAccountLinks config
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  AccountLink)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account_links
-- 
-- The same as 'postAccountLinks' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountLinksRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       StripeAPI.Common.Configuration s ->
                       PostAccountLinksRequestBody ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountLinksRaw config
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account_links
-- 
-- Monadic version of 'postAccountLinks' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountLinksM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     PostAccountLinksRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response PostAccountLinksResponse))
postAccountLinksM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                   AccountLink)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account_links
-- 
-- Monadic version of 'postAccountLinksRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountLinksRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        PostAccountLinksRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountLinksRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account_links") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountLinksRequestBody
-- 
-- 
data PostAccountLinksRequestBody = PostAccountLinksRequestBody {
  -- | account: The identifier of the account to create an account link for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountLinksRequestBodyAccount :: GHC.Base.String
  -- | collect: Which information the platform needs to collect from the user. One of \`currently_due\` or \`eventually_due\`. Default is \`currently_due\`.
  , postAccountLinksRequestBodyCollect :: (GHC.Maybe.Maybe PostAccountLinksRequestBodyCollect')
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | failure_url: The URL that the user will be redirected to if the account link is no longer valid.
  , postAccountLinksRequestBodyFailureUrl :: GHC.Base.String
  -- | success_url: The URL that the user will be redirected to upon leaving or completing the linked flow successfully.
  , postAccountLinksRequestBodySuccessUrl :: GHC.Base.String
  -- | type: The type of account link the user is requesting. Possible values are \`custom_account_verification\` or \`custom_account_update\`.
  , postAccountLinksRequestBodyType :: PostAccountLinksRequestBodyType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountLinksRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postAccountLinksRequestBodyAccount obj) : (Data.Aeson..=) "collect" (postAccountLinksRequestBodyCollect obj) : (Data.Aeson..=) "expand" (postAccountLinksRequestBodyExpand obj) : (Data.Aeson..=) "failure_url" (postAccountLinksRequestBodyFailureUrl obj) : (Data.Aeson..=) "success_url" (postAccountLinksRequestBodySuccessUrl obj) : (Data.Aeson..=) "type" (postAccountLinksRequestBodyType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postAccountLinksRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "collect" (postAccountLinksRequestBodyCollect obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountLinksRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "failure_url" (postAccountLinksRequestBodyFailureUrl obj) GHC.Base.<> ((Data.Aeson..=) "success_url" (postAccountLinksRequestBodySuccessUrl obj) GHC.Base.<> (Data.Aeson..=) "type" (postAccountLinksRequestBodyType obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountLinksRequestBody" (\obj -> (((((GHC.Base.pure PostAccountLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "failure_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "success_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema postAccountLinksRequestBodyCollect\'
-- 
-- Which information the platform needs to collect from the user. One of \`currently_due\` or \`eventually_due\`. Default is \`currently_due\`.
data PostAccountLinksRequestBodyCollect'
    = PostAccountLinksRequestBodyCollect'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountLinksRequestBodyCollect'EnumTyped GHC.Base.String
    | PostAccountLinksRequestBodyCollect'EnumStringCurrentlyDue
    | PostAccountLinksRequestBodyCollect'EnumStringEventuallyDue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountLinksRequestBodyCollect'
    where toJSON (PostAccountLinksRequestBodyCollect'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountLinksRequestBodyCollect'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountLinksRequestBodyCollect'EnumStringCurrentlyDue) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "currently_due"
          toJSON (PostAccountLinksRequestBodyCollect'EnumStringEventuallyDue) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eventually_due"
instance Data.Aeson.FromJSON PostAccountLinksRequestBodyCollect'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "currently_due")
                                          then PostAccountLinksRequestBodyCollect'EnumStringCurrentlyDue
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eventually_due")
                                                then PostAccountLinksRequestBodyCollect'EnumStringEventuallyDue
                                                else PostAccountLinksRequestBodyCollect'EnumOther val)
-- | Defines the enum schema postAccountLinksRequestBodyType\'
-- 
-- The type of account link the user is requesting. Possible values are \`custom_account_verification\` or \`custom_account_update\`.
data PostAccountLinksRequestBodyType'
    = PostAccountLinksRequestBodyType'EnumOther Data.Aeson.Types.Internal.Value
    | PostAccountLinksRequestBodyType'EnumTyped GHC.Base.String
    | PostAccountLinksRequestBodyType'EnumStringCustomAccountUpdate
    | PostAccountLinksRequestBodyType'EnumStringCustomAccountVerification
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountLinksRequestBodyType'
    where toJSON (PostAccountLinksRequestBodyType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountLinksRequestBodyType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostAccountLinksRequestBodyType'EnumStringCustomAccountUpdate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_account_update"
          toJSON (PostAccountLinksRequestBodyType'EnumStringCustomAccountVerification) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_account_verification"
instance Data.Aeson.FromJSON PostAccountLinksRequestBodyType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_account_update")
                                          then PostAccountLinksRequestBodyType'EnumStringCustomAccountUpdate
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom_account_verification")
                                                then PostAccountLinksRequestBodyType'EnumStringCustomAccountVerification
                                                else PostAccountLinksRequestBodyType'EnumOther val)
-- | Represents a response of the operation 'postAccountLinks'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountLinksResponseError' is used.
data PostAccountLinksResponse =                   
   PostAccountLinksResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountLinksResponse200 AccountLink       -- ^ Successful response.
  | PostAccountLinksResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
