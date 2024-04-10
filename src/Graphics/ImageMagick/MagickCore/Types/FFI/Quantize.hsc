{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.Quantize where

import           Graphics.ImageMagick.MagickCore.Types (ColorspaceType, DitherMethod)
import           Graphics.ImageMagick.MagickWand.FFI.Types (MagickBooleanType)
import           Foreign.C.Types (CSize)
import           Foreign.Storable

#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

data QuantizeInfo = QuantizeInfo { numberOfColors :: CSize
                                 , treeDepth :: CSize
#if !__has_include(<MagickCore/MagickCore.h>)
                                 , shouldDither :: MagickBooleanType
#endif
                                 , colorspace :: ColorspaceType
                                 , measureError :: MagickBooleanType
                                 , signature :: CSize
                                 , ditherMethod :: DitherMethod
                                 }
  deriving (Eq, Show)

instance Storable QuantizeInfo where
  sizeOf      _ = (#size QuantizeInfo)
  alignment   _ = alignment (undefined :: CSize)
  peek ptr      = do
    numberOfColors' <- (#peek QuantizeInfo, number_colors) ptr
    treeDepth'      <- (#peek QuantizeInfo, tree_depth) ptr
#if !__has_include(<MagickCore/MagickCore.h>)
    shouldDither'   <- (#peek QuantizeInfo, dither) ptr
#endif
    colorspace'     <- (#peek QuantizeInfo, colorspace) ptr
    measureError'   <- (#peek QuantizeInfo, measure_error) ptr
    signature'      <- (#peek QuantizeInfo, signature) ptr
    ditherMethod'   <- (#peek QuantizeInfo, dither_method) ptr
    return QuantizeInfo { numberOfColors = numberOfColors'
                        , treeDepth      = treeDepth'
#if !__has_include(<MagickCore/MagickCore.h>)
                        , shouldDither   = shouldDither'
#endif
                        , colorspace     = colorspace'
                        , measureError   = measureError'
                        , signature      = signature'
                        , ditherMethod   = ditherMethod'
                        }
  poke = error "not yet implemented"

