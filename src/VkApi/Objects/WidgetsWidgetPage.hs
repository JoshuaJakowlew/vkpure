module VkApi.Objects.WidgetsWidgetPage where

import VkApi.Objects.Utils

import VkApi.Objects.BaseObjectCount

data WidgetsWidgetPage = WidgetsWidgetPage
  { widgetsWidgetPage_PageId :: Maybe Text
  , widgetsWidgetPage_Title :: Maybe Text
  , widgetsWidgetPage_Likes :: Maybe BaseObjectCount
  , widgetsWidgetPage_Id :: Maybe Int
  , widgetsWidgetPage_Date :: Maybe Int
  , widgetsWidgetPage_Photo :: Maybe Text
  , widgetsWidgetPage_Description :: Maybe Text
  , widgetsWidgetPage_Url :: Maybe Text
  , widgetsWidgetPage_Comments :: Maybe BaseObjectCount
  } deriving (Show, Generic)

instance FromJSON WidgetsWidgetPage where
  parseJSON = withObject "WidgetsWidgetPage" \o -> WidgetsWidgetPage
    <$> o .:? "page_id"
    <*> o .:? "title"
    <*> o .:? "likes"
    <*> o .:? "id"
    <*> o .:? "date"
    <*> o .:? "photo"
    <*> o .:? "description"
    <*> o .:? "url"
    <*> o .:? "comments"