{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema TaxId
module StripeAPI.Types.TaxId where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.TaxIdVerification
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.tax_id@ in the specification.
--
-- You can add one or multiple tax IDs to a [customer](https:\/\/stripe.com\/docs\/api\/customers).
-- A customer\'s tax IDs are displayed on invoices and credit notes issued for the customer.
--
-- Related guide: [Customer Tax Identification Numbers](https:\/\/stripe.com\/docs\/billing\/taxes\/tax-ids).
data TaxId
  = TaxId
      { -- | country: Two-letter ISO code representing the country of the tax ID.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        taxIdCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        taxIdCreated :: GHC.Types.Int,
        -- | customer: ID of the customer.
        taxIdCustomer :: TaxIdCustomer'Variants,
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        taxIdId :: Data.Text.Internal.Text,
        -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
        taxIdLivemode :: GHC.Types.Bool,
        -- | type: Type of the tax ID, one of \`au_abn\`, \`ca_bn\`, \`ca_qst\`, \`ch_vat\`, \`es_cif\`, \`eu_vat\`, \`hk_br\`, \`in_gst\`, \`jp_cn\`, \`kr_brn\`, \`li_uid\`, \`mx_rfc\`, \`my_itn\`, \`my_sst\`, \`no_vat\`, \`nz_gst\`, \`ru_inn\`, \`sg_uen\`, \`th_vat\`, \`tw_vat\`, \`us_ein\`, or \`za_vat\`. Note that some legacy tax IDs have type \`unknown\`
        taxIdType :: TaxIdType',
        -- | value: Value of the tax ID.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        taxIdValue :: Data.Text.Internal.Text,
        -- | verification:
        taxIdVerification :: TaxIdVerification
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TaxId where
  toJSON obj = Data.Aeson.Types.Internal.object ("country" Data.Aeson.Types.ToJSON..= taxIdCountry obj : "created" Data.Aeson.Types.ToJSON..= taxIdCreated obj : "customer" Data.Aeson.Types.ToJSON..= taxIdCustomer obj : "id" Data.Aeson.Types.ToJSON..= taxIdId obj : "livemode" Data.Aeson.Types.ToJSON..= taxIdLivemode obj : "type" Data.Aeson.Types.ToJSON..= taxIdType obj : "value" Data.Aeson.Types.ToJSON..= taxIdValue obj : "verification" Data.Aeson.Types.ToJSON..= taxIdVerification obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_id" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("country" Data.Aeson.Types.ToJSON..= taxIdCountry obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= taxIdCreated obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= taxIdCustomer obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= taxIdId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= taxIdLivemode obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= taxIdType obj) GHC.Base.<> (("value" Data.Aeson.Types.ToJSON..= taxIdValue obj) GHC.Base.<> (("verification" Data.Aeson.Types.ToJSON..= taxIdVerification obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_id")))))))))

instance Data.Aeson.Types.FromJSON.FromJSON TaxId where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxId" (\obj -> (((((((GHC.Base.pure TaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification"))

-- | Create a new 'TaxId' with all required fields.
mkTaxId ::
  -- | 'taxIdCreated'
  GHC.Types.Int ->
  -- | 'taxIdCustomer'
  TaxIdCustomer'Variants ->
  -- | 'taxIdId'
  Data.Text.Internal.Text ->
  -- | 'taxIdLivemode'
  GHC.Types.Bool ->
  -- | 'taxIdType'
  TaxIdType' ->
  -- | 'taxIdValue'
  Data.Text.Internal.Text ->
  -- | 'taxIdVerification'
  TaxIdVerification ->
  TaxId
mkTaxId taxIdCreated taxIdCustomer taxIdId taxIdLivemode taxIdType taxIdValue taxIdVerification =
  TaxId
    { taxIdCountry = GHC.Maybe.Nothing,
      taxIdCreated = taxIdCreated,
      taxIdCustomer = taxIdCustomer,
      taxIdId = taxIdId,
      taxIdLivemode = taxIdLivemode,
      taxIdType = taxIdType,
      taxIdValue = taxIdValue,
      taxIdVerification = taxIdVerification
    }

-- | Defines the oneOf schema located at @components.schemas.tax_id.properties.customer.anyOf@ in the specification.
--
-- ID of the customer.
data TaxIdCustomer'Variants
  = TaxIdCustomer'Customer Customer
  | TaxIdCustomer'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TaxIdCustomer'Variants where
  toJSON (TaxIdCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (TaxIdCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON TaxIdCustomer'Variants where
  parseJSON val = case (TaxIdCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TaxIdCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.tax_id.properties.type@ in the specification.
--
-- Type of the tax ID, one of \`au_abn\`, \`ca_bn\`, \`ca_qst\`, \`ch_vat\`, \`es_cif\`, \`eu_vat\`, \`hk_br\`, \`in_gst\`, \`jp_cn\`, \`kr_brn\`, \`li_uid\`, \`mx_rfc\`, \`my_itn\`, \`my_sst\`, \`no_vat\`, \`nz_gst\`, \`ru_inn\`, \`sg_uen\`, \`th_vat\`, \`tw_vat\`, \`us_ein\`, or \`za_vat\`. Note that some legacy tax IDs have type \`unknown\`
data TaxIdType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TaxIdType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TaxIdType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"au_abn"@
    TaxIdType'EnumAuAbn
  | -- | Represents the JSON value @"ca_bn"@
    TaxIdType'EnumCaBn
  | -- | Represents the JSON value @"ca_qst"@
    TaxIdType'EnumCaQst
  | -- | Represents the JSON value @"ch_vat"@
    TaxIdType'EnumChVat
  | -- | Represents the JSON value @"es_cif"@
    TaxIdType'EnumEsCif
  | -- | Represents the JSON value @"eu_vat"@
    TaxIdType'EnumEuVat
  | -- | Represents the JSON value @"hk_br"@
    TaxIdType'EnumHkBr
  | -- | Represents the JSON value @"in_gst"@
    TaxIdType'EnumInGst
  | -- | Represents the JSON value @"jp_cn"@
    TaxIdType'EnumJpCn
  | -- | Represents the JSON value @"kr_brn"@
    TaxIdType'EnumKrBrn
  | -- | Represents the JSON value @"li_uid"@
    TaxIdType'EnumLiUid
  | -- | Represents the JSON value @"mx_rfc"@
    TaxIdType'EnumMxRfc
  | -- | Represents the JSON value @"my_itn"@
    TaxIdType'EnumMyItn
  | -- | Represents the JSON value @"my_sst"@
    TaxIdType'EnumMySst
  | -- | Represents the JSON value @"no_vat"@
    TaxIdType'EnumNoVat
  | -- | Represents the JSON value @"nz_gst"@
    TaxIdType'EnumNzGst
  | -- | Represents the JSON value @"ru_inn"@
    TaxIdType'EnumRuInn
  | -- | Represents the JSON value @"sg_uen"@
    TaxIdType'EnumSgUen
  | -- | Represents the JSON value @"th_vat"@
    TaxIdType'EnumThVat
  | -- | Represents the JSON value @"tw_vat"@
    TaxIdType'EnumTwVat
  | -- | Represents the JSON value @"unknown"@
    TaxIdType'EnumUnknown
  | -- | Represents the JSON value @"us_ein"@
    TaxIdType'EnumUsEin
  | -- | Represents the JSON value @"za_vat"@
    TaxIdType'EnumZaVat
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TaxIdType' where
  toJSON (TaxIdType'Other val) = val
  toJSON (TaxIdType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TaxIdType'EnumAuAbn) = "au_abn"
  toJSON (TaxIdType'EnumCaBn) = "ca_bn"
  toJSON (TaxIdType'EnumCaQst) = "ca_qst"
  toJSON (TaxIdType'EnumChVat) = "ch_vat"
  toJSON (TaxIdType'EnumEsCif) = "es_cif"
  toJSON (TaxIdType'EnumEuVat) = "eu_vat"
  toJSON (TaxIdType'EnumHkBr) = "hk_br"
  toJSON (TaxIdType'EnumInGst) = "in_gst"
  toJSON (TaxIdType'EnumJpCn) = "jp_cn"
  toJSON (TaxIdType'EnumKrBrn) = "kr_brn"
  toJSON (TaxIdType'EnumLiUid) = "li_uid"
  toJSON (TaxIdType'EnumMxRfc) = "mx_rfc"
  toJSON (TaxIdType'EnumMyItn) = "my_itn"
  toJSON (TaxIdType'EnumMySst) = "my_sst"
  toJSON (TaxIdType'EnumNoVat) = "no_vat"
  toJSON (TaxIdType'EnumNzGst) = "nz_gst"
  toJSON (TaxIdType'EnumRuInn) = "ru_inn"
  toJSON (TaxIdType'EnumSgUen) = "sg_uen"
  toJSON (TaxIdType'EnumThVat) = "th_vat"
  toJSON (TaxIdType'EnumTwVat) = "tw_vat"
  toJSON (TaxIdType'EnumUnknown) = "unknown"
  toJSON (TaxIdType'EnumUsEin) = "us_ein"
  toJSON (TaxIdType'EnumZaVat) = "za_vat"

instance Data.Aeson.Types.FromJSON.FromJSON TaxIdType' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "au_abn" -> TaxIdType'EnumAuAbn
            | val GHC.Classes.== "ca_bn" -> TaxIdType'EnumCaBn
            | val GHC.Classes.== "ca_qst" -> TaxIdType'EnumCaQst
            | val GHC.Classes.== "ch_vat" -> TaxIdType'EnumChVat
            | val GHC.Classes.== "es_cif" -> TaxIdType'EnumEsCif
            | val GHC.Classes.== "eu_vat" -> TaxIdType'EnumEuVat
            | val GHC.Classes.== "hk_br" -> TaxIdType'EnumHkBr
            | val GHC.Classes.== "in_gst" -> TaxIdType'EnumInGst
            | val GHC.Classes.== "jp_cn" -> TaxIdType'EnumJpCn
            | val GHC.Classes.== "kr_brn" -> TaxIdType'EnumKrBrn
            | val GHC.Classes.== "li_uid" -> TaxIdType'EnumLiUid
            | val GHC.Classes.== "mx_rfc" -> TaxIdType'EnumMxRfc
            | val GHC.Classes.== "my_itn" -> TaxIdType'EnumMyItn
            | val GHC.Classes.== "my_sst" -> TaxIdType'EnumMySst
            | val GHC.Classes.== "no_vat" -> TaxIdType'EnumNoVat
            | val GHC.Classes.== "nz_gst" -> TaxIdType'EnumNzGst
            | val GHC.Classes.== "ru_inn" -> TaxIdType'EnumRuInn
            | val GHC.Classes.== "sg_uen" -> TaxIdType'EnumSgUen
            | val GHC.Classes.== "th_vat" -> TaxIdType'EnumThVat
            | val GHC.Classes.== "tw_vat" -> TaxIdType'EnumTwVat
            | val GHC.Classes.== "unknown" -> TaxIdType'EnumUnknown
            | val GHC.Classes.== "us_ein" -> TaxIdType'EnumUsEin
            | val GHC.Classes.== "za_vat" -> TaxIdType'EnumZaVat
            | GHC.Base.otherwise -> TaxIdType'Other val
      )