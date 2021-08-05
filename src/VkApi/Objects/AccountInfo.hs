module VkApi.Objects.AccountInfo where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data AccountInfo = AccountInfo
  { accountInfo_Intro :: Maybe BaseBoolInt
  , accountInfo_MiniAppsAdsSlotId :: Maybe Int
  , accountInfo_LinkRedirects :: Maybe Value
  , accountInfo_Subscriptions :: Maybe [Int]
  , accountInfo_WishlistsAePromoBannerShow :: Maybe BaseBoolInt
  , accountInfo_QrPromotion :: Maybe Int
  , accountInfo_Lang :: Maybe Int
  , accountInfo_OwnPostsDefault :: Maybe BaseBoolInt
  , accountInfo_2FaRequired :: Maybe BaseBoolInt
  , accountInfo_NoWallReplies :: Maybe BaseBoolInt
  , accountInfo_Country :: Maybe Text
  , accountInfo_HttpsRequired :: Maybe BaseBoolInt
  , accountInfo_ShowVkAppsIntro :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON AccountInfo where
  parseJSON = withObject "AccountInfo" \o -> AccountInfo
    <$> o .:? "intro"
    <*> o .:? "mini_apps_ads_slot_id"
    <*> o .:? "link_redirects"
    <*> o .:? "subscriptions"
    <*> o .:? "wishlists_ae_promo_banner_show"
    <*> o .:? "qr_promotion"
    <*> o .:? "lang"
    <*> o .:? "own_posts_default"
    <*> o .:? "2fa_required"
    <*> o .:? "no_wall_replies"
    <*> o .:? "country"
    <*> o .:? "https_required"
    <*> o .:? "show_vk_apps_intro"