module VkApi.Objects.PhotosImageType where

import VkApi.Objects.Utils



data PhotosImageType = PhotosImageTypeS | PhotosImageTypeM | PhotosImageTypeX | PhotosImageTypeL | PhotosImageTypeO | PhotosImageTypeP | PhotosImageTypeQ | PhotosImageTypeR | PhotosImageTypeY | PhotosImageTypeZ | PhotosImageTypeW
  deriving (Show, Generic)

instance FromJSON PhotosImageType where
  parseJSON = withText "PhotosImageType" \ t -> case t of 
    "s" -> pure PhotosImageTypeS
    "m" -> pure PhotosImageTypeM
    "x" -> pure PhotosImageTypeX
    "l" -> pure PhotosImageTypeL
    "o" -> pure PhotosImageTypeO
    "p" -> pure PhotosImageTypeP
    "q" -> pure PhotosImageTypeQ
    "r" -> pure PhotosImageTypeR
    "y" -> pure PhotosImageTypeY
    "z" -> pure PhotosImageTypeZ
    "w" -> pure PhotosImageTypeW
    _ -> fail "PhotosImageType: doesnt match case"
