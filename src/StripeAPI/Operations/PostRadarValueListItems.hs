{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postRadarValueListItems
module StripeAPI.Operations.PostRadarValueListItems where

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

-- | > POST /v1/radar/value_list_items
-- 
-- \<p>Creates a new \<code>ValueListItem\<\/code> object, which is added to the specified parent value list.\<\/p>
postRadarValueListItems :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostRadarValueListItemsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostRadarValueListItemsResponse)) -- ^ Monad containing the result of the operation
postRadarValueListItems config
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRadarValueListItemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListItemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       Radar'valueListItem)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListItemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/radar/value_list_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/radar/value_list_items
-- 
-- The same as 'postRadarValueListItems' but returns the raw 'Data.ByteString.Char8.ByteString'
postRadarValueListItemsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              StripeAPI.Common.Configuration s ->
                              PostRadarValueListItemsRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRadarValueListItemsRaw config
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/radar/value_list_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/radar/value_list_items
-- 
-- Monadic version of 'postRadarValueListItems' (use with 'StripeAPI.Common.runWithConfiguration')
postRadarValueListItemsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            PostRadarValueListItemsRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response PostRadarValueListItemsResponse))
postRadarValueListItemsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostRadarValueListItemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListItemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        Radar'valueListItem)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRadarValueListItemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/radar/value_list_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/radar/value_list_items
-- 
-- Monadic version of 'postRadarValueListItemsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postRadarValueListItemsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               PostRadarValueListItemsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postRadarValueListItemsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/radar/value_list_items") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postRadarValueListItemsRequestBody
-- 
-- 
data PostRadarValueListItemsRequestBody = PostRadarValueListItemsRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postRadarValueListItemsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | value: The value of the item (whose type must match the type of the parent value list).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 800
  , postRadarValueListItemsRequestBodyValue :: GHC.Base.String
  -- | value_list: The identifier of the value list which the created item will be added to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postRadarValueListItemsRequestBodyValueList :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostRadarValueListItemsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postRadarValueListItemsRequestBodyExpand obj) : (Data.Aeson..=) "value" (postRadarValueListItemsRequestBodyValue obj) : (Data.Aeson..=) "value_list" (postRadarValueListItemsRequestBodyValueList obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postRadarValueListItemsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "value" (postRadarValueListItemsRequestBodyValue obj) GHC.Base.<> (Data.Aeson..=) "value_list" (postRadarValueListItemsRequestBodyValueList obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostRadarValueListItemsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRadarValueListItemsRequestBody" (\obj -> ((GHC.Base.pure PostRadarValueListItemsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value_list"))
-- | Represents a response of the operation 'postRadarValueListItems'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRadarValueListItemsResponseError' is used.
data PostRadarValueListItemsResponse =                      
   PostRadarValueListItemsResponseError GHC.Base.String     -- ^ Means either no matching case available or a parse error
  | PostRadarValueListItemsResponse200 Radar'valueListItem  -- ^ Successful response.
  | PostRadarValueListItemsResponseDefault Error            -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)