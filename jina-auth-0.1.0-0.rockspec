package = "jina-auth"
version = "0.1.0-0"
source = {
    url = "git://github.com/jina-ai/kong-jina-auth",
    tag = "master",
    dir = "kong-auth"
}
description = {
    summary = "A Kong plugin for implementing the custom authentication",
    detailed = [[
       Assume you have an in-house authentication which has already been used by your users.
       It can issue and validate JWT tokens and manage ACL but you still see yourself building custom code in each microservice to integrate with the custom auth service.
    ]],
    homepage = "https://github.com/jina-ai/kong-jina-auth",
    license = "Apache 2.0"
}
dependencies = {
    "lua-resty-http ~> 0.17.0"
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.jina-auth.handler"] = "plugins/jina-auth/handler.lua",
    ["kong.plugins.jina-auth.schema"] = "plugins/jina-auth/schema.lua",
    ["kong.plugins.jina-auth.access"] = "plugins/jina-auth/access.lua",
    }
}