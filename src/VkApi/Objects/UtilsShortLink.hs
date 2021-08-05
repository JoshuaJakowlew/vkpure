module VkApi.Objects.UtilsShortLink where

import VkApi.Objects.Utils



data UtilsShortLink = UtilsShortLink
  { utilsShortLink_Key :: Maybe Text
  , utilsShortLink_ShortUrl :: Maybe Text
  , utilsShortLink_AccessKey :: Maybe Text
  , utilsShortLink_Url :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UtilsShortLink where
  parseJSON = withObject "UtilsShortLink" \o -> UtilsShortLink
    <$> o .:? "key"
    <*> o .:? "short_url"
    <*> o .:? "access_key"
    <*> o .:? "url"