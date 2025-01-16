return {
  -- {{{ Define the Harpoon lazy.vim specificaiton.

  "ThePrimeagen/harpoon",
  enabled = true,
  branch = "harpoon2",

  keys = function()
    local keys = {
      -- Harpoon marked files 1 through 4
      {"<A-1>",
        function()
          require("harpoon"):list():select(1)
        end, desc ="Harpoon buffer 1"
      },

      {"<A-2>",
        function()
          require("harpoon"):list():select(2)
        end, desc ="Harpoon buffer 2"
      },

      {"<A-3>",
        function()
          require("harpoon"):list():select(3)
        end, desc ="Harpoon buffer 3"
      },

      {"<A-4>",
        function()
          require("harpoon"):list():select(4)
        end, desc ="Harpoon buffer 4"
      },

      -- Harpoon next and previous.
      {"<A-j>",
        function()
          require("harpoon"):list():next()
        end, desc ="Harpoon next buffer"
      },

      {"<A-k>",
        function()
          require("harpoon"):list():next()
        end, desc ="Harpoon prev buffer"
      },

      -- Harpoon user interface.
      {"<A-f>",
        function()
          local harpoon = require("harpoon")
         harpoon.ui:toggle_quick_menu(harpoon:list())
        end, desc ="Harpoon Toggle Menu"
      },

      {"<A-a>",
        function()
          require("harpoon"):list():add()
        end, desc ="Harpoon Tadd file"
      },
    }
    return keys
  end,
}
