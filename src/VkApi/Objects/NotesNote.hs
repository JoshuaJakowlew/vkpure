module VkApi.Objects.NotesNote where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data NotesNote = NotesNote
  { notesNote_Title :: Text
  , notesNote_ReadComments :: Maybe Int
  , notesNote_Id :: Int
  , notesNote_Date :: Int
  , notesNote_ViewUrl :: Text
  , notesNote_TextWiki :: Maybe Text
  , notesNote_OwnerId :: Int
  , notesNote_Comments :: Int
  , notesNote_CanComment :: Maybe BaseBoolInt
  , notesNote_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NotesNote where
  parseJSON = withObject "NotesNote" \o -> NotesNote
    <$> o .: "title"
    <*> o .:? "read_comments"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .: "view_url"
    <*> o .:? "text_wiki"
    <*> o .: "owner_id"
    <*> o .: "comments"
    <*> o .:? "can_comment"
    <*> o .:? "text"