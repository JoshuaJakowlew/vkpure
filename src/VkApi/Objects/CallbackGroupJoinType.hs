module VkApi.Objects.CallbackGroupJoinType where

import VkApi.Objects.Utils



data CallbackGroupJoinType = CallbackGroupJoinTypeJoin | CallbackGroupJoinTypeUnsure | CallbackGroupJoinTypeAccepted | CallbackGroupJoinTypeApproved | CallbackGroupJoinTypeRequest
  deriving (Show, Generic)

instance FromJSON CallbackGroupJoinType where
  parseJSON = withText "CallbackGroupJoinType" \ t -> case t of 
    "join" -> pure CallbackGroupJoinTypeJoin
    "unsure" -> pure CallbackGroupJoinTypeUnsure
    "accepted" -> pure CallbackGroupJoinTypeAccepted
    "approved" -> pure CallbackGroupJoinTypeApproved
    "request" -> pure CallbackGroupJoinTypeRequest
    _ -> fail "CallbackGroupJoinType: doesnt match case"
