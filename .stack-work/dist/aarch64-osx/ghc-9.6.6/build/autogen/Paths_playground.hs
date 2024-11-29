{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
#if __GLASGOW_HASKELL__ >= 810
{-# OPTIONS_GHC -Wno-prepositive-qualified-module #-}
#endif
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_playground (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath




bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/Users/andrescru/Library/CloudStorage/OneDrive-WaltzHealth/Documents/Github/haskell-playground/.stack-work/install/aarch64-osx/65942d1591822a98f9bc6c41f8c74e7ef99e578d93a7ee17ec69edb746f6bee7/9.6.6/bin"
libdir     = "/Users/andrescru/Library/CloudStorage/OneDrive-WaltzHealth/Documents/Github/haskell-playground/.stack-work/install/aarch64-osx/65942d1591822a98f9bc6c41f8c74e7ef99e578d93a7ee17ec69edb746f6bee7/9.6.6/lib/aarch64-osx-ghc-9.6.6/playground-0.1.0.0-Lcov7p8JRBt4A38uVMwVpR"
dynlibdir  = "/Users/andrescru/Library/CloudStorage/OneDrive-WaltzHealth/Documents/Github/haskell-playground/.stack-work/install/aarch64-osx/65942d1591822a98f9bc6c41f8c74e7ef99e578d93a7ee17ec69edb746f6bee7/9.6.6/lib/aarch64-osx-ghc-9.6.6"
datadir    = "/Users/andrescru/Library/CloudStorage/OneDrive-WaltzHealth/Documents/Github/haskell-playground/.stack-work/install/aarch64-osx/65942d1591822a98f9bc6c41f8c74e7ef99e578d93a7ee17ec69edb746f6bee7/9.6.6/share/aarch64-osx-ghc-9.6.6/playground-0.1.0.0"
libexecdir = "/Users/andrescru/Library/CloudStorage/OneDrive-WaltzHealth/Documents/Github/haskell-playground/.stack-work/install/aarch64-osx/65942d1591822a98f9bc6c41f8c74e7ef99e578d93a7ee17ec69edb746f6bee7/9.6.6/libexec/aarch64-osx-ghc-9.6.6/playground-0.1.0.0"
sysconfdir = "/Users/andrescru/Library/CloudStorage/OneDrive-WaltzHealth/Documents/Github/haskell-playground/.stack-work/install/aarch64-osx/65942d1591822a98f9bc6c41f8c74e7ef99e578d93a7ee17ec69edb746f6bee7/9.6.6/etc"

getBinDir     = catchIO (getEnv "playground_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "playground_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "playground_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "playground_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "playground_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "playground_sysconfdir") (\_ -> return sysconfdir)



joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'
