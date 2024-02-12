page = {
    Name = "",
    content = {
        display = {},
        changes = {}
    },
---Displays self.content.display arrays contents
---@param self
    display = function (self)
        os.execute("clear")
        print(self.Name)
        for i = 1 , #self.content.display do
            print(i .. "): ".. self.content.display[i])
        end

    end,
---Appends self.content.display[line] with value
---@param self
---@param line number
---@param value string
    append = function (self, line, value)
        self.content.display[line] = value
    end,
---Inits name
---@param name string
    init = function (name)
        self.Name = name
    end
}
