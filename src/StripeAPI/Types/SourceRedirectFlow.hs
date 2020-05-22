{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceRedirectFlow
module StripeAPI.Types.SourceRedirectFlow where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified StripeAPI.Common

-- | Defines the data type for the schema source_redirect_flow
-- 
-- 
data SourceRedirectFlow = SourceRedirectFlow {
  -- | failure_reason: The failure reason for the redirect, either \`user_abort\` (the customer aborted or dropped out of the redirect flow), \`declined\` (the authentication failed or the transaction was declined), or \`processing_error\` (the redirect failed due to a technical error). Present only if the redirect status is \`failed\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sourceRedirectFlowFailureReason :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | return_url: The URL you provide to redirect the customer to after they authenticated their payment.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceRedirectFlowReturnUrl :: GHC.Base.String
  -- | status: The status of the redirect, either \`pending\` (ready to be used by your customer to authenticate the transaction), \`succeeded\` (succesful authentication, cannot be reused) or \`not_required\` (redirect should not be used) or \`failed\` (failed authentication, cannot be reused).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceRedirectFlowStatus :: GHC.Base.String
  -- | url: The URL provided to you to redirect a customer to as part of a \`redirect\` authentication flow.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 2048
  , sourceRedirectFlowUrl :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceRedirectFlow
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "failure_reason" (sourceRedirectFlowFailureReason obj) : (Data.Aeson..=) "return_url" (sourceRedirectFlowReturnUrl obj) : (Data.Aeson..=) "status" (sourceRedirectFlowStatus obj) : (Data.Aeson..=) "url" (sourceRedirectFlowUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "failure_reason" (sourceRedirectFlowFailureReason obj) GHC.Base.<> ((Data.Aeson..=) "return_url" (sourceRedirectFlowReturnUrl obj) GHC.Base.<> ((Data.Aeson..=) "status" (sourceRedirectFlowStatus obj) GHC.Base.<> (Data.Aeson..=) "url" (sourceRedirectFlowUrl obj))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceRedirectFlow
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceRedirectFlow" (\obj -> (((GHC.Base.pure SourceRedirectFlow GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "failure_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))