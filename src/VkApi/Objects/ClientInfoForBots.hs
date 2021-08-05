module VkApi.Objects.ClientInfoForBots where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesTemplateActionTypeNames

data ClientInfoForBots = ClientInfoForBots
  { clientInfoForBots_LangId :: Maybe Int
  , clientInfoForBots_InlineKeyboard :: Maybe Bool
  , clientInfoForBots_Keyboard :: Maybe Bool
  , clientInfoForBots_ButtonActions :: Maybe [MessagesTemplateActionTypeNames]
  , clientInfoForBots_Carousel :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON ClientInfoForBots where
  parseJSON = withObject "ClientInfoForBots" \o -> ClientInfoForBots
    <$> o .:? "lang_id"
    <*> o .:? "inline_keyboard"
    <*> o .:? "keyboard"
    <*> o .:? "button_actions"
    <*> o .:? "carousel"