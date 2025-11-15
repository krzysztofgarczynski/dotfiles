require "nvchad.options"

-- add yours here!

local o = vim.o

o.backup = false
o.swapfile = false
o.diffopt = "internal,filler,closeoff,linematch:60"
o.list = true
o.listchars = "tab:>-,trail:-"
o.foldenable = false
o.smarttab = true
o.wildignore = "*.swp,*.bak,*.pyc,*.class,*.o,*.obj"

o.linespace = 0
o.report = 0
o.ruler = true
o.signcolumn = "yes"
o.conceallevel = 2
o.colorcolumn = "80"
