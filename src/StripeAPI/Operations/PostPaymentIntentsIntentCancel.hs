{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPaymentIntentsIntentCancel
module StripeAPI.Operations.PostPaymentIntentsIntentCancel where

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

-- | > POST /v1/payment_intents/{intent}/cancel
-- 
-- \<p>A PaymentIntent object can be canceled when it is in one of these statuses: \<code>requires_payment_method\<\/code>, \<code>requires_capture\<\/code>, \<code>requires_confirmation\<\/code>, \<code>requires_action\<\/code>. \<\/p>
-- 
-- \<p>Once canceled, no additional charges will be made by the PaymentIntent and any operations on the PaymentIntent will fail with an error. For PaymentIntents with \<code>status=\'requires_capture\'\<\/code>, the remaining \<code>amount_capturable\<\/code> will automatically be refunded.\<\/p>
postPaymentIntentsIntentCancel :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                            -- ^ intent | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentIntentsIntentCancelRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCancelResponse)) -- ^ Monad containing the result of the operation
postPaymentIntentsIntentCancel config
                               intent
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCancelResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCancelResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            PaymentIntent)
                                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCancelResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/cancel
-- 
-- The same as 'postPaymentIntentsIntentCancel' but returns the raw 'Data.ByteString.Char8.ByteString'
postPaymentIntentsIntentCancelRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     StripeAPI.Common.Configuration s ->
                                     GHC.Base.String ->
                                     GHC.Maybe.Maybe PostPaymentIntentsIntentCancelRequestBody ->
                                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentCancelRaw config
                                  intent
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/cancel
-- 
-- Monadic version of 'postPaymentIntentsIntentCancel' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsIntentCancelM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   GHC.Base.String ->
                                   GHC.Maybe.Maybe PostPaymentIntentsIntentCancelRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCancelResponse))
postPaymentIntentsIntentCancelM intent
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCancelResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCancelResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                             PaymentIntent)
                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCancelResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/cancel
-- 
-- Monadic version of 'postPaymentIntentsIntentCancelRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsIntentCancelRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      GHC.Base.String ->
                                      GHC.Maybe.Maybe PostPaymentIntentsIntentCancelRequestBody ->
                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentCancelRawM intent
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPaymentIntentsIntentCancelRequestBody
-- 
-- 
data PostPaymentIntentsIntentCancelRequestBody = PostPaymentIntentsIntentCancelRequestBody {
  -- | cancellation_reason: Reason for canceling this PaymentIntent. Possible values are \`duplicate\`, \`fraudulent\`, \`requested_by_customer\`, or \`abandoned\`
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentIntentsIntentCancelRequestBodyCancellationReason :: (GHC.Maybe.Maybe PostPaymentIntentsIntentCancelRequestBodyCancellationReason')
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentIntentsIntentCancelRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentCancelRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "cancellation_reason" (postPaymentIntentsIntentCancelRequestBodyCancellationReason obj) : (Data.Aeson..=) "expand" (postPaymentIntentsIntentCancelRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "cancellation_reason" (postPaymentIntentsIntentCancelRequestBodyCancellationReason obj) GHC.Base.<> (Data.Aeson..=) "expand" (postPaymentIntentsIntentCancelRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCancelRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCancelRequestBody" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentCancelRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Defines the enum schema postPaymentIntentsIntentCancelRequestBodyCancellation_reason\'
-- 
-- Reason for canceling this PaymentIntent. Possible values are \`duplicate\`, \`fraudulent\`, \`requested_by_customer\`, or \`abandoned\`
data PostPaymentIntentsIntentCancelRequestBodyCancellationReason'
    = PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumTyped GHC.Base.String
    | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringAbandoned
    | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringDuplicate
    | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringFraudulent
    | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringRequestedByCustomer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentCancelRequestBodyCancellationReason'
    where toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringAbandoned) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abandoned"
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringDuplicate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate"
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringFraudulent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent"
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringRequestedByCustomer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer"
instance Data.Aeson.FromJSON PostPaymentIntentsIntentCancelRequestBodyCancellationReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "abandoned")
                                          then PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringAbandoned
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "duplicate")
                                                then PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringDuplicate
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fraudulent")
                                                      then PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringFraudulent
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "requested_by_customer")
                                                            then PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumStringRequestedByCustomer
                                                            else PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumOther val)
-- | Represents a response of the operation 'postPaymentIntentsIntentCancel'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsIntentCancelResponseError' is used.
data PostPaymentIntentsIntentCancelResponse =                   
   PostPaymentIntentsIntentCancelResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPaymentIntentsIntentCancelResponse200 PaymentIntent     -- ^ Successful response.
  | PostPaymentIntentsIntentCancelResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
