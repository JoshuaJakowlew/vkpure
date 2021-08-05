module VkApi.Objects.GroupsLongPollEvents where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data GroupsLongPollEvents = GroupsLongPollEvents
  { groupsLongPollEvents_DonutSubscriptionPriceChanged :: Maybe BaseBoolInt
  , groupsLongPollEvents_PhotoNew :: BaseBoolInt
  , groupsLongPollEvents_MarketCommentRestore :: BaseBoolInt
  , groupsLongPollEvents_UserBlock :: BaseBoolInt
  , groupsLongPollEvents_PhotoCommentRestore :: BaseBoolInt
  , groupsLongPollEvents_UserUnblock :: BaseBoolInt
  , groupsLongPollEvents_DonutSubscriptionCancelled :: Maybe BaseBoolInt
  , groupsLongPollEvents_DonutMoneyWithdrawError :: Maybe BaseBoolInt
  , groupsLongPollEvents_DonutSubscriptionProlonged :: Maybe BaseBoolInt
  , groupsLongPollEvents_DonutMoneyWithdraw :: Maybe BaseBoolInt
  , groupsLongPollEvents_MarketOrderEdit :: Maybe BaseBoolInt
  , groupsLongPollEvents_MarketOrderNew :: Maybe BaseBoolInt
  , groupsLongPollEvents_MessageReply :: BaseBoolInt
  , groupsLongPollEvents_PhotoCommentEdit :: BaseBoolInt
  , groupsLongPollEvents_GroupLeave :: BaseBoolInt
  , groupsLongPollEvents_MarketCommentEdit :: BaseBoolInt
  , groupsLongPollEvents_VideoCommentDelete :: BaseBoolInt
  , groupsLongPollEvents_BoardPostDelete :: BaseBoolInt
  , groupsLongPollEvents_PollVoteNew :: BaseBoolInt
  , groupsLongPollEvents_DonutSubscriptionCreate :: Maybe BaseBoolInt
  , groupsLongPollEvents_WallReplyEdit :: BaseBoolInt
  , groupsLongPollEvents_WallReplyNew :: BaseBoolInt
  , groupsLongPollEvents_GroupChangePhoto :: BaseBoolInt
  , groupsLongPollEvents_WallReplyDelete :: BaseBoolInt
  , groupsLongPollEvents_LeadFormsNew :: Maybe BaseBoolInt
  , groupsLongPollEvents_VideoCommentRestore :: BaseBoolInt
  , groupsLongPollEvents_VideoNew :: BaseBoolInt
  , groupsLongPollEvents_GroupJoin :: BaseBoolInt
  , groupsLongPollEvents_WallPostNew :: BaseBoolInt
  , groupsLongPollEvents_BoardPostRestore :: BaseBoolInt
  , groupsLongPollEvents_GroupChangeSettings :: BaseBoolInt
  , groupsLongPollEvents_WallReplyRestore :: BaseBoolInt
  , groupsLongPollEvents_MessageTypingState :: BaseBoolInt
  , groupsLongPollEvents_PhotoCommentDelete :: BaseBoolInt
  , groupsLongPollEvents_VideoCommentEdit :: BaseBoolInt
  , groupsLongPollEvents_MarketCommentDelete :: BaseBoolInt
  , groupsLongPollEvents_MessageRead :: BaseBoolInt
  , groupsLongPollEvents_VideoCommentNew :: BaseBoolInt
  , groupsLongPollEvents_BoardPostEdit :: BaseBoolInt
  , groupsLongPollEvents_WallRepost :: BaseBoolInt
  , groupsLongPollEvents_BoardPostNew :: BaseBoolInt
  , groupsLongPollEvents_MarketCommentNew :: BaseBoolInt
  , groupsLongPollEvents_PhotoCommentNew :: BaseBoolInt
  , groupsLongPollEvents_MessageEdit :: BaseBoolInt
  , groupsLongPollEvents_DonutSubscriptionExpired :: Maybe BaseBoolInt
  , groupsLongPollEvents_MessageNew :: BaseBoolInt
  , groupsLongPollEvents_MessageAllow :: BaseBoolInt
  , groupsLongPollEvents_AudioNew :: BaseBoolInt
  , groupsLongPollEvents_MessageDeny :: BaseBoolInt
  , groupsLongPollEvents_GroupOfficersEdit :: BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON GroupsLongPollEvents where
  parseJSON = withObject "GroupsLongPollEvents" \o -> GroupsLongPollEvents
    <$> o .:? "donut_subscription_price_changed"
    <*> o .: "photo_new"
    <*> o .: "market_comment_restore"
    <*> o .: "user_block"
    <*> o .: "photo_comment_restore"
    <*> o .: "user_unblock"
    <*> o .:? "donut_subscription_cancelled"
    <*> o .:? "donut_money_withdraw_error"
    <*> o .:? "donut_subscription_prolonged"
    <*> o .:? "donut_money_withdraw"
    <*> o .:? "market_order_edit"
    <*> o .:? "market_order_new"
    <*> o .: "message_reply"
    <*> o .: "photo_comment_edit"
    <*> o .: "group_leave"
    <*> o .: "market_comment_edit"
    <*> o .: "video_comment_delete"
    <*> o .: "board_post_delete"
    <*> o .: "poll_vote_new"
    <*> o .:? "donut_subscription_create"
    <*> o .: "wall_reply_edit"
    <*> o .: "wall_reply_new"
    <*> o .: "group_change_photo"
    <*> o .: "wall_reply_delete"
    <*> o .:? "lead_forms_new"
    <*> o .: "video_comment_restore"
    <*> o .: "video_new"
    <*> o .: "group_join"
    <*> o .: "wall_post_new"
    <*> o .: "board_post_restore"
    <*> o .: "group_change_settings"
    <*> o .: "wall_reply_restore"
    <*> o .: "message_typing_state"
    <*> o .: "photo_comment_delete"
    <*> o .: "video_comment_edit"
    <*> o .: "market_comment_delete"
    <*> o .: "message_read"
    <*> o .: "video_comment_new"
    <*> o .: "board_post_edit"
    <*> o .: "wall_repost"
    <*> o .: "board_post_new"
    <*> o .: "market_comment_new"
    <*> o .: "photo_comment_new"
    <*> o .: "message_edit"
    <*> o .:? "donut_subscription_expired"
    <*> o .: "message_new"
    <*> o .: "message_allow"
    <*> o .: "audio_new"
    <*> o .: "message_deny"
    <*> o .: "group_officers_edit"