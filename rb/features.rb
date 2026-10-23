# GnomeWeb SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module GnomeWebFeatures
  def self.make_feature(name)
    case name
    when "base"
      GnomeWebBaseFeature.new
    when "ratelimit"
      GnomeWebRatelimitFeature.new
    when "retry"
      GnomeWebRetryFeature.new
    when "test"
      GnomeWebTestFeature.new
    when "timeout"
      GnomeWebTimeoutFeature.new
    else
      GnomeWebBaseFeature.new
    end
  end
end
