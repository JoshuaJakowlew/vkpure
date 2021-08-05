module VkApi.Objects.SearchHintSection where

import VkApi.Objects.Utils



data SearchHintSection = SearchHintSectionGroups | SearchHintSectionEvents | SearchHintSectionPublics | SearchHintSectionCorrespondents | SearchHintSectionPeople | SearchHintSectionFriends | SearchHintSectionMutualFriends | SearchHintSectionPromo
  deriving (Show, Generic)

instance FromJSON SearchHintSection where
  parseJSON = withText "SearchHintSection" \ t -> case t of 
    "groups" -> pure SearchHintSectionGroups
    "events" -> pure SearchHintSectionEvents
    "publics" -> pure SearchHintSectionPublics
    "correspondents" -> pure SearchHintSectionCorrespondents
    "people" -> pure SearchHintSectionPeople
    "friends" -> pure SearchHintSectionFriends
    "mutual_friends" -> pure SearchHintSectionMutualFriends
    "promo" -> pure SearchHintSectionPromo
    _ -> fail "SearchHintSection: doesnt match case"
