{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
module Graphics.ImageMagick.MagickCore.Types.FFI.Distort
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype DistortImageMethod = DistortImageMethod { unDistortImageMethod :: CInt }

#{enum DistortImageMethod, DistortImageMethod
  , undefinedDistortion = UndefinedDistortion
  , affineDistortion = AffineDistortion
  , affineProjectionDistortion = AffineProjectionDistortion
  , scaleRotateTranslateDistortion = ScaleRotateTranslateDistortion
  , perspectiveDistortion = PerspectiveDistortion
  , perspectiveProjectionDistortion = PerspectiveProjectionDistortion
  , bilinearForwardDistortion = BilinearForwardDistortion
  , bilinearReverseDistortion = BilinearReverseDistortion
  , polynomialDistortion = PolynomialDistortion
  , arcDistortion = ArcDistortion
  , polarDistortion = PolarDistortion
  , dePolarDistortion = DePolarDistortion
  , cylinder2PlaneDistortion = Cylinder2PlaneDistortion
  , plane2CylinderDistortion = Plane2CylinderDistortion
  , barrelDistortion = BarrelDistortion
  , barrelInverseDistortion = BarrelInverseDistortion
  , shepardsDistortion = ShepardsDistortion
  , resizeDistortion = ResizeDistortion
  , sentinelDistortion = SentinelDistortion
}

bilinearDistortion :: DistortImageMethod
bilinearDistortion = bilinearForwardDistortion

newtype SparseColorMethod = SparseColorMethod { unSparseColorMethod :: CInt }

#{enum SparseColorMethod, SparseColorMethod,
  undefinedColorInterpolate = UndefinedDistortion,
  barycentricColorInterpolate = AffineDistortion,
  bilinearColorInterpolate = BilinearReverseDistortion,
  polynomialColorInterpolate = PolynomialDistortion,
  shepardsColorInterpolate = ShepardsDistortion,
  voronoiColorInterpolate = SentinelDistortion,
  inverseColorInterpolate =InverseColorInterpolate
}
