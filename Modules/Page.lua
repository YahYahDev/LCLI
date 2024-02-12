page = {


    Name = "",


    content = {
        display = {},
        changes = {}
    },


---Displays self.content.display arrays contents
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
    setfunction = function (self, line, FUNCTION)
        self.content.changes[line] = FUNCTION
    end,
---Gets input from the user then executes the function related to the input else return false
---@param self table
---@return boolean
    getinput = function (self)
        input = io.read()
        if self.content.changes[input] == nil then
            os.execute("clear")
            print("ERROR: NO FUNCTION FOR THAT OPTION")

            return false

            else

            self.content.changes[input]()

            return true
        end
    end,


---Inits name
---@param self table
---@param name string
    init = function (self, name)
        self.Name = name
    end


}
