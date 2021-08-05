module VkApi.Objects.AdsAdLayout where

import VkApi.Objects.Utils

import VkApi.Objects.AdsAdCostType
import VkApi.Objects.BaseBoolInt

data AdsAdLayout = AdsAdLayout
  { adsAdLayout_LinkDomain :: Maybe Text
  , adsAdLayout_ImageSrc2X :: Maybe Text
  , adsAdLayout_LinkUrl :: Text
  , adsAdLayout_CostType :: AdsAdCostType
  , adsAdLayout_CampaignId :: Int
  , adsAdLayout_Title :: Text
  , adsAdLayout_Id :: Text
  , adsAdLayout_ImageSrc :: Text
  , adsAdLayout_Video :: Maybe BaseBoolInt
  , adsAdLayout_AdFormat :: Int
  , adsAdLayout_Description :: Text
  , adsAdLayout_PreviewLink :: Maybe IntOrString
  } deriving (Show, Generic)

instance FromJSON AdsAdLayout where
  parseJSON = withObject "AdsAdLayout" \o -> AdsAdLayout
    <$> o .:? "link_domain"
    <*> o .:? "image_src_2x"
    <*> o .: "link_url"
    <*> o .: "cost_type"
    <*> o .: "campaign_id"
    <*> o .: "title"
    <*> o .: "id"
    <*> o .: "image_src"
    <*> o .:? "video"
    <*> o .: "ad_format"
    <*> o .: "description"
    <*> o .:? "preview_link"