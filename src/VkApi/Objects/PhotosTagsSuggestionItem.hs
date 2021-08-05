module VkApi.Objects.PhotosTagsSuggestionItem where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosTagsSuggestionItemButton
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.PhotosPhotoTag

data PhotosTagsSuggestionItem = PhotosTagsSuggestionItem
  { photosTagsSuggestionItem_Caption :: Maybe Text
  , photosTagsSuggestionItem_Title :: Maybe Text
  , photosTagsSuggestionItem_TrackCode :: Maybe Text
  , photosTagsSuggestionItem_Buttons :: Maybe [PhotosTagsSuggestionItemButton]
  , photosTagsSuggestionItem_Photo :: Maybe PhotosPhoto
  , photosTagsSuggestionItem_Tags :: Maybe [PhotosPhotoTag]
  , photosTagsSuggestionItem_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON PhotosTagsSuggestionItem where
  parseJSON = withObject "PhotosTagsSuggestionItem" \o -> PhotosTagsSuggestionItem
    <$> o .:? "caption"
    <*> o .:? "title"
    <*> o .:? "track_code"
    <*> o .:? "buttons"
    <*> o .:? "photo"
    <*> o .:? "tags"
    <*> o .:? "type"