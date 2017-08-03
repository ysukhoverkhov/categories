{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_categories (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
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
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Projects\\categories\\.stack-work\\install\\6c953ab2\\bin"
libdir     = "C:\\Projects\\categories\\.stack-work\\install\\6c953ab2\\lib\\x86_64-windows-ghc-8.0.2\\categories-0.1.0.0-IevDMGzmhguG7PYc24GvUR"
dynlibdir  = "C:\\Projects\\categories\\.stack-work\\install\\6c953ab2\\lib\\x86_64-windows-ghc-8.0.2"
datadir    = "C:\\Projects\\categories\\.stack-work\\install\\6c953ab2\\share\\x86_64-windows-ghc-8.0.2\\categories-0.1.0.0"
libexecdir = "C:\\Projects\\categories\\.stack-work\\install\\6c953ab2\\libexec"
sysconfdir = "C:\\Projects\\categories\\.stack-work\\install\\6c953ab2\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "categories_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "categories_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "categories_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "categories_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "categories_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "categories_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
