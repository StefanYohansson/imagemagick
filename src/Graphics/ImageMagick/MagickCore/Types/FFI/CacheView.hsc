{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}

module Graphics.ImageMagick.MagickCore.Types.FFI.CacheView
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif

newtype VirtualPixelMethod = VirtualPixelMethod { unVirtualPixelMethod :: CInt }
          deriving (Eq, Show)

#{enum VirtualPixelMethod, VirtualPixelMethod,
    undefinedVirtualPixelMethod = UndefinedVirtualPixelMethod,
    backgroundVirtualPixelMethod = BackgroundVirtualPixelMethod,
    ditherVirtualPixelMethod = DitherVirtualPixelMethod,
    edgeVirtualPixelMethod = EdgeVirtualPixelMethod,
    mirrorVirtualPixelMethod = MirrorVirtualPixelMethod,
    randomVirtualPixelMethod = RandomVirtualPixelMethod,
    tileVirtualPixelMethod = TileVirtualPixelMethod,
    transparentVirtualPixelMethod = TransparentVirtualPixelMethod,
    maskVirtualPixelMethod = MaskVirtualPixelMethod,
    blackVirtualPixelMethod = BlackVirtualPixelMethod,
    grayVirtualPixelMethod = GrayVirtualPixelMethod,
    whiteVirtualPixelMethod = WhiteVirtualPixelMethod,
    horizontalTileVirtualPixelMethod = HorizontalTileVirtualPixelMethod,
    verticalTileVirtualPixelMethod = VerticalTileVirtualPixelMethod,
    horizontalTileEdgeVirtualPixelMethod = HorizontalTileEdgeVirtualPixelMethod,
    verticalTileEdgeVirtualPixelMethod = VerticalTileEdgeVirtualPixelMethod,
    checkerTileVirtualPixelMethod = CheckerTileVirtualPixelMethod
#if !__has_include(<MagickCore/MagickCore.h>)
    , constantVirtualPixelMethod = ConstantVirtualPixelMethod
#endif
}