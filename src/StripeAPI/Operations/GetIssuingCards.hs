{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getIssuingCards
module StripeAPI.Operations.GetIssuingCards where

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

-- | > GET /v1/issuing/cards
-- 
-- \<p>Returns a list of Issuing \<code>Card\<\/code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.\<\/p>
getIssuingCards :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ cardholder: Only return cards belonging to the Cardholder with the provided ID. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ created: Only return cards that were issued during the given date interval.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ ending_before: A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                    -- ^ exp_month: Only return cards that have the given expiration month.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                    -- ^ exp_year: Only return cards that have the given expiration year.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ last4: Only return cards that have the given last four digits. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                    -- ^ limit: A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ name: Only return cards that have the given name. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ source: Only return cards whose full card number matches that of this card source ID. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ starting_after: A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ status: Only return cards that have the given status. One of \`active\`, \`inactive\`, \`canceled\`, \`lost\`, or \`stolen\`. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                             -- ^ type: Only return cards that have the given type. One of \`virtual\` or \`physical\`. | Constraints: Maximum length of 5000
  -> GetIssuingCardsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetIssuingCardsResponse)) -- ^ Monad containing the result of the operation
getIssuingCards config
                cardholder
                created
                endingBefore
                expMonth
                expYear
                expand
                last4
                limit
                name
                source
                startingAfter
                status
                type'
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIssuingCardsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               GetIssuingCardsResponseBody200)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/issuing/cards") ((Data.Text.pack "cardholder",
                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> cardholder) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "exp_month",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expMonth) : ((Data.Text.pack "exp_year",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expYear) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "last4",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> last4) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> type') : []))))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/issuing/cards
-- 
-- The same as 'getIssuingCards' but returns the raw 'Data.ByteString.Char8.ByteString'
getIssuingCardsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                    StripeAPI.Common.SecurityScheme s) =>
                      StripeAPI.Common.Configuration s ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                      GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GHC.Maybe.Maybe GHC.Base.String ->
                      GetIssuingCardsRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuingCardsRaw config
                   cardholder
                   created
                   endingBefore
                   expMonth
                   expYear
                   expand
                   last4
                   limit
                   name
                   source
                   startingAfter
                   status
                   type'
                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/issuing/cards") ((Data.Text.pack "cardholder",
                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> cardholder) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "exp_month",
                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expMonth) : ((Data.Text.pack "exp_year",
                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expYear) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "last4",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> last4) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> type') : []))))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/issuing/cards
-- 
-- Monadic version of 'getIssuingCards' (use with 'StripeAPI.Common.runWithConfiguration')
getIssuingCardsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                    GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GHC.Maybe.Maybe GHC.Base.String ->
                    GetIssuingCardsRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response GetIssuingCardsResponse))
getIssuingCardsM cardholder
                 created
                 endingBefore
                 expMonth
                 expYear
                 expand
                 last4
                 limit
                 name
                 source
                 startingAfter
                 status
                 type'
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetIssuingCardsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                GetIssuingCardsResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/issuing/cards") ((Data.Text.pack "cardholder",
                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> cardholder) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "exp_month",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expMonth) : ((Data.Text.pack "exp_year",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> expYear) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "last4",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> last4) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> type') : []))))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/issuing/cards
-- 
-- Monadic version of 'getIssuingCardsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getIssuingCardsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                       GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GHC.Maybe.Maybe GHC.Base.String ->
                       GetIssuingCardsRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuingCardsRawM cardholder
                    created
                    endingBefore
                    expMonth
                    expYear
                    expand
                    last4
                    limit
                    name
                    source
                    startingAfter
                    status
                    type'
                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/issuing/cards") ((Data.Text.pack "cardholder",
                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> cardholder) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "exp_month",
                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expMonth) : ((Data.Text.pack "exp_year",
                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expYear) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "last4",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> last4) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> type') : []))))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getIssuingCardsRequestBody
-- 
-- 
data GetIssuingCardsRequestBody = GetIssuingCardsRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIssuingCardsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsRequestBody" (\obj -> GHC.Base.pure GetIssuingCardsRequestBody)
-- | Represents a response of the operation 'getIssuingCards'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingCardsResponseError' is used.
data GetIssuingCardsResponse =                                 
   GetIssuingCardsResponseError GHC.Base.String                -- ^ Means either no matching case available or a parse error
  | GetIssuingCardsResponse200 GetIssuingCardsResponseBody200  -- ^ Successful response.
  | GetIssuingCardsResponseDefault Error                       -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetIssuingCardsResponseBody200
-- 
-- 
data GetIssuingCardsResponseBody200 = GetIssuingCardsResponseBody200 {
  -- | data
  getIssuingCardsResponseBody200Data :: ([] Issuing'card)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getIssuingCardsResponseBody200HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getIssuingCardsResponseBody200Object :: GetIssuingCardsResponseBody200Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/issuing\/cards\'
  , getIssuingCardsResponseBody200Url :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIssuingCardsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getIssuingCardsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getIssuingCardsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getIssuingCardsResponseBody200Object obj) : (Data.Aeson..=) "url" (getIssuingCardsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getIssuingCardsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getIssuingCardsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getIssuingCardsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getIssuingCardsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsResponseBody200" (\obj -> (((GHC.Base.pure GetIssuingCardsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema GetIssuingCardsResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetIssuingCardsResponseBody200Object'
    = GetIssuingCardsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetIssuingCardsResponseBody200Object'EnumTyped GHC.Base.String
    | GetIssuingCardsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIssuingCardsResponseBody200Object'
    where toJSON (GetIssuingCardsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetIssuingCardsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetIssuingCardsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetIssuingCardsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetIssuingCardsResponseBody200Object'EnumStringList
                                          else GetIssuingCardsResponseBody200Object'EnumOther val)