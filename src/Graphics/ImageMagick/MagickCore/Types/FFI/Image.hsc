{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
module Graphics.ImageMagick.MagickCore.Types.FFI.Image
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif
newtype ImageType = ImageType { unImageType :: CInt }
  deriving (Eq, Show)

#{enum ImageType, ImageType
  , undefinedType = UndefinedType
  , bilevelType = BilevelType
  , grayscaleType = GrayscaleType
  , paletteType = PaletteType
  , trueColorType = TrueColorType
  , optimizeType = OptimizeType
  , colorSeparationType = ColorSeparationType
#if !__has_include(<MagickCore/MagickCore.h>)
  , trueColorMatteType = TrueColorMatteType
  , paletteMatteType = PaletteMatteType
  , grayscaleMatteType = GrayscaleMatteType
  , colorSeparationMatteType = ColorSeparationMatteType
  , paletteBilevelMatteType = PaletteBilevelMatteType
#else
  , trueColorAlphaType = TrueColorAlphaType
  , paletteAlphaType = PaletteAlphaType
  , grayscaleAlphaType = GrayscaleAlphaType
  , colorSeparationAlphaType = ColorSeparationAlphaType
  , paletteBilevelAlphaType = PaletteBilevelAlphaType
#endif
}
