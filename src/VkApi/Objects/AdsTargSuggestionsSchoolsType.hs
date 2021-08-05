module VkApi.Objects.AdsTargSuggestionsSchoolsType where

import VkApi.Objects.Utils



data AdsTargSuggestionsSchoolsType = AdsTargSuggestionsSchoolsTypeSchool | AdsTargSuggestionsSchoolsTypeUniversity | AdsTargSuggestionsSchoolsTypeFaculty | AdsTargSuggestionsSchoolsTypeChair
  deriving (Show, Generic)

instance FromJSON AdsTargSuggestionsSchoolsType where
  parseJSON = withText "AdsTargSuggestionsSchoolsType" \ t -> case t of 
    "school" -> pure AdsTargSuggestionsSchoolsTypeSchool
    "university" -> pure AdsTargSuggestionsSchoolsTypeUniversity
    "faculty" -> pure AdsTargSuggestionsSchoolsTypeFaculty
    "chair" -> pure AdsTargSuggestionsSchoolsTypeChair
    _ -> fail "AdsTargSuggestionsSchoolsType: doesnt match case"
