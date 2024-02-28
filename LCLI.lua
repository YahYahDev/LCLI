
str = require("Modules.Str")
parse = require("Modules.Parse")

---@class cli
cli = {


    Name = "",


    Content = {
        Display = {},
        Funcs = {}
    },


---Displays self.Content.Display[] contents
---@param self cli
    Display = function (self)
        os.execute("clear")
        print(self.Name)
        for i = 1 , #self.Content.Display do
            print(i .. "): ".. self.Content.Display[i])
        end

    end,


---Appends self.Content.Display[line] with value
---@param self cli
---@param line number
---@param value string
    Append = function (self, line, value)
        self.Content.Display[line] = value
    end,

---Sets the function that will be used on getinput()
---@param self cli
---@param line number
---@param FUNCTION function
    SetFunc = function (self, line, FUNCTION)
        self.Content.Funcs[line] = FUNCTION
    end,
---Executes the function that is related to the input of the user, if it fails it returns false
---@param self cli
    GetInput = function (self)
        io.write("Input: < ")
        local input = tonumber(io.read())

        if type(self.Content.Funcs[input]) ~= "function" then
            print("self.Content.Funcs[".. input .. "]\nERROR: IS TYPE '".. type(self.Content.Funcs[input]) .. "'")
        else
            os.execute("clear")
            self.Content.Funcs[input]()
        end

    end,


---Inits name
---@param self cli
---@param name string
    Init = function (self, name)
        self.Name = name
        local Content = {
            Display = {},
            Funcs = {}
        }
        self.Content = Content
    end,


---Loads The
---@param self cli
---@param filepath string
    LoadCliFromFile = function (self, filepath)

        local File = io.open(filepath, "r")

        local Contents = File:read("*a")

        local Chunks = parse.GetAllBlock(Contents, "START:", "END:")

        for i = 1, #Chunks do
            self:Append(i, parse.GetBlock(Chunks[i], "NAME:</", "/>"))

            local CodeChunk = parse.GetBlock(Chunks[i], "CODE:</", "/>CODE:")
            local CodeFunc, CodeError = load(CodeChunk)

            if CodeFunc then
                self.SetFunc(self, i, CodeFunc)
            else
                print("CodeChunk <"..i.."> from ".. filepath .. "Failed to load due to: ".. CodeError)
            end
        end

        File:close()

end



}

return cli
