#--
#
# This file is one part of:
#
# Ruby-SDL-FFI - Ruby-FFI bindings to SDL
#
# Copyright (c) 2009 John Croisant
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#++


module SDL
  module Raw

    LIL_ENDIAN = 1234
    BIG_ENDIAN = 4321

    class Version < FFI::Struct
      layout(
             :major, :uint8,
             :minor, :uint8,
             :patch, :uint8
      )
    end

    attach_function :SDL_Linked_Version, [  ], :pointer

    INIT_TIMER       = 0x00000001
    INIT_AUDIO       = 0x00000010
    INIT_VIDEO       = 0x00000020
    INIT_CDROM       = 0x00000100
    INIT_JOYSTICK    = 0x00000200
    INIT_NOPARACHUTE = 0x00100000
    INIT_EVENTTHREAD = 0x01000000
    INIT_EVERYTHING  = 0x0000FFFF

    attach_function :SDL_Init, [ :uint32 ], :int
    attach_function :SDL_InitSubSystem, [ :uint32 ], :int
    attach_function :SDL_QuitSubSystem, [ :uint32 ], :void
    attach_function :SDL_WasInit, [ :uint32 ], :uint32
    attach_function :SDL_Quit, [  ], :void

  end
end
