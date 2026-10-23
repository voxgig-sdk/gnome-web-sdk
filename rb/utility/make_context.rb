# GnomeWeb SDK utility: make_context
require_relative '../core/context'
module GnomeWebUtilities
  MakeContext = ->(ctxmap, basectx) {
    GnomeWebContext.new(ctxmap, basectx)
  }
end
