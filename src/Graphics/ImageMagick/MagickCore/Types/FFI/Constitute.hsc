{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.Constitute
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype StorageType = StorageType { unStorageType :: CInt }
          deriving (Eq, Show)

#{enum StorageType, StorageType
  , undefinedPixel = UndefinedPixel
  , charPixel = CharPixel
  , doublePixel = DoublePixel
  , floatPixel = FloatPixel
  , integerPixel = IntegerPixel
  , longPixel = LongPixel
  , quantumPixel = QuantumPixel
  , shortPixel = ShortPixel
}
