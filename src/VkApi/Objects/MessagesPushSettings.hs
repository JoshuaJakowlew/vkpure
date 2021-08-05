module VkApi.Objects.MessagesPushSettings where

import VkApi.Objects.Utils



data MessagesPushSettings = MessagesPushSettings
  { messagesPushSettings_DisabledForever :: Bool
  , messagesPushSettings_DisabledUntil :: Maybe Int
  , messagesPushSettings_DisabledMentions :: Maybe Bool
  , messagesPushSettings_DisabledMassMentions :: Maybe Bool
  , messagesPushSettings_NoSound :: Bool
  } deriving (Show, Generic)

instance FromJSON MessagesPushSettings where
  parseJSON = withObject "MessagesPushSettings" \o -> MessagesPushSettings
    <$> o .: "disabled_forever"
    <*> o .:? "disabled_until"
    <*> o .:? "disabled_mentions"
    <*> o .:? "disabled_mass_mentions"
    <*> o .: "no_sound"