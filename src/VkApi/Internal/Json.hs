module VkApi.Internal.Json where


import Language.Haskell.TH
import Data.Aeson.TH
import Data.Char
import Data.List
import VkPure.Prelude 


deriveJSON' :: Name -> Q [Dec]
deriveJSON' = deriveJSON jsonOptions

jsonOptions ::  Options
jsonOptions  = defaultOptions
  { fieldLabelModifier     = snakeFieldModifier 
  , constructorTagModifier = snakeFieldModifier 
  , omitNothingFields      = True
  , sumEncoding            = UntaggedValue
  }

snakeFieldModifier ::  String -> String
snakeFieldModifier ys = wordsToSnake (camelWords (capitalise ys))

wordsToSnake :: [String] -> String
wordsToSnake = intercalate "_" . map (map toLower)

camelWords :: String -> [String]
camelWords "" = []
camelWords s
  = case us of
      (_:_:_) -> us : camelWords restLs
      _       -> (us ++ ls) : camelWords rest
  where
   (us, restLs) = span  isUpper s
   (ls, rest)   = break isUpper restLs

capitalise :: String -> String
capitalise (c:s) = toUpper c : s
capitalise "" = ""

