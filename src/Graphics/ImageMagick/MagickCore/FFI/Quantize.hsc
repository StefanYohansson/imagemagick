{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}

module Graphics.ImageMagick.MagickCore.FFI.Quantize
    where

#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

import Foreign
import Graphics.ImageMagick.MagickCore.Types.FFI.Quantize

foreign import ccall unsafe "GetQuantizeInfo"
  c_getQuantizeInfo :: Ptr QuantizeInfo -> IO ()

