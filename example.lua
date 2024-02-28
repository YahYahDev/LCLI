
--require struct.lua for inheritance and more object like behavior
struct = require("Modules.Struct")


--require LCLI.lua for the cli object/class
cli = require("LCLI")


--Set constructor for the cli object/class
cli.new = struct.new()



--Use cli:new() to return a new cli object

--Remember to tag the new object with "---@class cli" to get lsp functionality

---@class cli
MainInterface = cli:new()


--cli:Init(name) initalizes some values and sets the name of the cli

MainInterface:Init("Main Interface")


--cli:LoadCliFromFile(filepath) loads a .CLI file into the cli object

MainInterface:LoadCliFromFile("example.CLI")


--cli:Display() displays all the options in the interface

MainInterface:Display()


--cli:GetInput() gets input from io.read() and executes code
--               based on what option you chose

MainInterface:GetInput()


--cli:Append(num, string) appends the array of options displayed with
--                        cli:Display()

MainInterface:Append(3, "This is appended")


--cli:SetFunc(num, func) sets the function related to the num displated with
--                       cli:Display()

function sayhi()
	print("hi from SetFunc()")
end

MainInterface:SetFunc(3, sayhi)
