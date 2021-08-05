module VkApi.Objects.MessagesChatSettingsState where

import VkApi.Objects.Utils



data MessagesChatSettingsState = MessagesChatSettingsStateIn | MessagesChatSettingsStateKicked | MessagesChatSettingsStateLeft
  deriving (Show, Generic)

instance FromJSON MessagesChatSettingsState where
  parseJSON = withText "MessagesChatSettingsState" \ t -> case t of 
    "in" -> pure MessagesChatSettingsStateIn
    "kicked" -> pure MessagesChatSettingsStateKicked
    "left" -> pure MessagesChatSettingsStateLeft
    _ -> fail "MessagesChatSettingsState: doesnt match case"
