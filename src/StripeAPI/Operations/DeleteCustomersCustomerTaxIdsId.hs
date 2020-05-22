{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteCustomersCustomerTaxIdsId
module StripeAPI.Operations.DeleteCustomersCustomerTaxIdsId where

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

-- | > DELETE /v1/customers/{customer}/tax_ids/{id}
-- 
-- \<p>Deletes an existing \<code>TaxID\<\/code> object.\<\/p>
deleteCustomersCustomerTaxIdsId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                             -- ^ customer | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                             -- ^ id
  -> DeleteCustomersCustomerTaxIdsIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteCustomersCustomerTaxIdsIdResponse)) -- ^ Monad containing the result of the operation
deleteCustomersCustomerTaxIdsId config
                                customer
                                id
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerTaxIdsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerTaxIdsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               DeletedTaxId)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerTaxIdsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/tax_ids/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/tax_ids/{id}
-- 
-- The same as 'deleteCustomersCustomerTaxIdsId' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteCustomersCustomerTaxIdsIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      GHC.Base.String ->
                                      DeleteCustomersCustomerTaxIdsIdRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerTaxIdsIdRaw config
                                   customer
                                   id
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/tax_ids/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/tax_ids/{id}
-- 
-- Monadic version of 'deleteCustomersCustomerTaxIdsId' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerTaxIdsIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    GHC.Base.String ->
                                    DeleteCustomersCustomerTaxIdsIdRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response DeleteCustomersCustomerTaxIdsIdResponse))
deleteCustomersCustomerTaxIdsIdM customer
                                 id
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteCustomersCustomerTaxIdsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerTaxIdsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                DeletedTaxId)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteCustomersCustomerTaxIdsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/tax_ids/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/customers/{customer}/tax_ids/{id}
-- 
-- Monadic version of 'deleteCustomersCustomerTaxIdsIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteCustomersCustomerTaxIdsIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       GHC.Base.String ->
                                       DeleteCustomersCustomerTaxIdsIdRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteCustomersCustomerTaxIdsIdRawM customer
                                    id
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/tax_ids/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteCustomersCustomerTaxIdsIdRequestBody
-- 
-- 
data DeleteCustomersCustomerTaxIdsIdRequestBody = DeleteCustomersCustomerTaxIdsIdRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteCustomersCustomerTaxIdsIdRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerTaxIdsIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerTaxIdsIdRequestBody" (\obj -> GHC.Base.pure DeleteCustomersCustomerTaxIdsIdRequestBody)
-- | Represents a response of the operation 'deleteCustomersCustomerTaxIdsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteCustomersCustomerTaxIdsIdResponseError' is used.
data DeleteCustomersCustomerTaxIdsIdResponse =                   
   DeleteCustomersCustomerTaxIdsIdResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | DeleteCustomersCustomerTaxIdsIdResponse200 DeletedTaxId      -- ^ Successful response.
  | DeleteCustomersCustomerTaxIdsIdResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)