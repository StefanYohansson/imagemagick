{-# LANGUAGE CPP                      #-}
{-# LANGUAGE ForeignFunctionInterface #-}
module Graphics.ImageMagick.MagickCore.Types.FFI.AlphaChannelType
    where

import           Foreign.C.Types
#if __has_include(<MagickCore/MagickCore.h>)
#include <MagickCore/MagickCore.h>
#else
#include <magick/MagickCore.h>
#endif
newtype AlphaChannelType = AlphaChannelType { unAlphaChannelType :: CInt }
  deriving (Eq, Show)

#{enum AlphaChannelType, AlphaChannelType
  , undefinedAlphaChannel = UndefinedAlphaChannel
  , activateAlphaChannel = ActivateAlphaChannel
  , backgroundAlphaChannel = BackgroundAlphaChannel
  , copyAlphaChannel = CopyAlphaChannel
  , deactivateAlphaChannel = DeactivateAlphaChannel
  , extractAlphaChannel = ExtractAlphaChannel
  , opaqueAlphaChannel = OpaqueAlphaChannel
  , resetAlphaChannel = ResetAlphaChannel  /* deprecated */
  , setAlphaChannel = SetAlphaChannel
  , shapeAlphaChannel = ShapeAlphaChannel
  , transparentAlphaChannel = TransparentAlphaChannel
  , lattenAlphaChannel = FlattenAlphaChannel
  , removeAlphaChannel = RemoveAlphaChannel
}
