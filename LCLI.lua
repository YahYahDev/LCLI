
page = require("Modules.Page")
struct = require("Modules.Struct")

bob = function ()
	print("bob")
end

page:init("page")

page:append(1, "")

page:setfunc(1, bob)

page.content.funcs[1]()

page:getinput()
