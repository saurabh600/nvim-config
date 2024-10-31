local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

local cpp = require("user.snippets.cpp")

ls.add_snippets("cpp", {
  s("code", fmt(cpp.code, { i(1) })),
  s("delxy", fmt(cpp.delxy, {})),
  s("pbds", fmt(cpp.pbds, {})),
})
