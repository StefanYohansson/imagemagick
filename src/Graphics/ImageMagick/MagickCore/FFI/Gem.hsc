{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}

module Graphics.ImageMagick.MagickCore.FFI.Gem
    where

import           Foreign
import           Foreign.C.Types
import           Graphics.ImageMagick.MagickCore.Types.FFI.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

foreign import ccall "ConvertHSBToRGB" convertHSBToRGB
  :: CDouble -> CDouble -> CDouble -> Ptr Quantum -> Ptr Quantum -> Ptr Quantum -> IO ()
foreign import ccall "ConvertHSLToRGB" convertHSLToRGB
  :: CDouble -> CDouble -> CDouble -> Ptr Quantum -> Ptr Quantum -> Ptr Quantum -> IO ()
foreign import ccall "ConvertHWBToRGB" convertHWBToRGB
  :: CDouble -> CDouble -> CDouble -> Ptr Quantum -> Ptr Quantum -> Ptr Quantum -> IO ()
foreign import ccall "ConvertRGBToHSB" convertRGBToHSB
  :: Quantum -> Quantum -> Quantum -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
foreign import ccall "ConvertRGBToHSL" convertRGBToHSL
  :: Quantum -> Quantum -> Quantum -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
foreign import ccall "ConvertRGBToHWB" convertRGBToHWB
  :: Quantum -> Quantum -> Quantum -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

