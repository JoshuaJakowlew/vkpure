module VkApi.Objects.BaseUserGroupFields where

import VkApi.Objects.Utils



data BaseUserGroupFields = BaseUserGroupFieldsAbout | BaseUserGroupFieldsActionButton | BaseUserGroupFieldsActivities | BaseUserGroupFieldsActivity | BaseUserGroupFieldsAddresses | BaseUserGroupFieldsAdminLevel | BaseUserGroupFieldsAgeLimits | BaseUserGroupFieldsAuthorId | BaseUserGroupFieldsBanInfo | BaseUserGroupFieldsBdate | BaseUserGroupFieldsBlacklisted | BaseUserGroupFieldsBlacklistedByMe | BaseUserGroupFieldsBooks | BaseUserGroupFieldsCanCreateTopic | BaseUserGroupFieldsCanMessage | BaseUserGroupFieldsCanPost | BaseUserGroupFieldsCanSeeAllPosts | BaseUserGroupFieldsCanSeeAudio | BaseUserGroupFieldsCanSendFriendRequest | BaseUserGroupFieldsCanUploadVideo | BaseUserGroupFieldsCanWritePrivateMessage | BaseUserGroupFieldsCareer | BaseUserGroupFieldsCity | BaseUserGroupFieldsCommonCount | BaseUserGroupFieldsConnections | BaseUserGroupFieldsContacts | BaseUserGroupFieldsCounters | BaseUserGroupFieldsCountry | BaseUserGroupFieldsCover | BaseUserGroupFieldsCropPhoto | BaseUserGroupFieldsDeactivated | BaseUserGroupFieldsDescription | BaseUserGroupFieldsDomain | BaseUserGroupFieldsEducation | BaseUserGroupFieldsExports | BaseUserGroupFieldsFinishDate | BaseUserGroupFieldsFixedPost | BaseUserGroupFieldsFollowersCount | BaseUserGroupFieldsFriendStatus | BaseUserGroupFieldsGames | BaseUserGroupFieldsHasMarketApp | BaseUserGroupFieldsHasMobile | BaseUserGroupFieldsHasPhoto | BaseUserGroupFieldsHomeTown | BaseUserGroupFieldsId | BaseUserGroupFieldsInterests | BaseUserGroupFieldsIsAdmin | BaseUserGroupFieldsIsClosed | BaseUserGroupFieldsIsFavorite | BaseUserGroupFieldsIsFriend | BaseUserGroupFieldsIsHiddenFromFeed | BaseUserGroupFieldsIsMember | BaseUserGroupFieldsIsMessagesBlocked | BaseUserGroupFieldsCanSendNotify | BaseUserGroupFieldsIsSubscribed | BaseUserGroupFieldsLastSeen | BaseUserGroupFieldsLinks | BaseUserGroupFieldsLists | BaseUserGroupFieldsMaidenName | BaseUserGroupFieldsMainAlbumId | BaseUserGroupFieldsMainSection | BaseUserGroupFieldsMarket | BaseUserGroupFieldsMemberStatus | BaseUserGroupFieldsMembersCount | BaseUserGroupFieldsMilitary | BaseUserGroupFieldsMovies | BaseUserGroupFieldsMusic | BaseUserGroupFieldsName | BaseUserGroupFieldsNickname | BaseUserGroupFieldsOccupation | BaseUserGroupFieldsOnline | BaseUserGroupFieldsOnlineStatus | BaseUserGroupFieldsPersonal | BaseUserGroupFieldsPhone | BaseUserGroupFieldsPhoto100 | BaseUserGroupFieldsPhoto200 | BaseUserGroupFieldsPhoto200Orig | BaseUserGroupFieldsPhoto400Orig | BaseUserGroupFieldsPhoto50 | BaseUserGroupFieldsPhotoId | BaseUserGroupFieldsPhotoMax | BaseUserGroupFieldsPhotoMaxOrig | BaseUserGroupFieldsQuotes | BaseUserGroupFieldsRelation | BaseUserGroupFieldsRelatives | BaseUserGroupFieldsSchools | BaseUserGroupFieldsScreenName | BaseUserGroupFieldsSex | BaseUserGroupFieldsSite | BaseUserGroupFieldsStartDate | BaseUserGroupFieldsStatus | BaseUserGroupFieldsTimezone | BaseUserGroupFieldsTrending | BaseUserGroupFieldsTv | BaseUserGroupFieldsType | BaseUserGroupFieldsUniversities | BaseUserGroupFieldsVerified | BaseUserGroupFieldsWallComments | BaseUserGroupFieldsWikiPage | BaseUserGroupFieldsVkAdminStatus
  deriving (Show, Generic)

instance FromJSON BaseUserGroupFields where
  parseJSON = withText "BaseUserGroupFields" \ t -> case t of 
    "about" -> pure BaseUserGroupFieldsAbout
    "action_button" -> pure BaseUserGroupFieldsActionButton
    "activities" -> pure BaseUserGroupFieldsActivities
    "activity" -> pure BaseUserGroupFieldsActivity
    "addresses" -> pure BaseUserGroupFieldsAddresses
    "admin_level" -> pure BaseUserGroupFieldsAdminLevel
    "age_limits" -> pure BaseUserGroupFieldsAgeLimits
    "author_id" -> pure BaseUserGroupFieldsAuthorId
    "ban_info" -> pure BaseUserGroupFieldsBanInfo
    "bdate" -> pure BaseUserGroupFieldsBdate
    "blacklisted" -> pure BaseUserGroupFieldsBlacklisted
    "blacklisted_by_me" -> pure BaseUserGroupFieldsBlacklistedByMe
    "books" -> pure BaseUserGroupFieldsBooks
    "can_create_topic" -> pure BaseUserGroupFieldsCanCreateTopic
    "can_message" -> pure BaseUserGroupFieldsCanMessage
    "can_post" -> pure BaseUserGroupFieldsCanPost
    "can_see_all_posts" -> pure BaseUserGroupFieldsCanSeeAllPosts
    "can_see_audio" -> pure BaseUserGroupFieldsCanSeeAudio
    "can_send_friend_request" -> pure BaseUserGroupFieldsCanSendFriendRequest
    "can_upload_video" -> pure BaseUserGroupFieldsCanUploadVideo
    "can_write_private_message" -> pure BaseUserGroupFieldsCanWritePrivateMessage
    "career" -> pure BaseUserGroupFieldsCareer
    "city" -> pure BaseUserGroupFieldsCity
    "common_count" -> pure BaseUserGroupFieldsCommonCount
    "connections" -> pure BaseUserGroupFieldsConnections
    "contacts" -> pure BaseUserGroupFieldsContacts
    "counters" -> pure BaseUserGroupFieldsCounters
    "country" -> pure BaseUserGroupFieldsCountry
    "cover" -> pure BaseUserGroupFieldsCover
    "crop_photo" -> pure BaseUserGroupFieldsCropPhoto
    "deactivated" -> pure BaseUserGroupFieldsDeactivated
    "description" -> pure BaseUserGroupFieldsDescription
    "domain" -> pure BaseUserGroupFieldsDomain
    "education" -> pure BaseUserGroupFieldsEducation
    "exports" -> pure BaseUserGroupFieldsExports
    "finish_date" -> pure BaseUserGroupFieldsFinishDate
    "fixed_post" -> pure BaseUserGroupFieldsFixedPost
    "followers_count" -> pure BaseUserGroupFieldsFollowersCount
    "friend_status" -> pure BaseUserGroupFieldsFriendStatus
    "games" -> pure BaseUserGroupFieldsGames
    "has_market_app" -> pure BaseUserGroupFieldsHasMarketApp
    "has_mobile" -> pure BaseUserGroupFieldsHasMobile
    "has_photo" -> pure BaseUserGroupFieldsHasPhoto
    "home_town" -> pure BaseUserGroupFieldsHomeTown
    "id" -> pure BaseUserGroupFieldsId
    "interests" -> pure BaseUserGroupFieldsInterests
    "is_admin" -> pure BaseUserGroupFieldsIsAdmin
    "is_closed" -> pure BaseUserGroupFieldsIsClosed
    "is_favorite" -> pure BaseUserGroupFieldsIsFavorite
    "is_friend" -> pure BaseUserGroupFieldsIsFriend
    "is_hidden_from_feed" -> pure BaseUserGroupFieldsIsHiddenFromFeed
    "is_member" -> pure BaseUserGroupFieldsIsMember
    "is_messages_blocked" -> pure BaseUserGroupFieldsIsMessagesBlocked
    "can_send_notify" -> pure BaseUserGroupFieldsCanSendNotify
    "is_subscribed" -> pure BaseUserGroupFieldsIsSubscribed
    "last_seen" -> pure BaseUserGroupFieldsLastSeen
    "links" -> pure BaseUserGroupFieldsLinks
    "lists" -> pure BaseUserGroupFieldsLists
    "maiden_name" -> pure BaseUserGroupFieldsMaidenName
    "main_album_id" -> pure BaseUserGroupFieldsMainAlbumId
    "main_section" -> pure BaseUserGroupFieldsMainSection
    "market" -> pure BaseUserGroupFieldsMarket
    "member_status" -> pure BaseUserGroupFieldsMemberStatus
    "members_count" -> pure BaseUserGroupFieldsMembersCount
    "military" -> pure BaseUserGroupFieldsMilitary
    "movies" -> pure BaseUserGroupFieldsMovies
    "music" -> pure BaseUserGroupFieldsMusic
    "name" -> pure BaseUserGroupFieldsName
    "nickname" -> pure BaseUserGroupFieldsNickname
    "occupation" -> pure BaseUserGroupFieldsOccupation
    "online" -> pure BaseUserGroupFieldsOnline
    "online_status" -> pure BaseUserGroupFieldsOnlineStatus
    "personal" -> pure BaseUserGroupFieldsPersonal
    "phone" -> pure BaseUserGroupFieldsPhone
    "photo_100" -> pure BaseUserGroupFieldsPhoto100
    "photo_200" -> pure BaseUserGroupFieldsPhoto200
    "photo_200_orig" -> pure BaseUserGroupFieldsPhoto200Orig
    "photo_400_orig" -> pure BaseUserGroupFieldsPhoto400Orig
    "photo_50" -> pure BaseUserGroupFieldsPhoto50
    "photo_id" -> pure BaseUserGroupFieldsPhotoId
    "photo_max" -> pure BaseUserGroupFieldsPhotoMax
    "photo_max_orig" -> pure BaseUserGroupFieldsPhotoMaxOrig
    "quotes" -> pure BaseUserGroupFieldsQuotes
    "relation" -> pure BaseUserGroupFieldsRelation
    "relatives" -> pure BaseUserGroupFieldsRelatives
    "schools" -> pure BaseUserGroupFieldsSchools
    "screen_name" -> pure BaseUserGroupFieldsScreenName
    "sex" -> pure BaseUserGroupFieldsSex
    "site" -> pure BaseUserGroupFieldsSite
    "start_date" -> pure BaseUserGroupFieldsStartDate
    "status" -> pure BaseUserGroupFieldsStatus
    "timezone" -> pure BaseUserGroupFieldsTimezone
    "trending" -> pure BaseUserGroupFieldsTrending
    "tv" -> pure BaseUserGroupFieldsTv
    "type" -> pure BaseUserGroupFieldsType
    "universities" -> pure BaseUserGroupFieldsUniversities
    "verified" -> pure BaseUserGroupFieldsVerified
    "wall_comments" -> pure BaseUserGroupFieldsWallComments
    "wiki_page" -> pure BaseUserGroupFieldsWikiPage
    "vk_admin_status" -> pure BaseUserGroupFieldsVkAdminStatus
    _ -> fail "BaseUserGroupFields: doesnt match case"
