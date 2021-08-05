module VkApi.Objects.UtilsDomainResolved where

import VkApi.Objects.Utils

import VkApi.Objects.UtilsDomainResolvedType

data UtilsDomainResolved = UtilsDomainResolved
  { utilsDomainResolved_GroupId :: Maybe Int
  , utilsDomainResolved_ObjectId :: Maybe Int
  , utilsDomainResolved_Type :: Maybe UtilsDomainResolvedType
  } deriving (Show, Generic)

instance FromJSON UtilsDomainResolved where
  parseJSON = withObject "UtilsDomainResolved" \o -> UtilsDomainResolved
    <$> o .:? "group_id"
    <*> o .:? "object_id"
    <*> o .:? "type"