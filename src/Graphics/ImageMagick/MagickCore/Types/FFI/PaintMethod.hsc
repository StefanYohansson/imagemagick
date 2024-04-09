{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
module Graphics.ImageMagick.MagickCore.Types.FFI.PaintMethod
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype PaintMethod =  PaintMethod { unPaintMethod :: CInt }


#{enum PaintMethod, PaintMethod,
  undefinedMethod = UndefinedMethod,
  pointMethod = PointMethod,
  replaceMethod = ReplaceMethod,
  floodfillMethod = FloodfillMethod,
  fillToBorderMethod = FillToBorderMethod,
  resetMethod = ResetMethod
}

