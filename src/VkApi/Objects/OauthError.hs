module VkApi.Objects.OauthError where

import VkApi.Objects.Utils



data OauthError = OauthError
  { oauthError_RedirectUri :: Maybe Text
  , oauthError_ErrorDescription :: Text
  , oauthError_Error :: Text
  } deriving (Show, Generic)

instance FromJSON OauthError where
  parseJSON = withObject "OauthError" \o -> OauthError
    <$> o .:? "redirect_uri"
    <*> o .: "error_description"
    <*> o .: "error"