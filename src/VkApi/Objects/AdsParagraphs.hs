module VkApi.Objects.AdsParagraphs where

import VkApi.Objects.Utils



data AdsParagraphs = AdsParagraphs
  { adsParagraphs_Paragraph :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdsParagraphs where
  parseJSON = withObject "AdsParagraphs" \o -> AdsParagraphs
    <$> o .:? "paragraph"