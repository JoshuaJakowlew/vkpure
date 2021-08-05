module VkApi.Objects.AdsUpdateofficeusersResult where

import VkApi.Objects.Utils

import VkApi.Objects.BaseError

data AdsUpdateofficeusersResult = AdsUpdateofficeusersResult
  { adsUpdateofficeusersResult_UserId :: Int
  , adsUpdateofficeusersResult_IsSuccess :: Bool
  , adsUpdateofficeusersResult_Error :: Maybe BaseError
  } deriving (Show, Generic)

instance FromJSON AdsUpdateofficeusersResult where
  parseJSON = withObject "AdsUpdateofficeusersResult" \o -> AdsUpdateofficeusersResult
    <$> o .: "user_id"
    <*> o .: "is_success"
    <*> o .:? "error"