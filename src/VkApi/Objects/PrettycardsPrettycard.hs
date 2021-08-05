module VkApi.Objects.PrettycardsPrettycard where

import VkApi.Objects.Utils

import VkApi.Objects.BaseImage

data PrettycardsPrettycard = PrettycardsPrettycard
  { prettycardsPrettycard_LinkUrl :: Text
  , prettycardsPrettycard_Images :: Maybe [BaseImage]
  , prettycardsPrettycard_Title :: Text
  , prettycardsPrettycard_ButtonText :: Maybe Text
  , prettycardsPrettycard_Photo :: Text
  , prettycardsPrettycard_Button :: Maybe Text
  , prettycardsPrettycard_CardId :: Text
  , prettycardsPrettycard_Price :: Maybe Text
  , prettycardsPrettycard_PriceOld :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON PrettycardsPrettycard where
  parseJSON = withObject "PrettycardsPrettycard" \o -> PrettycardsPrettycard
    <$> o .: "link_url"
    <*> o .:? "images"
    <*> o .: "title"
    <*> o .:? "button_text"
    <*> o .: "photo"
    <*> o .:? "button"
    <*> o .: "card_id"
    <*> o .:? "price"
    <*> o .:? "price_old"