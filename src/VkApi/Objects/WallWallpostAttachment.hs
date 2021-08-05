module VkApi.Objects.WallWallpostAttachment where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhotoAlbum
import VkApi.Objects.MarketMarketAlbum
import VkApi.Objects.PagesWikipageFull
import VkApi.Objects.BaseLink
import VkApi.Objects.WallAttachedNote
import VkApi.Objects.WallGraffiti
import VkApi.Objects.PollsPoll
import VkApi.Objects.GroupsGroupAttach
import VkApi.Objects.MarketMarketItem
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.EventsEventAttach
import VkApi.Objects.VideoVideo
import VkApi.Objects.WallAppPost
import VkApi.Objects.AudioAudio
import VkApi.Objects.DocsDoc
import VkApi.Objects.WallWallpostAttachmentType
import VkApi.Objects.WallPostedPhoto

data WallWallpostAttachment = WallWallpostAttachment
  { wallWallpostAttachment_Album :: Maybe PhotosPhotoAlbum
  , wallWallpostAttachment_MarketAlbum :: Maybe MarketMarketAlbum
  , wallWallpostAttachment_Page :: Maybe PagesWikipageFull
  , wallWallpostAttachment_Link :: Maybe BaseLink
  , wallWallpostAttachment_Note :: Maybe WallAttachedNote
  , wallWallpostAttachment_Graffiti :: Maybe WallGraffiti
  , wallWallpostAttachment_PhotosList :: Maybe [Text]
  , wallWallpostAttachment_Poll :: Maybe PollsPoll
  , wallWallpostAttachment_Group :: Maybe GroupsGroupAttach
  , wallWallpostAttachment_AccessKey :: Maybe Text
  , wallWallpostAttachment_Market :: Maybe MarketMarketItem
  , wallWallpostAttachment_Photo :: Maybe PhotosPhoto
  , wallWallpostAttachment_Event :: Maybe EventsEventAttach
  , wallWallpostAttachment_Video :: Maybe VideoVideo
  , wallWallpostAttachment_App :: Maybe WallAppPost
  , wallWallpostAttachment_Audio :: Maybe AudioAudio
  , wallWallpostAttachment_Doc :: Maybe DocsDoc
  , wallWallpostAttachment_Type :: WallWallpostAttachmentType
  , wallWallpostAttachment_PostedPhoto :: Maybe WallPostedPhoto
  } deriving (Show, Generic)

instance FromJSON WallWallpostAttachment where
  parseJSON = withObject "WallWallpostAttachment" \o -> WallWallpostAttachment
    <$> o .:? "album"
    <*> o .:? "market_album"
    <*> o .:? "page"
    <*> o .:? "link"
    <*> o .:? "note"
    <*> o .:? "graffiti"
    <*> o .:? "photos_list"
    <*> o .:? "poll"
    <*> o .:? "group"
    <*> o .:? "access_key"
    <*> o .:? "market"
    <*> o .:? "photo"
    <*> o .:? "event"
    <*> o .:? "video"
    <*> o .:? "app"
    <*> o .:? "audio"
    <*> o .:? "doc"
    <*> o .: "type"
    <*> o .:? "posted_photo"