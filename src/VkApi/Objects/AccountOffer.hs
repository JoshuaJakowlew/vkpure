module VkApi.Objects.AccountOffer where

import VkApi.Objects.Utils



data AccountOffer = AccountOffer
  { accountOffer_CurrencyAmount :: Maybe Double
  , accountOffer_ShortDescription :: Maybe Text
  , accountOffer_Title :: Maybe Text
  , accountOffer_Instruction :: Maybe Text
  , accountOffer_Id :: Maybe Int
  , accountOffer_LinkType :: Maybe Text
  , accountOffer_Description :: Maybe Text
  , accountOffer_Img :: Maybe Text
  , accountOffer_Price :: Maybe Int
  , accountOffer_Tag :: Maybe Text
  , accountOffer_InstructionHtml :: Maybe Text
  , accountOffer_LinkId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AccountOffer where
  parseJSON = withObject "AccountOffer" \o -> AccountOffer
    <$> o .:? "currency_amount"
    <*> o .:? "short_description"
    <*> o .:? "title"
    <*> o .:? "instruction"
    <*> o .:? "id"
    <*> o .:? "link_type"
    <*> o .:? "description"
    <*> o .:? "img"
    <*> o .:? "price"
    <*> o .:? "tag"
    <*> o .:? "instruction_html"
    <*> o .:? "link_id"