module VkApi.Objects.NotesNoteComment where

import VkApi.Objects.Utils



data NotesNoteComment = NotesNoteComment
  { notesNoteComment_Message :: Text
  , notesNoteComment_Id :: Int
  , notesNoteComment_Date :: Int
  , notesNoteComment_ReplyTo :: Maybe Int
  , notesNoteComment_Nid :: Int
  , notesNoteComment_Uid :: Int
  , notesNoteComment_Oid :: Int
  } deriving (Show, Generic)

instance FromJSON NotesNoteComment where
  parseJSON = withObject "NotesNoteComment" \o -> NotesNoteComment
    <$> o .: "message"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .:? "reply_to"
    <*> o .: "nid"
    <*> o .: "uid"
    <*> o .: "oid"