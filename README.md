# LCLI
A CLI library for the Lua language


    Used to make cli applications for my self, mostly for managing which custom program i want to start.



HOW TO USE:

    1): How to install.

        1): git clone the repository.

        2): Place the LCLI folder in a place you store modules.

        3): require() LCLI.lua in your lua files you need it.

        3): Optional but if you want to use multiple cli objects
            make sure to use Struct.lua see example.lua for use.

    2): Making a .CLI file.

        1): Syntax

            1): Block defintion

                START:

                END:

            2): Name defintion

                NAME:</What ever you want to display/>

            3): Code defintion

                CODE:</Put lua code here/>CODE:

        2): Loading file

            Use cli:LoadCliFromFile(filepath) to load the .CLI file.
            For examples please refence example.CLI and example.lua respectivly.
