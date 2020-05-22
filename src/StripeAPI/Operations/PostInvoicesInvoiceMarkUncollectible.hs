{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postInvoicesInvoiceMarkUncollectible
module StripeAPI.Operations.PostInvoicesInvoiceMarkUncollectible where

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

-- | > POST /v1/invoices/{invoice}/mark_uncollectible
-- 
-- \<p>Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.\<\/p>
postInvoicesInvoiceMarkUncollectible :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                  -- ^ invoice | Constraints: Maximum length of 5000
  -> PostInvoicesInvoiceMarkUncollectibleRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostInvoicesInvoiceMarkUncollectibleResponse)) -- ^ Monad containing the result of the operation
postInvoicesInvoiceMarkUncollectible config
                                     invoice
                                     body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoiceMarkUncollectibleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceMarkUncollectibleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Invoice)
                                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceMarkUncollectibleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/mark_uncollectible"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}/mark_uncollectible
-- 
-- The same as 'postInvoicesInvoiceMarkUncollectible' but returns the raw 'Data.ByteString.Char8.ByteString'
postInvoicesInvoiceMarkUncollectibleRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                         StripeAPI.Common.SecurityScheme s) =>
                                           StripeAPI.Common.Configuration s ->
                                           GHC.Base.String ->
                                           PostInvoicesInvoiceMarkUncollectibleRequestBody ->
                                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoiceMarkUncollectibleRaw config
                                        invoice
                                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/mark_uncollectible"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}/mark_uncollectible
-- 
-- Monadic version of 'postInvoicesInvoiceMarkUncollectible' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesInvoiceMarkUncollectibleM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         GHC.Base.String ->
                                         PostInvoicesInvoiceMarkUncollectibleRequestBody ->
                                         Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response PostInvoicesInvoiceMarkUncollectibleResponse))
postInvoicesInvoiceMarkUncollectibleM invoice
                                      body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoiceMarkUncollectibleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceMarkUncollectibleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               Invoice)
                                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceMarkUncollectibleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/mark_uncollectible"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}/mark_uncollectible
-- 
-- Monadic version of 'postInvoicesInvoiceMarkUncollectibleRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesInvoiceMarkUncollectibleRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                          StripeAPI.Common.SecurityScheme s) =>
                                            GHC.Base.String ->
                                            PostInvoicesInvoiceMarkUncollectibleRequestBody ->
                                            Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                               m
                                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoiceMarkUncollectibleRawM invoice
                                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/mark_uncollectible"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postInvoicesInvoiceMarkUncollectibleRequestBody
-- 
-- 
data PostInvoicesInvoiceMarkUncollectibleRequestBody = PostInvoicesInvoiceMarkUncollectibleRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postInvoicesInvoiceMarkUncollectibleRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceMarkUncollectibleRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "expand" (postInvoicesInvoiceMarkUncollectibleRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "expand" (postInvoicesInvoiceMarkUncollectibleRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceMarkUncollectibleRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceMarkUncollectibleRequestBody" (\obj -> GHC.Base.pure PostInvoicesInvoiceMarkUncollectibleRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'postInvoicesInvoiceMarkUncollectible'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoicesInvoiceMarkUncollectibleResponseError' is used.
data PostInvoicesInvoiceMarkUncollectibleResponse =                   
   PostInvoicesInvoiceMarkUncollectibleResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostInvoicesInvoiceMarkUncollectibleResponse200 Invoice           -- ^ Successful response.
  | PostInvoicesInvoiceMarkUncollectibleResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)