module VkApi.Objects.BaseLinkButtonStyle where

import VkApi.Objects.Utils



data BaseLinkButtonStyle = BaseLinkButtonStylePrimary | BaseLinkButtonStyleSecondary
  deriving (Show, Generic)

instance FromJSON BaseLinkButtonStyle where
  parseJSON = withText "BaseLinkButtonStyle" \ t -> case t of 
    "primary" -> pure BaseLinkButtonStylePrimary
    "secondary" -> pure BaseLinkButtonStyleSecondary
    _ -> fail "BaseLinkButtonStyle: doesnt match case"
