module VkApi.Objects.AccountPushParams where

import VkApi.Objects.Utils

import VkApi.Objects.AccountPushParamsOnoff
import VkApi.Objects.AccountPushParamsSettings
import VkApi.Objects.AccountPushParamsMode

data AccountPushParams = AccountPushParams
  { accountPushParams_AppRequest :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_Repost :: Maybe [AccountPushParamsSettings]
  , accountPushParams_SdkOpen :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_GroupInvite :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_Birthday :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_Comment :: Maybe [AccountPushParamsSettings]
  , accountPushParams_NewPost :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_WallPublish :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_Friend :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_FriendAccepted :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_GroupAccepted :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_Msg :: Maybe [AccountPushParamsMode]
  , accountPushParams_WallPost :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_Chat :: Maybe [AccountPushParamsMode]
  , accountPushParams_EventSoon :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_FriendFound :: Maybe [AccountPushParamsOnoff]
  , accountPushParams_Like :: Maybe [AccountPushParamsSettings]
  , accountPushParams_Mention :: Maybe [AccountPushParamsSettings]
  , accountPushParams_Reply :: Maybe [AccountPushParamsOnoff]
  } deriving (Show, Generic)

instance FromJSON AccountPushParams where
  parseJSON = withObject "AccountPushParams" \o -> AccountPushParams
    <$> o .:? "app_request"
    <*> o .:? "repost"
    <*> o .:? "sdk_open"
    <*> o .:? "group_invite"
    <*> o .:? "birthday"
    <*> o .:? "comment"
    <*> o .:? "new_post"
    <*> o .:? "wall_publish"
    <*> o .:? "friend"
    <*> o .:? "friend_accepted"
    <*> o .:? "group_accepted"
    <*> o .:? "msg"
    <*> o .:? "wall_post"
    <*> o .:? "chat"
    <*> o .:? "event_soon"
    <*> o .:? "friend_found"
    <*> o .:? "like"
    <*> o .:? "mention"
    <*> o .:? "reply"