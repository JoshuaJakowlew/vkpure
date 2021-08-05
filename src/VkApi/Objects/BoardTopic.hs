module VkApi.Objects.BoardTopic where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data BoardTopic = BoardTopic
  { boardTopic_Title :: Maybe Text
  , boardTopic_Id :: Maybe Int
  , boardTopic_IsClosed :: Maybe BaseBoolInt
  , boardTopic_CreatedBy :: Maybe Int
  , boardTopic_UpdatedBy :: Maybe Int
  , boardTopic_IsFixed :: Maybe BaseBoolInt
  , boardTopic_Created :: Maybe Int
  , boardTopic_Comments :: Maybe Int
  , boardTopic_Updated :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON BoardTopic where
  parseJSON = withObject "BoardTopic" \o -> BoardTopic
    <$> o .:? "title"
    <*> o .:? "id"
    <*> o .:? "is_closed"
    <*> o .:? "created_by"
    <*> o .:? "updated_by"
    <*> o .:? "is_fixed"
    <*> o .:? "created"
    <*> o .:? "comments"
    <*> o .:? "updated"