module VkApi.Objects.BaseRepostsInfo where

import VkApi.Objects.Utils



data BaseRepostsInfo = BaseRepostsInfo
  { baseRepostsInfo_UserReposted :: Maybe Int
  , baseRepostsInfo_MailCount :: Maybe Int
  , baseRepostsInfo_Count :: Int
  , baseRepostsInfo_WallCount :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON BaseRepostsInfo where
  parseJSON = withObject "BaseRepostsInfo" \o -> BaseRepostsInfo
    <$> o .:? "user_reposted"
    <*> o .:? "mail_count"
    <*> o .: "count"
    <*> o .:? "wall_count"