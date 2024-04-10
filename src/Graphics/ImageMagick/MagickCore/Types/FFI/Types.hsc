{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE RankNTypes #-}
module Graphics.ImageMagick.MagickCore.Types.FFI.Types
    where

import           Data.Int
import           Data.Word
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

type MagickRealType   = #type MagickRealType
type MagickStatusType = #type MagickStatusType
type MagickOffsetType = #type MagickOffsetType
type MagickSizeType   = #type MagickSizeType
#if !__has_include(<MagickCore/MagickCore.h>)
type SignedQuantum    = #type SignedQuantum
#else

#endif
type QuantumAny       = #type QuantumAny
type Quantum          = #type Quantum
#if !__has_include(<MagickCore/MagickCore.h>)
type IndexPacket      = #type IndexPacket
#endif

magickEpsilon :: forall a. Fractional a => a
magickEpsilon   = 1e-10 -- #const MagickEpsilon
maxColormapSize :: forall a. Num a => a
maxColormapSize = #const MaxColormapSize
maxMap :: forall a. Num a => a
maxMap          = #const MaxMap
quantumFormat :: forall a. Num a => a
quantumFormat   = #const QuantumFormat
quantumRange :: forall a. Num a => a
quantumRange    = #const QuantumRange
