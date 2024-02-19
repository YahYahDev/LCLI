
page = {


    Name = "",


    Content = {
        Display = {},
        Funcs = {}
    },


---Displays self.Content.Display[] contents
---@param self table
    Display = function (self)
        os.execute("clear")
        print(self.Name)
        for i = 1 , #self.Content.Display do
            print(i .. "): ".. self.Content.Display[i])
        end

    end,


---Appends self.Content.Display[line] with value
---@param self table
---@param line number
---@param value string
    Append = function (self, line, value)
        self.Content.Display[line] = value
    end,

---Sets the function that will be used on getinput()
---@param self table
---@param line number
---@param FUNCTION function
    SetFunc = function (self, line, FUNCTION)
        self.Content.Funcs[line] = FUNCTION
    end,
---Executes the function that is related to the input of the user, if it fails it returns false
---@param self table
    GetInput = function (self)
        io.write("Input: < ")
        local input = tonumber(io.read())

        if type(self.Content.Funcs[input]) ~= "function" then
            print("self.Content.Funcs[".. input .. "]\nERROR: IS TYPE '".. type(self.Content.Funcs[input]) .. "'")
        else
            self.Content.Funcs[input]()
        end

    end,


---Inits name
---@param self table
---@param name string
    Init = function (self, name)
        self.Name = name
        local Content = {
            Display = {},
            Funcs = {}
        }
        self.Content = Content
    end


}

return page
