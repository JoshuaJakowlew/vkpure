module VkApi.Objects.CallbackVideoComment where

import VkApi.Objects.Utils



data CallbackVideoComment = CallbackVideoComment
  { callbackVideoComment_FromId :: Int
  , callbackVideoComment_VideoOwnerId :: Int
  , callbackVideoComment_Id :: Int
  , callbackVideoComment_Date :: Int
  , callbackVideoComment_Text :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackVideoComment where
  parseJSON = withObject "CallbackVideoComment" \o -> CallbackVideoComment
    <$> o .: "from_id"
    <*> o .: "video_owner_id"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .: "text"