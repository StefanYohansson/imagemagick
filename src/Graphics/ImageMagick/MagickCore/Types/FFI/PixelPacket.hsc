{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE NoMonomorphismRestriction #-} 
module Graphics.ImageMagick.MagickCore.Types.FFI.PixelPacket
    where

import           Foreign
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

data PixelPacket 

instance Storable PixelPacket where
  sizeOf = const #size PixelPacket
  alignment _ = 1
  peek = error "not yet implemented"
  poke = error "not yet implemented"

pixelPacketGetRed, pixelPacketGetGreen, pixelPacketGetBlue
#if !__has_include(<MagickCore/MagickCore.h>)
                 , pixelPacketGetOpacity 
#else
                 , pixelPacketGetAlpha
                 , pixelPacketGetBlack
#endif
  :: Storable a => Ptr b -> IO a
pixelPacketGetRed     = #peek PixelPacket, red
pixelPacketGetGreen   = #peek PixelPacket, green
pixelPacketGetBlue    = #peek PixelPacket, blue
#if !__has_include(<MagickCore/MagickCore.h>)
pixelPacketGetOpacity = #peek PixelPacket, opacity
#else
pixelPacketGetAlpha   = #peek PixelPacket, alpha
pixelPacketGetBlack   = #peek PixelPacket, black
#endif

pixelPacketSetRed, pixelPacketSetGreen, pixelPacketSetBlue
#if !__has_include(<MagickCore/MagickCore.h>)
                 , pixelPacketSetOpacity
#else
                 , pixelPacketSetAlpha
                 , pixelPacketSetBlack
#endif
  :: Storable a => Ptr b -> a -> IO ()

pixelPacketSetRed     = #poke PixelPacket, red
pixelPacketSetGreen   = #poke PixelPacket, green
pixelPacketSetBlue    = #poke PixelPacket, blue
#if !__has_include(<MagickCore/MagickCore.h>)
pixelPacketSetOpacity = #poke PixelPacket, opacity
#else
pixelPacketSetAlpha   = #poke PixelPacket, alpha
pixelPacketSetBlack   = #poke PixelPacket, black
#endif
