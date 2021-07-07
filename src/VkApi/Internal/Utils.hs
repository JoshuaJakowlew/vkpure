module VkApi.Internal.Utils where


import Language.Haskell.TH
import Data.Aeson.TH
import Data.Aeson.Types
import Data.Aeson
import Data.Char
import Data.List

deriveJSON' :: Name -> Q [Dec]
deriveJSON' name = deriveJSON (jsonOptions (nameBase name)) name


jsonOptions :: String -> Options
jsonOptions tname = defaultOptions
  { fieldLabelModifier     = snakeFieldModifier tname
  , constructorTagModifier = snakeFieldModifier tname
  , omitNothingFields      = True
  }
  
snakeFieldModifier :: String -> String -> String
snakeFieldModifier xs ys = wordsToSnake (stripCommonPrefixWords xs ys)

wordsToSnake :: [String] -> String
wordsToSnake = intercalate "_" . map (map toLower)

stripCommonPrefixWords :: String -> String -> [String]
stripCommonPrefixWords xs ys =
  stripCommonPrefix (camelWords xs) (camelWords (capitalise ys))

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

stripCommonPrefix :: Eq a => [a] -> [a] -> [a]
stripCommonPrefix (x:xs) (y:ys) | x == y = stripCommonPrefix xs ys
stripCommonPrefix _ ys = ys