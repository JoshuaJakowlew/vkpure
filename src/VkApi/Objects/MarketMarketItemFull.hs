module VkApi.Objects.MarketMarketItemFull where

import VkApi.Objects.Utils

import VkApi.Objects.MarketMarketItemAvailability
import VkApi.Objects.MarketMarketCategory
import VkApi.Objects.MarketPrice
import VkApi.Objects.BaseLink
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BaseLikes
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.BaseRepostsInfo

data MarketMarketItemFull = MarketMarketItemFull
  { marketMarketItemFull_ExternalId :: Maybe Text
  , marketMarketItemFull_ButtonTitle :: Maybe Text
  , marketMarketItemFull_Availability :: MarketMarketItemAvailability
  , marketMarketItemFull_IsFavorite :: Maybe Bool
  , marketMarketItemFull_VariantsGroupingId :: Maybe Int
  , marketMarketItemFull_Title :: Text
  , marketMarketItemFull_Category :: MarketMarketCategory
  , marketMarketItemFull_Id :: Int
  , marketMarketItemFull_AccessKey :: Maybe Text
  , marketMarketItemFull_Date :: Maybe Int
  , marketMarketItemFull_IsMainVariant :: Maybe Bool
  , marketMarketItemFull_Description :: Text
  , marketMarketItemFull_Url :: Maybe Text
  , marketMarketItemFull_OwnerId :: Int
  , marketMarketItemFull_Price :: MarketPrice
  , marketMarketItemFull_Sku :: Maybe Text
  , marketMarketItemFull_ThumbPhoto :: Maybe Text
  , marketMarketItemFull_CancelInfo :: Maybe BaseLink
  , marketMarketItemFull_CanRepost :: Maybe BaseBoolInt
  , marketMarketItemFull_Likes :: Maybe BaseLikes
  , marketMarketItemFull_ViewsCount :: Maybe Int
  , marketMarketItemFull_Photos :: Maybe [PhotosPhoto]
  , marketMarketItemFull_WishlistItemId :: Maybe Int
  , marketMarketItemFull_Reposts :: Maybe BaseRepostsInfo
  , marketMarketItemFull_UserAgreementInfo :: Maybe Text
  , marketMarketItemFull_CanComment :: Maybe BaseBoolInt
  , marketMarketItemFull_AlbumsIds :: Maybe [Int]
  } deriving (Show, Generic)

instance FromJSON MarketMarketItemFull where
  parseJSON = withObject "MarketMarketItemFull" \o -> MarketMarketItemFull
    <$> o .:? "external_id"
    <*> o .:? "button_title"
    <*> o .: "availability"
    <*> o .:? "is_favorite"
    <*> o .:? "variants_grouping_id"
    <*> o .: "title"
    <*> o .: "category"
    <*> o .: "id"
    <*> o .:? "access_key"
    <*> o .:? "date"
    <*> o .:? "is_main_variant"
    <*> o .: "description"
    <*> o .:? "url"
    <*> o .: "owner_id"
    <*> o .: "price"
    <*> o .:? "sku"
    <*> o .:? "thumb_photo"
    <*> o .:? "cancel_info"
    <*> o .:? "can_repost"
    <*> o .:? "likes"
    <*> o .:? "views_count"
    <*> o .:? "photos"
    <*> o .:? "wishlist_item_id"
    <*> o .:? "reposts"
    <*> o .:? "user_agreement_info"
    <*> o .:? "can_comment"
    <*> o .:? "albums_ids"