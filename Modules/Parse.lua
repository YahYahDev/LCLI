if str == nil then
    str = require(str.lua)
end
---@class parse
parse = {
---
---@param source string
---@param from string
---@param to string
---@return string
    GetBlock = function (source, from, to)
        local From_first, From_last = str.Find(source, from)
        local To_first, To_last = str.Find(source, to)

        return str.Copy(source, From_last +1, To_first -1)
    end,

---
---@param source string
---@param from string
---@param to string
---@return string[]
    GetAllBlock = function (source, from, to)

        local blocks = {}

        local loop = 0

        local From_first = ""
        local From_last = ""

        local To_first = ""
        local To_last

        while true do

            loop = loop +1

            From_first, From_last = str.Find(source, from)

            To_first, To_last = str.Find(source, to)

            if From_first == nil then
                break
            end

            blocks[loop] = str.Copy(source, From_last +1, To_first -1)

            source = str.Copy(source, To_first +1, str.Len(source))

        end

        return blocks
    end

}


return parse
