module VkApi.Objects.BaseUploadServer where

import VkApi.Objects.Utils



data BaseUploadServer = BaseUploadServer
  { baseUploadServer_UploadUrl :: Text
  } deriving (Show, Generic)

instance FromJSON BaseUploadServer where
  parseJSON = withObject "BaseUploadServer" \o -> BaseUploadServer
    <$> o .: "upload_url"