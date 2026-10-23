# GnomeWeb SDK utility: prepare_body
require_relative 'media'
module GnomeWebUtilities
  PrepareBody = ->(ctx) {
    return nil unless ctx.op.input == "data"
    return GnomeWebUtilities.raw_body(ctx.reqdata) if GnomeWebUtilities.raw_request?(ctx.point)
    ctx.utility.transform_request.call(ctx)
  }
end
