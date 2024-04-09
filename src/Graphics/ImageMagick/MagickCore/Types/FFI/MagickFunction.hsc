{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.MagickFunction
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype MagickFunction = MagickFunction { unMagickFunction :: CInt }
          deriving (Eq, Show)

#{enum MagickFunction, MagickFunction,
  undefinedFunction =   UndefinedFunction,
  polynomialFunction =   PolynomialFunction,
  sinusoidFunction =   SinusoidFunction,
  arcsinFunction =   ArcsinFunction,
  arctanFunction = ArctanFunction
}

