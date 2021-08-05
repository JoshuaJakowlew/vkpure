module VkApi.Objects.LikesType where

import VkApi.Objects.Utils



data LikesType = LikesTypePost | LikesTypeComment | LikesTypePhoto | LikesTypeAudio | LikesTypeVideo | LikesTypeNote | LikesTypeMarket | LikesTypePhotoComment | LikesTypeVideoComment | LikesTypeTopicComment | LikesTypeMarketComment | LikesTypeSitepage
  deriving (Show, Generic)

instance FromJSON LikesType where
  parseJSON = withText "LikesType" \ t -> case t of 
    "post" -> pure LikesTypePost
    "comment" -> pure LikesTypeComment
    "photo" -> pure LikesTypePhoto
    "audio" -> pure LikesTypeAudio
    "video" -> pure LikesTypeVideo
    "note" -> pure LikesTypeNote
    "market" -> pure LikesTypeMarket
    "photo_comment" -> pure LikesTypePhotoComment
    "video_comment" -> pure LikesTypeVideoComment
    "topic_comment" -> pure LikesTypeTopicComment
    "market_comment" -> pure LikesTypeMarketComment
    "sitepage" -> pure LikesTypeSitepage
    _ -> fail "LikesType: doesnt match case"
