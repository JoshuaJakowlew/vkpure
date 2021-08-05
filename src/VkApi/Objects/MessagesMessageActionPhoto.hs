module VkApi.Objects.MessagesMessageActionPhoto where

import VkApi.Objects.Utils



data MessagesMessageActionPhoto = MessagesMessageActionPhoto
  { messagesMessageActionPhoto_Photo200 :: Text
  , messagesMessageActionPhoto_Photo50 :: Text
  , messagesMessageActionPhoto_Photo100 :: Text
  } deriving (Show, Generic)

instance FromJSON MessagesMessageActionPhoto where
  parseJSON = withObject "MessagesMessageActionPhoto" \o -> MessagesMessageActionPhoto
    <$> o .: "photo_200"
    <*> o .: "photo_50"
    <*> o .: "photo_100"