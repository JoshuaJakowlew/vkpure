module VkApi.Objects.GiftsLayout where

import VkApi.Objects.Utils



data GiftsLayout = GiftsLayout
  { giftsLayout_StickersProductId :: Maybe Int
  , giftsLayout_Thumb96 :: Maybe Text
  , giftsLayout_Id :: Maybe Int
  , giftsLayout_IsStickersStyle :: Maybe Bool
  , giftsLayout_Thumb512 :: Maybe Text
  , giftsLayout_BuildId :: Maybe Text
  , giftsLayout_Thumb256 :: Maybe Text
  , giftsLayout_Thumb48 :: Maybe Text
  , giftsLayout_Keywords :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GiftsLayout where
  parseJSON = withObject "GiftsLayout" \o -> GiftsLayout
    <$> o .:? "stickers_product_id"
    <*> o .:? "thumb_96"
    <*> o .:? "id"
    <*> o .:? "is_stickers_style"
    <*> o .:? "thumb_512"
    <*> o .:? "build_id"
    <*> o .:? "thumb_256"
    <*> o .:? "thumb_48"
    <*> o .:? "keywords"