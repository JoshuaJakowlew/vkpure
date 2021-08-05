module VkApi.Objects.WidgetsCommentMediaType where

import VkApi.Objects.Utils



data WidgetsCommentMediaType = WidgetsCommentMediaTypeAudio | WidgetsCommentMediaTypePhoto | WidgetsCommentMediaTypeVideo
  deriving (Show, Generic)

instance FromJSON WidgetsCommentMediaType where
  parseJSON = withText "WidgetsCommentMediaType" \ t -> case t of 
    "audio" -> pure WidgetsCommentMediaTypeAudio
    "photo" -> pure WidgetsCommentMediaTypePhoto
    "video" -> pure WidgetsCommentMediaTypeVideo
    _ -> fail "WidgetsCommentMediaType: doesnt match case"
