module VkApi.Objects.UsersFields where

import VkApi.Objects.Utils



data UsersFields = UsersFieldsFirstNameNom | UsersFieldsFirstNameGen | UsersFieldsFirstNameDat | UsersFieldsFirstNameAcc | UsersFieldsFirstNameIns | UsersFieldsFirstNameAbl | UsersFieldsLastNameNom | UsersFieldsLastNameGen | UsersFieldsLastNameDat | UsersFieldsLastNameAcc | UsersFieldsLastNameIns | UsersFieldsLastNameAbl | UsersFieldsPhotoId | UsersFieldsVerified | UsersFieldsSex | UsersFieldsBdate | UsersFieldsCity | UsersFieldsCountry | UsersFieldsHomeTown | UsersFieldsHasPhoto | UsersFieldsPhoto50 | UsersFieldsPhoto100 | UsersFieldsPhoto200Orig | UsersFieldsPhoto200 | UsersFieldsPhoto400 | UsersFieldsPhoto400Orig | UsersFieldsPhotoMax | UsersFieldsPhotoMaxOrig | UsersFieldsPhotoMaxSize | UsersFieldsOnline | UsersFieldsLists | UsersFieldsDomain | UsersFieldsHasMobile | UsersFieldsContacts | UsersFieldsSite | UsersFieldsEducation | UsersFieldsUniversities | UsersFieldsSchools | UsersFieldsStatus | UsersFieldsLastSeen | UsersFieldsFollowersCount | UsersFieldsCounters | UsersFieldsCommonCount | UsersFieldsOccupation | UsersFieldsNickname | UsersFieldsRelatives | UsersFieldsRelation | UsersFieldsPersonal | UsersFieldsConnections | UsersFieldsExports | UsersFieldsWallComments | UsersFieldsActivities | UsersFieldsInterests | UsersFieldsMusic | UsersFieldsMovies | UsersFieldsTv | UsersFieldsBooks | UsersFieldsGames | UsersFieldsAbout | UsersFieldsQuotes | UsersFieldsCanPost | UsersFieldsCanSeeAllPosts | UsersFieldsCanSeeAudio | UsersFieldsCanWritePrivateMessage | UsersFieldsCanSendFriendRequest | UsersFieldsIsFavorite | UsersFieldsIsHiddenFromFeed | UsersFieldsTimezone | UsersFieldsScreenName | UsersFieldsMaidenName | UsersFieldsCropPhoto | UsersFieldsIsFriend | UsersFieldsFriendStatus | UsersFieldsCareer | UsersFieldsMilitary | UsersFieldsBlacklisted | UsersFieldsBlacklistedByMe | UsersFieldsCanSubscribePosts | UsersFieldsDescriptions | UsersFieldsTrending | UsersFieldsMutual | UsersFieldsFriendshipWeeks | UsersFieldsCanInviteToChats | UsersFieldsStoriesArchiveCount | UsersFieldsHasUnseenStories | UsersFieldsVideoLiveLevel | UsersFieldsVideoLiveCount | UsersFieldsClipsCount | UsersFieldsServiceDescription | UsersFieldsIsDead
  deriving (Show, Generic)

instance FromJSON UsersFields where
  parseJSON = withText "UsersFields" \ t -> case t of 
    "first_name_nom" -> pure UsersFieldsFirstNameNom
    "first_name_gen" -> pure UsersFieldsFirstNameGen
    "first_name_dat" -> pure UsersFieldsFirstNameDat
    "first_name_acc" -> pure UsersFieldsFirstNameAcc
    "first_name_ins" -> pure UsersFieldsFirstNameIns
    "first_name_abl" -> pure UsersFieldsFirstNameAbl
    "last_name_nom" -> pure UsersFieldsLastNameNom
    "last_name_gen" -> pure UsersFieldsLastNameGen
    "last_name_dat" -> pure UsersFieldsLastNameDat
    "last_name_acc" -> pure UsersFieldsLastNameAcc
    "last_name_ins" -> pure UsersFieldsLastNameIns
    "last_name_abl" -> pure UsersFieldsLastNameAbl
    "photo_id" -> pure UsersFieldsPhotoId
    "verified" -> pure UsersFieldsVerified
    "sex" -> pure UsersFieldsSex
    "bdate" -> pure UsersFieldsBdate
    "city" -> pure UsersFieldsCity
    "country" -> pure UsersFieldsCountry
    "home_town" -> pure UsersFieldsHomeTown
    "has_photo" -> pure UsersFieldsHasPhoto
    "photo_50" -> pure UsersFieldsPhoto50
    "photo_100" -> pure UsersFieldsPhoto100
    "photo_200_orig" -> pure UsersFieldsPhoto200Orig
    "photo_200" -> pure UsersFieldsPhoto200
    "photo_400" -> pure UsersFieldsPhoto400
    "photo_400_orig" -> pure UsersFieldsPhoto400Orig
    "photo_max" -> pure UsersFieldsPhotoMax
    "photo_max_orig" -> pure UsersFieldsPhotoMaxOrig
    "photo_max_size" -> pure UsersFieldsPhotoMaxSize
    "online" -> pure UsersFieldsOnline
    "lists" -> pure UsersFieldsLists
    "domain" -> pure UsersFieldsDomain
    "has_mobile" -> pure UsersFieldsHasMobile
    "contacts" -> pure UsersFieldsContacts
    "site" -> pure UsersFieldsSite
    "education" -> pure UsersFieldsEducation
    "universities" -> pure UsersFieldsUniversities
    "schools" -> pure UsersFieldsSchools
    "status" -> pure UsersFieldsStatus
    "last_seen" -> pure UsersFieldsLastSeen
    "followers_count" -> pure UsersFieldsFollowersCount
    "counters" -> pure UsersFieldsCounters
    "common_count" -> pure UsersFieldsCommonCount
    "occupation" -> pure UsersFieldsOccupation
    "nickname" -> pure UsersFieldsNickname
    "relatives" -> pure UsersFieldsRelatives
    "relation" -> pure UsersFieldsRelation
    "personal" -> pure UsersFieldsPersonal
    "connections" -> pure UsersFieldsConnections
    "exports" -> pure UsersFieldsExports
    "wall_comments" -> pure UsersFieldsWallComments
    "activities" -> pure UsersFieldsActivities
    "interests" -> pure UsersFieldsInterests
    "music" -> pure UsersFieldsMusic
    "movies" -> pure UsersFieldsMovies
    "tv" -> pure UsersFieldsTv
    "books" -> pure UsersFieldsBooks
    "games" -> pure UsersFieldsGames
    "about" -> pure UsersFieldsAbout
    "quotes" -> pure UsersFieldsQuotes
    "can_post" -> pure UsersFieldsCanPost
    "can_see_all_posts" -> pure UsersFieldsCanSeeAllPosts
    "can_see_audio" -> pure UsersFieldsCanSeeAudio
    "can_write_private_message" -> pure UsersFieldsCanWritePrivateMessage
    "can_send_friend_request" -> pure UsersFieldsCanSendFriendRequest
    "is_favorite" -> pure UsersFieldsIsFavorite
    "is_hidden_from_feed" -> pure UsersFieldsIsHiddenFromFeed
    "timezone" -> pure UsersFieldsTimezone
    "screen_name" -> pure UsersFieldsScreenName
    "maiden_name" -> pure UsersFieldsMaidenName
    "crop_photo" -> pure UsersFieldsCropPhoto
    "is_friend" -> pure UsersFieldsIsFriend
    "friend_status" -> pure UsersFieldsFriendStatus
    "career" -> pure UsersFieldsCareer
    "military" -> pure UsersFieldsMilitary
    "blacklisted" -> pure UsersFieldsBlacklisted
    "blacklisted_by_me" -> pure UsersFieldsBlacklistedByMe
    "can_subscribe_posts" -> pure UsersFieldsCanSubscribePosts
    "descriptions" -> pure UsersFieldsDescriptions
    "trending" -> pure UsersFieldsTrending
    "mutual" -> pure UsersFieldsMutual
    "friendship_weeks" -> pure UsersFieldsFriendshipWeeks
    "can_invite_to_chats" -> pure UsersFieldsCanInviteToChats
    "stories_archive_count" -> pure UsersFieldsStoriesArchiveCount
    "has_unseen_stories" -> pure UsersFieldsHasUnseenStories
    "video_live_level" -> pure UsersFieldsVideoLiveLevel
    "video_live_count" -> pure UsersFieldsVideoLiveCount
    "clips_count" -> pure UsersFieldsClipsCount
    "service_description" -> pure UsersFieldsServiceDescription
    "is_dead" -> pure UsersFieldsIsDead
    _ -> fail "UsersFields: doesnt match case"
