module VkApi.Objects.MessagesTemplateActionTypeNames where

import VkApi.Objects.Utils



data MessagesTemplateActionTypeNames = MessagesTemplateActionTypeNamesText | MessagesTemplateActionTypeNamesStart | MessagesTemplateActionTypeNamesLocation | MessagesTemplateActionTypeNamesVkpay | MessagesTemplateActionTypeNamesOpenApp | MessagesTemplateActionTypeNamesOpenPhoto | MessagesTemplateActionTypeNamesOpenLink | MessagesTemplateActionTypeNamesCallback | MessagesTemplateActionTypeNamesIntentSubscribe | MessagesTemplateActionTypeNamesIntentUnsubscribe
  deriving (Show, Generic)

instance FromJSON MessagesTemplateActionTypeNames where
  parseJSON = withText "MessagesTemplateActionTypeNames" \ t -> case t of 
    "text" -> pure MessagesTemplateActionTypeNamesText
    "start" -> pure MessagesTemplateActionTypeNamesStart
    "location" -> pure MessagesTemplateActionTypeNamesLocation
    "vkpay" -> pure MessagesTemplateActionTypeNamesVkpay
    "open_app" -> pure MessagesTemplateActionTypeNamesOpenApp
    "open_photo" -> pure MessagesTemplateActionTypeNamesOpenPhoto
    "open_link" -> pure MessagesTemplateActionTypeNamesOpenLink
    "callback" -> pure MessagesTemplateActionTypeNamesCallback
    "intent_subscribe" -> pure MessagesTemplateActionTypeNamesIntentSubscribe
    "intent_unsubscribe" -> pure MessagesTemplateActionTypeNamesIntentUnsubscribe
    _ -> fail "MessagesTemplateActionTypeNames: doesnt match case"
