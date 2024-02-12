--[[
TODO
  (1): Get input

  (2): Write "pages" of info to terminal

  (3): Clear old "pages"

]]

Page = require("Modules.Page")

page:init("test")

page:append(1, "hello")

page:display()
