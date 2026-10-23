-- GnomeWeb SDK exists test

local sdk = require("gnome-web_sdk")

describe("GnomeWebSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
