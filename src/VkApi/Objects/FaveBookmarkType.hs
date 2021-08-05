module VkApi.Objects.FaveBookmarkType where

import VkApi.Objects.Utils



data FaveBookmarkType = FaveBookmarkTypePost | FaveBookmarkTypeVideo | FaveBookmarkTypeProduct | FaveBookmarkTypeArticle | FaveBookmarkTypeLink
  deriving (Show, Generic)

instance FromJSON FaveBookmarkType where
  parseJSON = withText "FaveBookmarkType" \ t -> case t of 
    "post" -> pure FaveBookmarkTypePost
    "video" -> pure FaveBookmarkTypeVideo
    "product" -> pure FaveBookmarkTypeProduct
    "article" -> pure FaveBookmarkTypeArticle
    "link" -> pure FaveBookmarkTypeLink
    _ -> fail "FaveBookmarkType: doesnt match case"
