# GnomeWeb SDK feature factory

from gnomeweb_sdk.feature.base_feature import GnomeWebBaseFeature
from gnomeweb_sdk.feature.ratelimit_feature import GnomeWebRatelimitFeature
from gnomeweb_sdk.feature.retry_feature import GnomeWebRetryFeature
from gnomeweb_sdk.feature.test_feature import GnomeWebTestFeature
from gnomeweb_sdk.feature.timeout_feature import GnomeWebTimeoutFeature


_FEATURES = {
    "base": lambda: GnomeWebBaseFeature(),
    "ratelimit": lambda: GnomeWebRatelimitFeature(),
    "retry": lambda: GnomeWebRetryFeature(),
    "test": lambda: GnomeWebTestFeature(),
    "timeout": lambda: GnomeWebTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
