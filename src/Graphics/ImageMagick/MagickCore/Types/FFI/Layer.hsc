{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.Layer
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype ImageLayerMethod = ImageLayerMethod { unImageLayerMethod :: CInt }
          deriving (Eq, Show)

#{enum ImageLayerMethod, ImageLayerMethod
  , undefinedLayer = UndefinedLayer
  , coalesceLayer = CoalesceLayer
  , compareAnyLayer = CompareAnyLayer
  , compareClearLayer = CompareClearLayer
  , compareOverlayLayer = CompareOverlayLayer
  , disposeLayer = DisposeLayer
  , optimizeLayer = OptimizeLayer
  , optimizeImageLayer = OptimizeImageLayer
  , optimizePlusLayer = OptimizePlusLayer
  , optimizeTransLayer = OptimizeTransLayer
  , removeDupsLayer = RemoveDupsLayer
  , removeZeroLayer = RemoveZeroLayer
  , compositeLayer = CompositeLayer
  , mergeLayer = MergeLayer
  , flattenLayer = FlattenLayer
  , mosaicLayer = MosaicLayer
  , trimBoundsLayer = TrimBoundsLayer
}
