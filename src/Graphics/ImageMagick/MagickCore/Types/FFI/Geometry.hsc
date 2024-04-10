{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.Geometry
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype GravityType = GravityType { unGravityType :: CInt }
          deriving (Eq, Show)

#{enum GravityType, GravityType
  , forgetGravity = ForgetGravity
  , northWestGravity = NorthWestGravity
  , northGravity = NorthGravity
  , northEastGravity = NorthEastGravity
  , westGravity = WestGravity 
  , centerGravity = CenterGravity
  , eastGravity = EastGravity
  , southWestGravity = SouthWestGravity
  , southGravity = SouthGravity
  , southEastGravity = SouthEastGravity
#if !__has_include(<MagickCore/MagickCore.h>)
  , staticGravity = StaticGravity
#endif
}

undefinedGravity :: GravityType
undefinedGravity = forgetGravity

