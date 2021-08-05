module VkApi.Objects.BaseLinkButton where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLinkButtonStyle
import VkApi.Objects.BaseLinkButtonAction

data BaseLinkButton = BaseLinkButton
  { baseLinkButton_Icon :: Maybe Text
  , baseLinkButton_SectionId :: Maybe Text
  , baseLinkButton_Title :: Maybe Text
  , baseLinkButton_Style :: Maybe BaseLinkButtonStyle
  , baseLinkButton_Action :: Maybe BaseLinkButtonAction
  , baseLinkButton_CuratorId :: Maybe Int
  , baseLinkButton_BlockId :: Maybe Text
  , baseLinkButton_OwnerId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON BaseLinkButton where
  parseJSON = withObject "BaseLinkButton" \o -> BaseLinkButton
    <$> o .:? "icon"
    <*> o .:? "section_id"
    <*> o .:? "title"
    <*> o .:? "style"
    <*> o .:? "action"
    <*> o .:? "curator_id"
    <*> o .:? "block_id"
    <*> o .:? "owner_id"