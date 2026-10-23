# GnomeWeb SDK utility: make_context

from gnomeweb_sdk.core.context import GnomeWebContext


def make_context_util(ctxmap, basectx):
    return GnomeWebContext(ctxmap, basectx)
