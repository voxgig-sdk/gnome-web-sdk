# GnomeWeb SDK exists test

import pytest
from gnomeweb_sdk import GnomeWebSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = GnomeWebSDK.test(None, None)
        assert testsdk is not None
