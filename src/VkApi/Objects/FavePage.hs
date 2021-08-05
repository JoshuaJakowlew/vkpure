module VkApi.Objects.FavePage where

import VkApi.Objects.Utils

import VkApi.Objects.UsersUserFull
import VkApi.Objects.GroupsGroupFull
import VkApi.Objects.FaveTag
import VkApi.Objects.FavePageType

data FavePage = FavePage
  { favePage_User :: Maybe UsersUserFull
  , favePage_UpdatedDate :: Maybe Int
  , favePage_Group :: Maybe GroupsGroupFull
  , favePage_Tags :: [FaveTag]
  , favePage_Description :: Text
  , favePage_Type :: FavePageType
  } deriving (Show, Generic)

instance FromJSON FavePage where
  parseJSON = withObject "FavePage" \o -> FavePage
    <$> o .:? "user"
    <*> o .:? "updated_date"
    <*> o .:? "group"
    <*> o .: "tags"
    <*> o .: "description"
    <*> o .: "type"