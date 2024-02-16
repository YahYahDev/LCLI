
page = {


    Name = "",


    content = {
        display = {},
        funcs = {}
    },


---Displays self.content.display[] contents
---@param self table
    display = function (self)
        os.execute("clear")
        print(self.Name)
        for i = 1 , #self.content.display do
            print(i .. "): ".. self.content.display[i])
        end

    end,


---Appends self.content.display[line] with value
---@param self table
---@param line number
---@param value string
    append = function (self, line, value)
        self.content.display[line] = value
    end,

---Sets the function that will be used on getinput()
---@param self table
---@param line number
---@param FUNCTION function
    setfunc = function (self, line, FUNCTION)
        self.content.funcs[line] = FUNCTION
    end,
---Executes the function that is related to the input of the user, if it fails it returns false
---@param self table
    getinput = function (self)
        io.write("Input: < ")
        local input = tonumber(io.read())

        if type(self.content.funcs[input]) ~= "function" then
            print("self.content.funcs[".. input .. "]\nERROR: IS TYPE '".. type(self.content.funcs[input]) .. "'")
        else
            self.content.funcs[input]()
        end

    end,


---Inits name
---@param self table
---@param name string
    init = function (self, name)
        self.Name = name
        local content = {
            display = {},
            funcs = {}
        }
        self.content = content
    end


}

return page
