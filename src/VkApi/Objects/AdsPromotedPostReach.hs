module VkApi.Objects.AdsPromotedPostReach where

import VkApi.Objects.Utils



data AdsPromotedPostReach = AdsPromotedPostReach
  { adsPromotedPostReach_VideoViewsStart :: Maybe Int
  , adsPromotedPostReach_ToGroup :: Int
  , adsPromotedPostReach_Unsubscribe :: Int
  , adsPromotedPostReach_ReachSubscribers :: Int
  , adsPromotedPostReach_Links :: Int
  , adsPromotedPostReach_Hide :: Int
  , adsPromotedPostReach_ReachTotal :: Int
  , adsPromotedPostReach_Id :: Int
  , adsPromotedPostReach_JoinGroup :: Int
  , adsPromotedPostReach_VideoViews3S :: Maybe Int
  , adsPromotedPostReach_VideoViews100P :: Maybe Int
  , adsPromotedPostReach_Report :: Int
  , adsPromotedPostReach_VideoViews25P :: Maybe Int
  , adsPromotedPostReach_VideoViews75P :: Maybe Int
  , adsPromotedPostReach_VideoViews50P :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsPromotedPostReach where
  parseJSON = withObject "AdsPromotedPostReach" \o -> AdsPromotedPostReach
    <$> o .:? "video_views_start"
    <*> o .: "to_group"
    <*> o .: "unsubscribe"
    <*> o .: "reach_subscribers"
    <*> o .: "links"
    <*> o .: "hide"
    <*> o .: "reach_total"
    <*> o .: "id"
    <*> o .: "join_group"
    <*> o .:? "video_views_3s"
    <*> o .:? "video_views_100p"
    <*> o .: "report"
    <*> o .:? "video_views_25p"
    <*> o .:? "video_views_75p"
    <*> o .:? "video_views_50p"