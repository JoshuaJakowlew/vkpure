module VkApi.Objects.CallbackType where

import VkApi.Objects.Utils



data CallbackType = CallbackTypeAudioNew | CallbackTypeBoardPostNew | CallbackTypeBoardPostEdit | CallbackTypeBoardPostRestore | CallbackTypeBoardPostDelete | CallbackTypeConfirmation | CallbackTypeGroupLeave | CallbackTypeGroupJoin | CallbackTypeGroupChangePhoto | CallbackTypeGroupChangeSettings | CallbackTypeGroupOfficersEdit | CallbackTypeLeadFormsNew | CallbackTypeMarketCommentNew | CallbackTypeMarketCommentDelete | CallbackTypeMarketCommentEdit | CallbackTypeMarketCommentRestore | CallbackTypeMessageNew | CallbackTypeMessageReply | CallbackTypeMessageEdit | CallbackTypeMessageAllow | CallbackTypeMessageDeny | CallbackTypeMessageRead | CallbackTypeMessageTypingState | CallbackTypeMessagesEdit | CallbackTypePhotoNew | CallbackTypePhotoCommentNew | CallbackTypePhotoCommentDelete | CallbackTypePhotoCommentEdit | CallbackTypePhotoCommentRestore | CallbackTypePollVoteNew | CallbackTypeUserBlock | CallbackTypeUserUnblock | CallbackTypeVideoNew | CallbackTypeVideoCommentNew | CallbackTypeVideoCommentDelete | CallbackTypeVideoCommentEdit | CallbackTypeVideoCommentRestore | CallbackTypeWallPostNew | CallbackTypeWallReplyNew | CallbackTypeWallReplyEdit | CallbackTypeWallReplyDelete | CallbackTypeWallReplyRestore | CallbackTypeWallRepost
  deriving (Show, Generic)

instance FromJSON CallbackType where
  parseJSON = withText "CallbackType" \ t -> case t of 
    "audio_new" -> pure CallbackTypeAudioNew
    "board_post_new" -> pure CallbackTypeBoardPostNew
    "board_post_edit" -> pure CallbackTypeBoardPostEdit
    "board_post_restore" -> pure CallbackTypeBoardPostRestore
    "board_post_delete" -> pure CallbackTypeBoardPostDelete
    "confirmation" -> pure CallbackTypeConfirmation
    "group_leave" -> pure CallbackTypeGroupLeave
    "group_join" -> pure CallbackTypeGroupJoin
    "group_change_photo" -> pure CallbackTypeGroupChangePhoto
    "group_change_settings" -> pure CallbackTypeGroupChangeSettings
    "group_officers_edit" -> pure CallbackTypeGroupOfficersEdit
    "lead_forms_new" -> pure CallbackTypeLeadFormsNew
    "market_comment_new" -> pure CallbackTypeMarketCommentNew
    "market_comment_delete" -> pure CallbackTypeMarketCommentDelete
    "market_comment_edit" -> pure CallbackTypeMarketCommentEdit
    "market_comment_restore" -> pure CallbackTypeMarketCommentRestore
    "message_new" -> pure CallbackTypeMessageNew
    "message_reply" -> pure CallbackTypeMessageReply
    "message_edit" -> pure CallbackTypeMessageEdit
    "message_allow" -> pure CallbackTypeMessageAllow
    "message_deny" -> pure CallbackTypeMessageDeny
    "message_read" -> pure CallbackTypeMessageRead
    "message_typing_state" -> pure CallbackTypeMessageTypingState
    "messages_edit" -> pure CallbackTypeMessagesEdit
    "photo_new" -> pure CallbackTypePhotoNew
    "photo_comment_new" -> pure CallbackTypePhotoCommentNew
    "photo_comment_delete" -> pure CallbackTypePhotoCommentDelete
    "photo_comment_edit" -> pure CallbackTypePhotoCommentEdit
    "photo_comment_restore" -> pure CallbackTypePhotoCommentRestore
    "poll_vote_new" -> pure CallbackTypePollVoteNew
    "user_block" -> pure CallbackTypeUserBlock
    "user_unblock" -> pure CallbackTypeUserUnblock
    "video_new" -> pure CallbackTypeVideoNew
    "video_comment_new" -> pure CallbackTypeVideoCommentNew
    "video_comment_delete" -> pure CallbackTypeVideoCommentDelete
    "video_comment_edit" -> pure CallbackTypeVideoCommentEdit
    "video_comment_restore" -> pure CallbackTypeVideoCommentRestore
    "wall_post_new" -> pure CallbackTypeWallPostNew
    "wall_reply_new" -> pure CallbackTypeWallReplyNew
    "wall_reply_edit" -> pure CallbackTypeWallReplyEdit
    "wall_reply_delete" -> pure CallbackTypeWallReplyDelete
    "wall_reply_restore" -> pure CallbackTypeWallReplyRestore
    "wall_repost" -> pure CallbackTypeWallRepost
    _ -> fail "CallbackType: doesnt match case"
