{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postSourcesSource
module StripeAPI.Operations.PostSourcesSource where

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

-- | > POST /v1/sources/{source}
-- 
-- \<p>Updates the specified source by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
-- 
-- \<p>This request accepts the \<code>metadata\<\/code> and \<code>owner\<\/code> as arguments. It is also possible to update type specific information for selected payment methods. Please refer to our \<a href=\"\/docs\/sources\">payment method guides\<\/a> for more detail.\<\/p>
postSourcesSource :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                               -- ^ source | Constraints: Maximum length of 5000
  -> PostSourcesSourceRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostSourcesSourceResponse)) -- ^ Monad containing the result of the operation
postSourcesSource config
                  source
                  body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSourcesSourceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesSourceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Source)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesSourceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/sources/{source}
-- 
-- The same as 'postSourcesSource' but returns the raw 'Data.ByteString.Char8.ByteString'
postSourcesSourceRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        StripeAPI.Common.Configuration s ->
                        GHC.Base.String ->
                        PostSourcesSourceRequestBody ->
                        m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSourcesSourceRaw config
                     source
                     body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/sources/{source}
-- 
-- Monadic version of 'postSourcesSource' (use with 'StripeAPI.Common.runWithConfiguration')
postSourcesSourceM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      GHC.Base.String ->
                      PostSourcesSourceRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response PostSourcesSourceResponse))
postSourcesSourceM source
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSourcesSourceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesSourceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      Source)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSourcesSourceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/sources/{source}
-- 
-- Monadic version of 'postSourcesSourceRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postSourcesSourceRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         GHC.Base.String ->
                         PostSourcesSourceRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postSourcesSourceRawM source
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel source)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postSourcesSourceRequestBody
-- 
-- 
data PostSourcesSourceRequestBody = PostSourcesSourceRequestBody {
  -- | amount: Amount associated with the source.
  postSourcesSourceRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postSourcesSourceRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | mandate: Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
  , postSourcesSourceRequestBodyMandate :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postSourcesSourceRequestBodyMetadata :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMetadata')
  -- | owner: Information about the owner of the payment instrument that may be used or required by particular source types.
  , postSourcesSourceRequestBodyOwner :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyOwner')
  -- | source_order: Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
  , postSourcesSourceRequestBodySourceOrder :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodySourceOrder')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postSourcesSourceRequestBodyAmount obj) : (Data.Aeson..=) "expand" (postSourcesSourceRequestBodyExpand obj) : (Data.Aeson..=) "mandate" (postSourcesSourceRequestBodyMandate obj) : (Data.Aeson..=) "metadata" (postSourcesSourceRequestBodyMetadata obj) : (Data.Aeson..=) "owner" (postSourcesSourceRequestBodyOwner obj) : (Data.Aeson..=) "source_order" (postSourcesSourceRequestBodySourceOrder obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postSourcesSourceRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postSourcesSourceRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate" (postSourcesSourceRequestBodyMandate obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postSourcesSourceRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postSourcesSourceRequestBodyOwner obj) GHC.Base.<> (Data.Aeson..=) "source_order" (postSourcesSourceRequestBodySourceOrder obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBody" (\obj -> (((((GHC.Base.pure PostSourcesSourceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order"))
-- | Defines the data type for the schema postSourcesSourceRequestBodyMandate\'
-- 
-- Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
data PostSourcesSourceRequestBodyMandate' = PostSourcesSourceRequestBodyMandate' {
  -- | acceptance
  postSourcesSourceRequestBodyMandate'Acceptance :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate'Acceptance')
  -- | amount
  , postSourcesSourceRequestBodyMandate'Amount :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate'Amount'Variants)
  -- | currency
  , postSourcesSourceRequestBodyMandate'Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | interval
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyMandate'Interval :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate'Interval')
  -- | notification_method
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyMandate'NotificationMethod :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate'NotificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "acceptance" (postSourcesSourceRequestBodyMandate'Acceptance obj) : (Data.Aeson..=) "amount" (postSourcesSourceRequestBodyMandate'Amount obj) : (Data.Aeson..=) "currency" (postSourcesSourceRequestBodyMandate'Currency obj) : (Data.Aeson..=) "interval" (postSourcesSourceRequestBodyMandate'Interval obj) : (Data.Aeson..=) "notification_method" (postSourcesSourceRequestBodyMandate'NotificationMethod obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "acceptance" (postSourcesSourceRequestBodyMandate'Acceptance obj) GHC.Base.<> ((Data.Aeson..=) "amount" (postSourcesSourceRequestBodyMandate'Amount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSourcesSourceRequestBodyMandate'Currency obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postSourcesSourceRequestBodyMandate'Interval obj) GHC.Base.<> (Data.Aeson..=) "notification_method" (postSourcesSourceRequestBodyMandate'NotificationMethod obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodyMandate'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodyMandate'" (\obj -> ((((GHC.Base.pure PostSourcesSourceRequestBodyMandate' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "acceptance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "notification_method"))
-- | Defines the data type for the schema postSourcesSourceRequestBodyMandate\'Acceptance\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Acceptance' = PostSourcesSourceRequestBodyMandate'Acceptance' {
  -- | date
  postSourcesSourceRequestBodyMandate'Acceptance'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | ip
  , postSourcesSourceRequestBodyMandate'Acceptance'Ip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | offline
  , postSourcesSourceRequestBodyMandate'Acceptance'Offline :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate'Acceptance'Offline')
  -- | online
  , postSourcesSourceRequestBodyMandate'Acceptance'Online :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate'Acceptance'Online')
  -- | status
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyMandate'Acceptance'Status :: PostSourcesSourceRequestBodyMandate'Acceptance'Status'
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyMandate'Acceptance'Type :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyMandate'Acceptance'Type')
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyMandate'Acceptance'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Acceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postSourcesSourceRequestBodyMandate'Acceptance'Date obj) : (Data.Aeson..=) "ip" (postSourcesSourceRequestBodyMandate'Acceptance'Ip obj) : (Data.Aeson..=) "offline" (postSourcesSourceRequestBodyMandate'Acceptance'Offline obj) : (Data.Aeson..=) "online" (postSourcesSourceRequestBodyMandate'Acceptance'Online obj) : (Data.Aeson..=) "status" (postSourcesSourceRequestBodyMandate'Acceptance'Status obj) : (Data.Aeson..=) "type" (postSourcesSourceRequestBodyMandate'Acceptance'Type obj) : (Data.Aeson..=) "user_agent" (postSourcesSourceRequestBodyMandate'Acceptance'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postSourcesSourceRequestBodyMandate'Acceptance'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postSourcesSourceRequestBodyMandate'Acceptance'Ip obj) GHC.Base.<> ((Data.Aeson..=) "offline" (postSourcesSourceRequestBodyMandate'Acceptance'Offline obj) GHC.Base.<> ((Data.Aeson..=) "online" (postSourcesSourceRequestBodyMandate'Acceptance'Online obj) GHC.Base.<> ((Data.Aeson..=) "status" (postSourcesSourceRequestBodyMandate'Acceptance'Status obj) GHC.Base.<> ((Data.Aeson..=) "type" (postSourcesSourceRequestBodyMandate'Acceptance'Type obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postSourcesSourceRequestBodyMandate'Acceptance'UserAgent obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodyMandate'Acceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodyMandate'Acceptance'" (\obj -> ((((((GHC.Base.pure PostSourcesSourceRequestBodyMandate'Acceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Defines the data type for the schema postSourcesSourceRequestBodyMandate\'Acceptance\'Offline\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Acceptance'Offline' = PostSourcesSourceRequestBodyMandate'Acceptance'Offline' {
  -- | contact_email
  postSourcesSourceRequestBodyMandate'Acceptance'Offline'ContactEmail :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Acceptance'Offline'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "contact_email" (postSourcesSourceRequestBodyMandate'Acceptance'Offline'ContactEmail obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "contact_email" (postSourcesSourceRequestBodyMandate'Acceptance'Offline'ContactEmail obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodyMandate'Acceptance'Offline'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodyMandate'Acceptance'Offline'" (\obj -> GHC.Base.pure PostSourcesSourceRequestBodyMandate'Acceptance'Offline' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "contact_email"))
-- | Defines the data type for the schema postSourcesSourceRequestBodyMandate\'Acceptance\'Online\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Acceptance'Online' = PostSourcesSourceRequestBodyMandate'Acceptance'Online' {
  -- | date
  postSourcesSourceRequestBodyMandate'Acceptance'Online'Date :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | ip
  , postSourcesSourceRequestBodyMandate'Acceptance'Online'Ip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyMandate'Acceptance'Online'UserAgent :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Acceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (postSourcesSourceRequestBodyMandate'Acceptance'Online'Date obj) : (Data.Aeson..=) "ip" (postSourcesSourceRequestBodyMandate'Acceptance'Online'Ip obj) : (Data.Aeson..=) "user_agent" (postSourcesSourceRequestBodyMandate'Acceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (postSourcesSourceRequestBodyMandate'Acceptance'Online'Date obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postSourcesSourceRequestBodyMandate'Acceptance'Online'Ip obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postSourcesSourceRequestBodyMandate'Acceptance'Online'UserAgent obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodyMandate'Acceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodyMandate'Acceptance'Online'" (\obj -> ((GHC.Base.pure PostSourcesSourceRequestBodyMandate'Acceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))
-- | Defines the enum schema postSourcesSourceRequestBodyMandate\'Acceptance\'Status\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Acceptance'Status'
    = PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumTyped GHC.Base.String
    | PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringAccepted
    | PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringPending
    | PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringRefused
    | PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringRevoked
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Acceptance'Status'
    where toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringAccepted) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "accepted"
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringRefused) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "refused"
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringRevoked) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "revoked"
instance Data.Aeson.FromJSON PostSourcesSourceRequestBodyMandate'Acceptance'Status'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "accepted")
                                          then PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringAccepted
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                then PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringPending
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "refused")
                                                      then PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringRefused
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "revoked")
                                                            then PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumStringRevoked
                                                            else PostSourcesSourceRequestBodyMandate'Acceptance'Status'EnumOther val)
-- | Defines the enum schema postSourcesSourceRequestBodyMandate\'Acceptance\'Type\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Acceptance'Type'
    = PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumTyped GHC.Base.String
    | PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumStringOffline
    | PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Acceptance'Type'
    where toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumStringOffline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline"
          toJSON (PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostSourcesSourceRequestBodyMandate'Acceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline")
                                          then PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumStringOffline
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                                then PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumStringOnline
                                                else PostSourcesSourceRequestBodyMandate'Acceptance'Type'EnumOther val)
-- | Defines the enum schema postSourcesSourceRequestBodyMandate\'Amount\'OneOf1
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Amount'OneOf1
    = PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumTyped GHC.Base.String
    | PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Amount'OneOf1
    where toJSON (PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostSourcesSourceRequestBodyMandate'Amount'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumString_
                                          else PostSourcesSourceRequestBodyMandate'Amount'OneOf1EnumOther val)
-- | Define the one-of schema postSourcesSourceRequestBodyMandate\'Amount\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Amount'Variants
    = PostSourcesSourceRequestBodyMandate'Amount'PostSourcesSourceRequestBodyMandate'Amount'OneOf1 PostSourcesSourceRequestBodyMandate'Amount'OneOf1
    | PostSourcesSourceRequestBodyMandate'Amount'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Amount'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostSourcesSourceRequestBodyMandate'Amount'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postSourcesSourceRequestBodyMandate\'Interval\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'Interval'
    = PostSourcesSourceRequestBodyMandate'Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesSourceRequestBodyMandate'Interval'EnumTyped GHC.Base.String
    | PostSourcesSourceRequestBodyMandate'Interval'EnumStringOneTime
    | PostSourcesSourceRequestBodyMandate'Interval'EnumStringScheduled
    | PostSourcesSourceRequestBodyMandate'Interval'EnumStringVariable
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'Interval'
    where toJSON (PostSourcesSourceRequestBodyMandate'Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'Interval'EnumStringOneTime) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_time"
          toJSON (PostSourcesSourceRequestBodyMandate'Interval'EnumStringScheduled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "scheduled"
          toJSON (PostSourcesSourceRequestBodyMandate'Interval'EnumStringVariable) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "variable"
instance Data.Aeson.FromJSON PostSourcesSourceRequestBodyMandate'Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_time")
                                          then PostSourcesSourceRequestBodyMandate'Interval'EnumStringOneTime
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "scheduled")
                                                then PostSourcesSourceRequestBodyMandate'Interval'EnumStringScheduled
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "variable")
                                                      then PostSourcesSourceRequestBodyMandate'Interval'EnumStringVariable
                                                      else PostSourcesSourceRequestBodyMandate'Interval'EnumOther val)
-- | Defines the enum schema postSourcesSourceRequestBodyMandate\'Notification_method\'
-- 
-- 
data PostSourcesSourceRequestBodyMandate'NotificationMethod'
    = PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumTyped GHC.Base.String
    | PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringDeprecatedNone
    | PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringEmail
    | PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringManual
    | PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringNone
    | PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringStripeEmail
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMandate'NotificationMethod'
    where toJSON (PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringDeprecatedNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deprecated_none"
          toJSON (PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email"
          toJSON (PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
          toJSON (PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringStripeEmail) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "stripe_email"
instance Data.Aeson.FromJSON PostSourcesSourceRequestBodyMandate'NotificationMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deprecated_none")
                                          then PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringDeprecatedNone
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "email")
                                                then PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringEmail
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                      then PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringManual
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                            then PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringNone
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "stripe_email")
                                                                  then PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumStringStripeEmail
                                                                  else PostSourcesSourceRequestBodyMandate'NotificationMethod'EnumOther val)
-- | Defines the data type for the schema postSourcesSourceRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostSourcesSourceRequestBodyMetadata' = PostSourcesSourceRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodyMetadata'" (\obj -> GHC.Base.pure PostSourcesSourceRequestBodyMetadata')
-- | Defines the data type for the schema postSourcesSourceRequestBodyOwner\'
-- 
-- Information about the owner of the payment instrument that may be used or required by particular source types.
data PostSourcesSourceRequestBodyOwner' = PostSourcesSourceRequestBodyOwner' {
  -- | address
  postSourcesSourceRequestBodyOwner'Address :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodyOwner'Address')
  -- | email
  , postSourcesSourceRequestBodyOwner'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyOwner'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyOwner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyOwner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postSourcesSourceRequestBodyOwner'Address obj) : (Data.Aeson..=) "email" (postSourcesSourceRequestBodyOwner'Email obj) : (Data.Aeson..=) "name" (postSourcesSourceRequestBodyOwner'Name obj) : (Data.Aeson..=) "phone" (postSourcesSourceRequestBodyOwner'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postSourcesSourceRequestBodyOwner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postSourcesSourceRequestBodyOwner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postSourcesSourceRequestBodyOwner'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postSourcesSourceRequestBodyOwner'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodyOwner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodyOwner'" (\obj -> (((GHC.Base.pure PostSourcesSourceRequestBodyOwner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
-- | Defines the data type for the schema postSourcesSourceRequestBodyOwner\'Address\'
-- 
-- 
data PostSourcesSourceRequestBodyOwner'Address' = PostSourcesSourceRequestBodyOwner'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSourcesSourceRequestBodyOwner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyOwner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyOwner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyOwner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyOwner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodyOwner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodyOwner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postSourcesSourceRequestBodyOwner'Address'City obj) : (Data.Aeson..=) "country" (postSourcesSourceRequestBodyOwner'Address'Country obj) : (Data.Aeson..=) "line1" (postSourcesSourceRequestBodyOwner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postSourcesSourceRequestBodyOwner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postSourcesSourceRequestBodyOwner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postSourcesSourceRequestBodyOwner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postSourcesSourceRequestBodyOwner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postSourcesSourceRequestBodyOwner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postSourcesSourceRequestBodyOwner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postSourcesSourceRequestBodyOwner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postSourcesSourceRequestBodyOwner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postSourcesSourceRequestBodyOwner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodyOwner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodyOwner'Address'" (\obj -> (((((GHC.Base.pure PostSourcesSourceRequestBodyOwner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postSourcesSourceRequestBodySource_order\'
-- 
-- Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
data PostSourcesSourceRequestBodySourceOrder' = PostSourcesSourceRequestBodySourceOrder' {
  -- | items
  postSourcesSourceRequestBodySourceOrder'Items :: (GHC.Maybe.Maybe ([] PostSourcesSourceRequestBodySourceOrder'Items'))
  -- | shipping
  , postSourcesSourceRequestBodySourceOrder'Shipping :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodySourceOrder'Shipping')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodySourceOrder'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "items" (postSourcesSourceRequestBodySourceOrder'Items obj) : (Data.Aeson..=) "shipping" (postSourcesSourceRequestBodySourceOrder'Shipping obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "items" (postSourcesSourceRequestBodySourceOrder'Items obj) GHC.Base.<> (Data.Aeson..=) "shipping" (postSourcesSourceRequestBodySourceOrder'Shipping obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodySourceOrder'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodySourceOrder'" (\obj -> (GHC.Base.pure PostSourcesSourceRequestBodySourceOrder' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping"))
-- | Defines the data type for the schema postSourcesSourceRequestBodySource_order\'Items\'
-- 
-- 
data PostSourcesSourceRequestBodySourceOrder'Items' = PostSourcesSourceRequestBodySourceOrder'Items' {
  -- | amount
  postSourcesSourceRequestBodySourceOrder'Items'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency
  , postSourcesSourceRequestBodySourceOrder'Items'Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1000
  , postSourcesSourceRequestBodySourceOrder'Items'Description :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | parent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Items'Parent :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postSourcesSourceRequestBodySourceOrder'Items'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Items'Type :: (GHC.Maybe.Maybe PostSourcesSourceRequestBodySourceOrder'Items'Type')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodySourceOrder'Items'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postSourcesSourceRequestBodySourceOrder'Items'Amount obj) : (Data.Aeson..=) "currency" (postSourcesSourceRequestBodySourceOrder'Items'Currency obj) : (Data.Aeson..=) "description" (postSourcesSourceRequestBodySourceOrder'Items'Description obj) : (Data.Aeson..=) "parent" (postSourcesSourceRequestBodySourceOrder'Items'Parent obj) : (Data.Aeson..=) "quantity" (postSourcesSourceRequestBodySourceOrder'Items'Quantity obj) : (Data.Aeson..=) "type" (postSourcesSourceRequestBodySourceOrder'Items'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postSourcesSourceRequestBodySourceOrder'Items'Amount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postSourcesSourceRequestBodySourceOrder'Items'Currency obj) GHC.Base.<> ((Data.Aeson..=) "description" (postSourcesSourceRequestBodySourceOrder'Items'Description obj) GHC.Base.<> ((Data.Aeson..=) "parent" (postSourcesSourceRequestBodySourceOrder'Items'Parent obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postSourcesSourceRequestBodySourceOrder'Items'Quantity obj) GHC.Base.<> (Data.Aeson..=) "type" (postSourcesSourceRequestBodySourceOrder'Items'Type obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodySourceOrder'Items'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodySourceOrder'Items'" (\obj -> (((((GHC.Base.pure PostSourcesSourceRequestBodySourceOrder'Items' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the enum schema postSourcesSourceRequestBodySource_order\'Items\'Type\'
-- 
-- 
data PostSourcesSourceRequestBodySourceOrder'Items'Type'
    = PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumTyped GHC.Base.String
    | PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringDiscount
    | PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringShipping
    | PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringSku
    | PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringTax
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodySourceOrder'Items'Type'
    where toJSON (PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringDiscount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount"
          toJSON (PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringShipping) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping"
          toJSON (PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringSku) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku"
          toJSON (PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringTax) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax"
instance Data.Aeson.FromJSON PostSourcesSourceRequestBodySourceOrder'Items'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "discount")
                                          then PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringDiscount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipping")
                                                then PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringShipping
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku")
                                                      then PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringSku
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax")
                                                            then PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumStringTax
                                                            else PostSourcesSourceRequestBodySourceOrder'Items'Type'EnumOther val)
-- | Defines the data type for the schema postSourcesSourceRequestBodySource_order\'Shipping\'
-- 
-- 
data PostSourcesSourceRequestBodySourceOrder'Shipping' = PostSourcesSourceRequestBodySourceOrder'Shipping' {
  -- | address
  postSourcesSourceRequestBodySourceOrder'Shipping'Address :: PostSourcesSourceRequestBodySourceOrder'Shipping'Address'
  -- | carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodySourceOrder'Shipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postSourcesSourceRequestBodySourceOrder'Shipping'Address obj) : (Data.Aeson..=) "carrier" (postSourcesSourceRequestBodySourceOrder'Shipping'Carrier obj) : (Data.Aeson..=) "name" (postSourcesSourceRequestBodySourceOrder'Shipping'Name obj) : (Data.Aeson..=) "phone" (postSourcesSourceRequestBodySourceOrder'Shipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postSourcesSourceRequestBodySourceOrder'Shipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postSourcesSourceRequestBodySourceOrder'Shipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postSourcesSourceRequestBodySourceOrder'Shipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postSourcesSourceRequestBodySourceOrder'Shipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postSourcesSourceRequestBodySourceOrder'Shipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postSourcesSourceRequestBodySourceOrder'Shipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodySourceOrder'Shipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodySourceOrder'Shipping'" (\obj -> ((((GHC.Base.pure PostSourcesSourceRequestBodySourceOrder'Shipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
-- | Defines the data type for the schema postSourcesSourceRequestBodySource_order\'Shipping\'Address\'
-- 
-- 
data PostSourcesSourceRequestBodySourceOrder'Shipping'Address' = PostSourcesSourceRequestBodySourceOrder'Shipping'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSourcesSourceRequestBodySourceOrder'Shipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postSourcesSourceRequestBodySourceOrder'Shipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostSourcesSourceRequestBodySourceOrder'Shipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'City obj) : (Data.Aeson..=) "country" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'Country obj) : (Data.Aeson..=) "line1" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postSourcesSourceRequestBodySourceOrder'Shipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSourcesSourceRequestBodySourceOrder'Shipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSourcesSourceRequestBodySourceOrder'Shipping'Address'" (\obj -> (((((GHC.Base.pure PostSourcesSourceRequestBodySourceOrder'Shipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Represents a response of the operation 'postSourcesSource'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSourcesSourceResponseError' is used.
data PostSourcesSourceResponse =                   
   PostSourcesSourceResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostSourcesSourceResponse200 Source            -- ^ Successful response.
  | PostSourcesSourceResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)