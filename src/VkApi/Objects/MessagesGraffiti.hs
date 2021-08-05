module VkApi.Objects.MessagesGraffiti where

import VkApi.Objects.Utils



data MessagesGraffiti = MessagesGraffiti
  { messagesGraffiti_Height :: Int
  , messagesGraffiti_Width :: Int
  , messagesGraffiti_Id :: Int
  , messagesGraffiti_AccessKey :: Maybe Text
  , messagesGraffiti_Url :: Text
  , messagesGraffiti_OwnerId :: Int
  } deriving (Show, Generic)

instance FromJSON MessagesGraffiti where
  parseJSON = withObject "MessagesGraffiti" \o -> MessagesGraffiti
    <$> o .: "height"
    <*> o .: "width"
    <*> o .: "id"
    <*> o .:? "access_key"
    <*> o .: "url"
    <*> o .: "owner_id"