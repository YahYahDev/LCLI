
page = require("Modules.Page")
str = require("Modules.Str")
struct = require("Modules.Struct")

page.new = struct.new()

MainInterface = page:new()




test = [[I am a test string, i hold information such as charicters.
I am a few lines long for testing purposes, more text will be required for testing.
Testing is going to be used for seeing what i can do with the string library in lua.]]


local first, last = str.Find(test, "long")

TestCopy = str.Copy(test, first, test:len())
test = str.Copy(test, 1, first -1)
TestCopy = str.Replace(TestCopy, "est", "uck")


test = str.Merge(test, TestCopy)



print(test)



