module VkApi.Objects.AccountNameRequestStatus where

import VkApi.Objects.Utils



data AccountNameRequestStatus = AccountNameRequestStatusSuccess | AccountNameRequestStatusProcessing | AccountNameRequestStatusDeclined | AccountNameRequestStatusWasAccepted | AccountNameRequestStatusWasDeclined | AccountNameRequestStatusDeclinedWithLink | AccountNameRequestStatusResponse | AccountNameRequestStatusResponseWithLink
  deriving (Show, Generic)

instance FromJSON AccountNameRequestStatus where
  parseJSON = withText "AccountNameRequestStatus" \ t -> case t of 
    "success" -> pure AccountNameRequestStatusSuccess
    "processing" -> pure AccountNameRequestStatusProcessing
    "declined" -> pure AccountNameRequestStatusDeclined
    "was_accepted" -> pure AccountNameRequestStatusWasAccepted
    "was_declined" -> pure AccountNameRequestStatusWasDeclined
    "declined_with_link" -> pure AccountNameRequestStatusDeclinedWithLink
    "response" -> pure AccountNameRequestStatusResponse
    "response_with_link" -> pure AccountNameRequestStatusResponseWithLink
    _ -> fail "AccountNameRequestStatus: doesnt match case"
