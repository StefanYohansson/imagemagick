{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.Fx
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype NoiseType = NoiseType { unNoiseType :: CInt }
          deriving (Eq, Show)

#{enum NoiseType, NoiseType,
  undefinedNoise = UndefinedNoise,
  uniformNoise = UniformNoise,
  gaussianNoise = GaussianNoise,
  multiplicativeGaussianNoise = MultiplicativeGaussianNoise,
  impulseNoise = ImpulseNoise,
  laplacianNoise = LaplacianNoise,
  poissonNoise = PoissonNoise,
  randomNoise = RandomNoise
}
