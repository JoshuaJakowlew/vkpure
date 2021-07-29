module VkApi.Internal.Json where



import Data.Aeson
import Data.Char
import Data.List
import VkPure.Prelude
import GHC.Generics

newtype CamelToSnake a = CamelToSnake { runWithOptions :: a }


instance (Generic a, GToJSON Zero (Rep a)) => ToJSON (CamelToSnake a) where
  toJSON  = genericToJSON @a jsonOptions . runWithOptions
instance (Generic a, GFromJSON Zero (Rep a)) => FromJSON (CamelToSnake a) where
  parseJSON = fmap CamelToSnake . genericParseJSON @a jsonOptions


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

