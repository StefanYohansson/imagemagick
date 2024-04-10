{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Graphics.ImageMagick.MagickCore.Types.FFI.ColorspaceType
    where

import           Foreign.C.Types
import           Foreign.Storable
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype ColorspaceType = ColorspaceType { unColorspaceType :: CInt }
    deriving (Eq, Show, Storable)


#{enum ColorspaceType, ColorspaceType,
  undefinedColorspace =  UndefinedColorspace,
  rgbColorspace =   RGBColorspace,
  grayColorspace =   GRAYColorspace,
  transparentColorspace =   TransparentColorspace,
  ohtaColorspace =   OHTAColorspace,
  labColorspace =   LabColorspace,
  xyzColorspace =   XYZColorspace,
  ycbCrColorspace =   YCbCrColorspace,
  yccColorspace =   YCCColorspace,
  yiqColorspace =   YIQColorspace,
  ypbprColorspace =   YPbPrColorspace,
  yuvColorspace =   YUVColorspace,
  cmykColorspace =   CMYKColorspace,
  srgbColorspace =   sRGBColorspace,
  hsbColorspace =   HSBColorspace,
  hslColorspace =   HSLColorspace,
  hwbColorspace =   HWBColorspace,
  rec601YCbCrColorspace =   Rec601YCbCrColorspace,
  rec709YCbCrColorspace =   Rec709YCbCrColorspace,
  logColorspace =   LogColorspace,
  cmyColorspace = CMYColorspace
#if !__has_include(<MagickCore/MagickCore.h>)
  , rec601LumaColorspace =   Rec601LumaColorspace
  , rec709LumaColorspace =   Rec709LumaColorspace
#endif
}