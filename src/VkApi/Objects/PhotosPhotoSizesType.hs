module VkApi.Objects.PhotosPhotoSizesType where

import VkApi.Objects.Utils



data PhotosPhotoSizesType = PhotosPhotoSizesTypeS | PhotosPhotoSizesTypeM | PhotosPhotoSizesTypeX | PhotosPhotoSizesTypeO | PhotosPhotoSizesTypeP | PhotosPhotoSizesTypeQ | PhotosPhotoSizesTypeR | PhotosPhotoSizesTypeK | PhotosPhotoSizesTypeL | PhotosPhotoSizesTypeY | PhotosPhotoSizesTypeZ | PhotosPhotoSizesTypeC | PhotosPhotoSizesTypeW | PhotosPhotoSizesTypeA | PhotosPhotoSizesTypeB | PhotosPhotoSizesTypeE | PhotosPhotoSizesTypeI | PhotosPhotoSizesTypeD | PhotosPhotoSizesTypeJ | PhotosPhotoSizesTypeTemp | PhotosPhotoSizesTypeH | PhotosPhotoSizesTypeG | PhotosPhotoSizesTypeN | PhotosPhotoSizesTypeF | PhotosPhotoSizesTypeMax
  deriving (Show, Generic)

instance FromJSON PhotosPhotoSizesType where
  parseJSON = withText "PhotosPhotoSizesType" \ t -> case t of 
    "s" -> pure PhotosPhotoSizesTypeS
    "m" -> pure PhotosPhotoSizesTypeM
    "x" -> pure PhotosPhotoSizesTypeX
    "o" -> pure PhotosPhotoSizesTypeO
    "p" -> pure PhotosPhotoSizesTypeP
    "q" -> pure PhotosPhotoSizesTypeQ
    "r" -> pure PhotosPhotoSizesTypeR
    "k" -> pure PhotosPhotoSizesTypeK
    "l" -> pure PhotosPhotoSizesTypeL
    "y" -> pure PhotosPhotoSizesTypeY
    "z" -> pure PhotosPhotoSizesTypeZ
    "c" -> pure PhotosPhotoSizesTypeC
    "w" -> pure PhotosPhotoSizesTypeW
    "a" -> pure PhotosPhotoSizesTypeA
    "b" -> pure PhotosPhotoSizesTypeB
    "e" -> pure PhotosPhotoSizesTypeE
    "i" -> pure PhotosPhotoSizesTypeI
    "d" -> pure PhotosPhotoSizesTypeD
    "j" -> pure PhotosPhotoSizesTypeJ
    "temp" -> pure PhotosPhotoSizesTypeTemp
    "h" -> pure PhotosPhotoSizesTypeH
    "g" -> pure PhotosPhotoSizesTypeG
    "n" -> pure PhotosPhotoSizesTypeN
    "f" -> pure PhotosPhotoSizesTypeF
    "max" -> pure PhotosPhotoSizesTypeMax
    _ -> fail "PhotosPhotoSizesType: doesnt match case"
