{-# LANGUAGE CPP, ForeignFunctionInterface, NoMonomorphismRestriction #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.ChannelType
  where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype ChannelType = ChannelType { unChannelType :: CInt }
  deriving (Eq, Show)

#{enum ChannelType, ChannelType
 , undefinedCHannel =  UndefinedChannel
 , redChannel =  RedChannel
 , grayChannel = GrayChannel
 , cyanChannel = CyanChannel
 , greenChannel = GreenChannel
 , magentaChannel = MagentaChannel
 , blueChannel = BlueChannel
 , yellowChannel = YellowChannel
 , alphaChannel = AlphaChannel
 , opacityChannel = OpacityChannel
 , blackChannel = BlackChannel
 , indexChannel = IndexChannel
 , compositeChannels = CompositeChannels
 , allChannels = AllChannels
 , trueAlphaChannel = TrueAlphaChannel
 , rgbChannels = RGBChannels
 , grayChannels = GrayChannels
 , syncChannels = SyncChannels
 , defaultChannels = DefaultChannels
#if !__has_include(<MagickCore/MagickCore.h>)
 , matteChannel = MatteChannel
#endif
}