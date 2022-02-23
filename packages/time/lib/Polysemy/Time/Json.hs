-- |Aeson derivation combinator, internal
module Polysemy.Time.Json where

import qualified Data.Aeson as Aeson
import Data.Aeson.TH (deriveJSON)
import qualified Language.Haskell.TH.Syntax as TH

-- |Derive Aeson codecs with custom settings.
json :: TH.Name -> TH.Q [TH.Dec]
json =
  deriveJSON Aeson.defaultOptions {
    Aeson.fieldLabelModifier = dropWhile ('_' ==),
    Aeson.unwrapUnaryRecords = True
  }
