module VkApi.Objects.StoriesUploadLinkText where

import VkApi.Objects.Utils



data StoriesUploadLinkText = StoriesUploadLinkTextToStore | StoriesUploadLinkTextVote | StoriesUploadLinkTextMore | StoriesUploadLinkTextBook | StoriesUploadLinkTextOrder | StoriesUploadLinkTextEnroll | StoriesUploadLinkTextFill | StoriesUploadLinkTextSignup | StoriesUploadLinkTextBuy | StoriesUploadLinkTextTicket | StoriesUploadLinkTextWrite | StoriesUploadLinkTextOpen | StoriesUploadLinkTextLearnMore | StoriesUploadLinkTextView | StoriesUploadLinkTextGoTo | StoriesUploadLinkTextContact | StoriesUploadLinkTextWatch | StoriesUploadLinkTextPlay | StoriesUploadLinkTextInstall | StoriesUploadLinkTextRead | StoriesUploadLinkTextCalendar
  deriving (Show, Generic)

instance FromJSON StoriesUploadLinkText where
  parseJSON = withText "StoriesUploadLinkText" \ t -> case t of 
    "to_store" -> pure StoriesUploadLinkTextToStore
    "vote" -> pure StoriesUploadLinkTextVote
    "more" -> pure StoriesUploadLinkTextMore
    "book" -> pure StoriesUploadLinkTextBook
    "order" -> pure StoriesUploadLinkTextOrder
    "enroll" -> pure StoriesUploadLinkTextEnroll
    "fill" -> pure StoriesUploadLinkTextFill
    "signup" -> pure StoriesUploadLinkTextSignup
    "buy" -> pure StoriesUploadLinkTextBuy
    "ticket" -> pure StoriesUploadLinkTextTicket
    "write" -> pure StoriesUploadLinkTextWrite
    "open" -> pure StoriesUploadLinkTextOpen
    "learn_more" -> pure StoriesUploadLinkTextLearnMore
    "view" -> pure StoriesUploadLinkTextView
    "go_to" -> pure StoriesUploadLinkTextGoTo
    "contact" -> pure StoriesUploadLinkTextContact
    "watch" -> pure StoriesUploadLinkTextWatch
    "play" -> pure StoriesUploadLinkTextPlay
    "install" -> pure StoriesUploadLinkTextInstall
    "read" -> pure StoriesUploadLinkTextRead
    "calendar" -> pure StoriesUploadLinkTextCalendar
    _ -> fail "StoriesUploadLinkText: doesnt match case"
