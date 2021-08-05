module VkApi.Objects.PhotosTagsSuggestionItemButton where

import VkApi.Objects.Utils



data PhotosTagsSuggestionItemButton = PhotosTagsSuggestionItemButton
  { photosTagsSuggestionItemButton_Title :: Maybe Text
  , photosTagsSuggestionItemButton_Style :: Maybe Text
  , photosTagsSuggestionItemButton_Action :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON PhotosTagsSuggestionItemButton where
  parseJSON = withObject "PhotosTagsSuggestionItemButton" \o -> PhotosTagsSuggestionItemButton
    <$> o .:? "title"
    <*> o .:? "style"
    <*> o .:? "action"