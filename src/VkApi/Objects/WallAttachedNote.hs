module VkApi.Objects.WallAttachedNote where

import VkApi.Objects.Utils



data WallAttachedNote = WallAttachedNote
  { wallAttachedNote_Title :: Text
  , wallAttachedNote_ReadComments :: Int
  , wallAttachedNote_Id :: Int
  , wallAttachedNote_Date :: Int
  , wallAttachedNote_PrivacyView :: Maybe [Text]
  , wallAttachedNote_ViewUrl :: Text
  , wallAttachedNote_TextWiki :: Maybe Text
  , wallAttachedNote_OwnerId :: Int
  , wallAttachedNote_Comments :: Int
  , wallAttachedNote_CanComment :: Maybe Int
  , wallAttachedNote_Text :: Maybe Text
  , wallAttachedNote_PrivacyComment :: Maybe [Text]
  } deriving (Show, Generic)

instance FromJSON WallAttachedNote where
  parseJSON = withObject "WallAttachedNote" \o -> WallAttachedNote
    <$> o .: "title"
    <*> o .: "read_comments"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .:? "privacy_view"
    <*> o .: "view_url"
    <*> o .:? "text_wiki"
    <*> o .: "owner_id"
    <*> o .: "comments"
    <*> o .:? "can_comment"
    <*> o .:? "text"
    <*> o .:? "privacy_comment"