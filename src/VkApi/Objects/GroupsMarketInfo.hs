module VkApi.Objects.GroupsMarketInfo where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.MarketCurrency

data GroupsMarketInfo = GroupsMarketInfo
  { groupsMarketInfo_PriceMax :: Maybe Text
  , groupsMarketInfo_Enabled :: Maybe BaseBoolInt
  , groupsMarketInfo_ContactId :: Maybe Int
  , groupsMarketInfo_Currency :: Maybe MarketCurrency
  , groupsMarketInfo_MainAlbumId :: Maybe Int
  , groupsMarketInfo_PriceMin :: Maybe Text
  , groupsMarketInfo_CurrencyText :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GroupsMarketInfo where
  parseJSON = withObject "GroupsMarketInfo" \o -> GroupsMarketInfo
    <$> o .:? "price_max"
    <*> o .:? "enabled"
    <*> o .:? "contact_id"
    <*> o .:? "currency"
    <*> o .:? "main_album_id"
    <*> o .:? "price_min"
    <*> o .:? "currency_text"