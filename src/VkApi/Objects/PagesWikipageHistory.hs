module VkApi.Objects.PagesWikipageHistory where

import VkApi.Objects.Utils



data PagesWikipageHistory = PagesWikipageHistory
  { pagesWikipageHistory_Length :: Int
  , pagesWikipageHistory_Id :: Int
  , pagesWikipageHistory_Date :: Int
  , pagesWikipageHistory_EditorName :: Text
  , pagesWikipageHistory_EditorId :: Int
  } deriving (Show, Generic)

instance FromJSON PagesWikipageHistory where
  parseJSON = withObject "PagesWikipageHistory" \o -> PagesWikipageHistory
    <$> o .: "length"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .: "editor_name"
    <*> o .: "editor_id"