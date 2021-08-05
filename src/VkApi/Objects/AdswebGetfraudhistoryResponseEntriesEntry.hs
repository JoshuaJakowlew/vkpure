module VkApi.Objects.AdswebGetfraudhistoryResponseEntriesEntry where

import VkApi.Objects.Utils



data AdswebGetfraudhistoryResponseEntriesEntry = AdswebGetfraudhistoryResponseEntriesEntry
  { adswebGetfraudhistoryResponseEntriesEntry_Day :: Text
  , adswebGetfraudhistoryResponseEntriesEntry_SiteId :: Int
  } deriving (Show, Generic)

instance FromJSON AdswebGetfraudhistoryResponseEntriesEntry where
  parseJSON = withObject "AdswebGetfraudhistoryResponseEntriesEntry" \o -> AdswebGetfraudhistoryResponseEntriesEntry
    <$> o .: "day"
    <*> o .: "site_id"