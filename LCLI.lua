
page = require("Modules.Page")
struct = require("Modules.Struct")


page.new = struct.new()

test1 = page:new()

test1:init("test1")

test1:append(1, "hello from test1")



test2 = page:new()

test2:init("test2")

test2:append(1, "hello from test2")

test1:display()

test1:getinput()

test = {}

test[1] = function ()
	print("hello world")
end

test[1]()
