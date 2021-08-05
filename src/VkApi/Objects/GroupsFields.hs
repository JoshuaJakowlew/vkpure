module VkApi.Objects.GroupsFields where

import VkApi.Objects.Utils



data GroupsFields = GroupsFieldsMarket | GroupsFieldsMemberStatus | GroupsFieldsIsFavorite | GroupsFieldsIsSubscribed | GroupsFieldsIsSubscribedPodcasts | GroupsFieldsCanSubscribePodcasts | GroupsFieldsCity | GroupsFieldsCountry | GroupsFieldsVerified | GroupsFieldsDescription | GroupsFieldsWikiPage | GroupsFieldsMembersCount | GroupsFieldsRequestsCount | GroupsFieldsCounters | GroupsFieldsCover | GroupsFieldsCanPost | GroupsFieldsCanSuggest | GroupsFieldsCanUploadStory | GroupsFieldsCanUploadDoc | GroupsFieldsCanUploadVideo | GroupsFieldsCanUploadClip | GroupsFieldsCanSeeAllPosts | GroupsFieldsCanCreateTopic | GroupsFieldsCropPhoto | GroupsFieldsActivity | GroupsFieldsFixedPost | GroupsFieldsHasPhoto | GroupsFieldsStatus | GroupsFieldsMainAlbumId | GroupsFieldsLinks | GroupsFieldsContacts | GroupsFieldsSite | GroupsFieldsMainSection | GroupsFieldsSecondarySection | GroupsFieldsWall | GroupsFieldsTrending | GroupsFieldsCanMessage | GroupsFieldsIsMarketCartEnabled | GroupsFieldsIsMessagesBlocked | GroupsFieldsCanSendNotify | GroupsFieldsHasGroupChannel | GroupsFieldsGroupChannel | GroupsFieldsOnlineStatus | GroupsFieldsStartDate | GroupsFieldsFinishDate | GroupsFieldsAgeLimits | GroupsFieldsBanInfo | GroupsFieldsActionButton | GroupsFieldsAuthorId | GroupsFieldsPhone | GroupsFieldsHasMarketApp | GroupsFieldsAddresses | GroupsFieldsLiveCovers | GroupsFieldsIsAdult | GroupsFieldsIsHiddenFromFeed | GroupsFieldsCanSubscribePosts | GroupsFieldsWarningNotification | GroupsFieldsMsgPushAllowed | GroupsFieldsStoriesArchiveCount | GroupsFieldsVideoLiveLevel | GroupsFieldsVideoLiveCount | GroupsFieldsClipsCount | GroupsFieldsHasUnseenStories | GroupsFieldsIsBusiness | GroupsFieldsTextlivesCount
  deriving (Show, Generic)

instance FromJSON GroupsFields where
  parseJSON = withText "GroupsFields" \ t -> case t of 
    "market" -> pure GroupsFieldsMarket
    "member_status" -> pure GroupsFieldsMemberStatus
    "is_favorite" -> pure GroupsFieldsIsFavorite
    "is_subscribed" -> pure GroupsFieldsIsSubscribed
    "is_subscribed_podcasts" -> pure GroupsFieldsIsSubscribedPodcasts
    "can_subscribe_podcasts" -> pure GroupsFieldsCanSubscribePodcasts
    "city" -> pure GroupsFieldsCity
    "country" -> pure GroupsFieldsCountry
    "verified" -> pure GroupsFieldsVerified
    "description" -> pure GroupsFieldsDescription
    "wiki_page" -> pure GroupsFieldsWikiPage
    "members_count" -> pure GroupsFieldsMembersCount
    "requests_count" -> pure GroupsFieldsRequestsCount
    "counters" -> pure GroupsFieldsCounters
    "cover" -> pure GroupsFieldsCover
    "can_post" -> pure GroupsFieldsCanPost
    "can_suggest" -> pure GroupsFieldsCanSuggest
    "can_upload_story" -> pure GroupsFieldsCanUploadStory
    "can_upload_doc" -> pure GroupsFieldsCanUploadDoc
    "can_upload_video" -> pure GroupsFieldsCanUploadVideo
    "can_upload_clip" -> pure GroupsFieldsCanUploadClip
    "can_see_all_posts" -> pure GroupsFieldsCanSeeAllPosts
    "can_create_topic" -> pure GroupsFieldsCanCreateTopic
    "crop_photo" -> pure GroupsFieldsCropPhoto
    "activity" -> pure GroupsFieldsActivity
    "fixed_post" -> pure GroupsFieldsFixedPost
    "has_photo" -> pure GroupsFieldsHasPhoto
    "status" -> pure GroupsFieldsStatus
    "main_album_id" -> pure GroupsFieldsMainAlbumId
    "links" -> pure GroupsFieldsLinks
    "contacts" -> pure GroupsFieldsContacts
    "site" -> pure GroupsFieldsSite
    "main_section" -> pure GroupsFieldsMainSection
    "secondary_section" -> pure GroupsFieldsSecondarySection
    "wall" -> pure GroupsFieldsWall
    "trending" -> pure GroupsFieldsTrending
    "can_message" -> pure GroupsFieldsCanMessage
    "is_market_cart_enabled" -> pure GroupsFieldsIsMarketCartEnabled
    "is_messages_blocked" -> pure GroupsFieldsIsMessagesBlocked
    "can_send_notify" -> pure GroupsFieldsCanSendNotify
    "has_group_channel" -> pure GroupsFieldsHasGroupChannel
    "group_channel" -> pure GroupsFieldsGroupChannel
    "online_status" -> pure GroupsFieldsOnlineStatus
    "start_date" -> pure GroupsFieldsStartDate
    "finish_date" -> pure GroupsFieldsFinishDate
    "age_limits" -> pure GroupsFieldsAgeLimits
    "ban_info" -> pure GroupsFieldsBanInfo
    "action_button" -> pure GroupsFieldsActionButton
    "author_id" -> pure GroupsFieldsAuthorId
    "phone" -> pure GroupsFieldsPhone
    "has_market_app" -> pure GroupsFieldsHasMarketApp
    "addresses" -> pure GroupsFieldsAddresses
    "live_covers" -> pure GroupsFieldsLiveCovers
    "is_adult" -> pure GroupsFieldsIsAdult
    "is_hidden_from_feed" -> pure GroupsFieldsIsHiddenFromFeed
    "can_subscribe_posts" -> pure GroupsFieldsCanSubscribePosts
    "warning_notification" -> pure GroupsFieldsWarningNotification
    "msg_push_allowed" -> pure GroupsFieldsMsgPushAllowed
    "stories_archive_count" -> pure GroupsFieldsStoriesArchiveCount
    "video_live_level" -> pure GroupsFieldsVideoLiveLevel
    "video_live_count" -> pure GroupsFieldsVideoLiveCount
    "clips_count" -> pure GroupsFieldsClipsCount
    "has_unseen_stories" -> pure GroupsFieldsHasUnseenStories
    "is_business" -> pure GroupsFieldsIsBusiness
    "textlives_count" -> pure GroupsFieldsTextlivesCount
    _ -> fail "GroupsFields: doesnt match case"
