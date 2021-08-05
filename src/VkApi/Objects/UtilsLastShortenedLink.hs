module VkApi.Objects.UtilsLastShortenedLink where

import VkApi.Objects.Utils



data UtilsLastShortenedLink = UtilsLastShortenedLink
  { utilsLastShortenedLink_Key :: Maybe Text
  , utilsLastShortenedLink_ShortUrl :: Maybe Text
  , utilsLastShortenedLink_Views :: Maybe Int
  , utilsLastShortenedLink_AccessKey :: Maybe Text
  , utilsLastShortenedLink_Timestamp :: Maybe Int
  , utilsLastShortenedLink_Url :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UtilsLastShortenedLink where
  parseJSON = withObject "UtilsLastShortenedLink" \o -> UtilsLastShortenedLink
    <$> o .:? "key"
    <*> o .:? "short_url"
    <*> o .:? "views"
    <*> o .:? "access_key"
    <*> o .:? "timestamp"
    <*> o .:? "url"