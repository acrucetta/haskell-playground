{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_playground (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "playground"
version :: Version
version = Version [0,1,0,0] []

synopsis :: String
synopsis = "A simple Haskell playground project"
copyright :: String
copyright = ""
homepage :: String
homepage = ""
