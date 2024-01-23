{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getTreasuryReceivedDebits
module StripeAPI.Operations.GetTreasuryReceivedDebits where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > GET /v1/treasury/received_debits
--
-- \<p>Returns a list of ReceivedDebits.\<\/p>
getTreasuryReceivedDebits ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTreasuryReceivedDebitsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryReceivedDebitsResponse)
getTreasuryReceivedDebits parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTreasuryReceivedDebitsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTreasuryReceivedDebitsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetTreasuryReceivedDebitsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTreasuryReceivedDebitsResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/treasury/received_debits")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedDebitsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedDebitsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "financial_account") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getTreasuryReceivedDebitsParametersQueryFinancialAccount parameters)) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedDebitsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedDebitsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedDebitsParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/treasury\/received_debits.GET.parameters@ in the specification.
data GetTreasuryReceivedDebitsParameters = GetTreasuryReceivedDebitsParameters
  { -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTreasuryReceivedDebitsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getTreasuryReceivedDebitsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryFinancial_account: Represents the parameter named \'financial_account\'
    --
    -- The FinancialAccount that funds were pulled from.
    getTreasuryReceivedDebitsParametersQueryFinancialAccount :: Data.Text.Internal.Text,
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getTreasuryReceivedDebitsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTreasuryReceivedDebitsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStatus: Represents the parameter named \'status\'
    --
    -- Only return ReceivedDebits that have the given status: \`succeeded\` or \`failed\`.
    getTreasuryReceivedDebitsParametersQueryStatus :: (GHC.Maybe.Maybe GetTreasuryReceivedDebitsParametersQueryStatus')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedDebitsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryStatus obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedDebitsParametersQueryStatus obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedDebitsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryReceivedDebitsParameters" (\obj -> (((((GHC.Base.pure GetTreasuryReceivedDebitsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFinancial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))

-- | Create a new 'GetTreasuryReceivedDebitsParameters' with all required fields.
mkGetTreasuryReceivedDebitsParameters ::
  -- | 'getTreasuryReceivedDebitsParametersQueryFinancialAccount'
  Data.Text.Internal.Text ->
  GetTreasuryReceivedDebitsParameters
mkGetTreasuryReceivedDebitsParameters getTreasuryReceivedDebitsParametersQueryFinancialAccount =
  GetTreasuryReceivedDebitsParameters
    { getTreasuryReceivedDebitsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getTreasuryReceivedDebitsParametersQueryExpand = GHC.Maybe.Nothing,
      getTreasuryReceivedDebitsParametersQueryFinancialAccount = getTreasuryReceivedDebitsParametersQueryFinancialAccount,
      getTreasuryReceivedDebitsParametersQueryLimit = GHC.Maybe.Nothing,
      getTreasuryReceivedDebitsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getTreasuryReceivedDebitsParametersQueryStatus = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/treasury\/received_debits.GET.parameters.properties.queryStatus@ in the specification.
--
-- Represents the parameter named \'status\'
--
-- Only return ReceivedDebits that have the given status: \`succeeded\` or \`failed\`.
data GetTreasuryReceivedDebitsParametersQueryStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetTreasuryReceivedDebitsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetTreasuryReceivedDebitsParametersQueryStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    GetTreasuryReceivedDebitsParametersQueryStatus'EnumFailed
  | -- | Represents the JSON value @"succeeded"@
    GetTreasuryReceivedDebitsParametersQueryStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedDebitsParametersQueryStatus' where
  toJSON (GetTreasuryReceivedDebitsParametersQueryStatus'Other val) = val
  toJSON (GetTreasuryReceivedDebitsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetTreasuryReceivedDebitsParametersQueryStatus'EnumFailed) = "failed"
  toJSON (GetTreasuryReceivedDebitsParametersQueryStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedDebitsParametersQueryStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "failed" -> GetTreasuryReceivedDebitsParametersQueryStatus'EnumFailed
            | val GHC.Classes.== "succeeded" -> GetTreasuryReceivedDebitsParametersQueryStatus'EnumSucceeded
            | GHC.Base.otherwise -> GetTreasuryReceivedDebitsParametersQueryStatus'Other val
      )

-- | Represents a response of the operation 'getTreasuryReceivedDebits'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryReceivedDebitsResponseError' is used.
data GetTreasuryReceivedDebitsResponse
  = -- | Means either no matching case available or a parse error
    GetTreasuryReceivedDebitsResponseError GHC.Base.String
  | -- | Successful response.
    GetTreasuryReceivedDebitsResponse200 GetTreasuryReceivedDebitsResponseBody200
  | -- | Error response.
    GetTreasuryReceivedDebitsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/treasury\/received_debits.GET.responses.200.content.application\/json.schema@ in the specification.
data GetTreasuryReceivedDebitsResponseBody200 = GetTreasuryReceivedDebitsResponseBody200
  { -- | data: Details about each object.
    getTreasuryReceivedDebitsResponseBody200Data :: ([Treasury'receivedDebit]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getTreasuryReceivedDebitsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTreasuryReceivedDebitsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedDebitsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryReceivedDebitsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedDebitsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryReceivedDebitsResponseBody200" (\obj -> ((GHC.Base.pure GetTreasuryReceivedDebitsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetTreasuryReceivedDebitsResponseBody200' with all required fields.
mkGetTreasuryReceivedDebitsResponseBody200 ::
  -- | 'getTreasuryReceivedDebitsResponseBody200Data'
  [Treasury'receivedDebit] ->
  -- | 'getTreasuryReceivedDebitsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getTreasuryReceivedDebitsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetTreasuryReceivedDebitsResponseBody200
mkGetTreasuryReceivedDebitsResponseBody200 getTreasuryReceivedDebitsResponseBody200Data getTreasuryReceivedDebitsResponseBody200HasMore getTreasuryReceivedDebitsResponseBody200Url =
  GetTreasuryReceivedDebitsResponseBody200
    { getTreasuryReceivedDebitsResponseBody200Data = getTreasuryReceivedDebitsResponseBody200Data,
      getTreasuryReceivedDebitsResponseBody200HasMore = getTreasuryReceivedDebitsResponseBody200HasMore,
      getTreasuryReceivedDebitsResponseBody200Url = getTreasuryReceivedDebitsResponseBody200Url
    }