module VkApi.Objects.WidgetsWidgetLikes where

import VkApi.Objects.Utils



data WidgetsWidgetLikes = WidgetsWidgetLikes
  { widgetsWidgetLikes_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WidgetsWidgetLikes where
  parseJSON = withObject "WidgetsWidgetLikes" \o -> WidgetsWidgetLikes
    <$> o .:? "count"