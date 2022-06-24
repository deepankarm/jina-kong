local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.jina-auth.access"

local TokenHandler = BasePlugin:extend()

function TokenHandler:new()
    TokenHandler.super.new(self, "jina-auth")
end

function TokenHandler:access(conf)
    TokenHandler.super.access(self)
    access.run(conf)
end

return TokenHandler