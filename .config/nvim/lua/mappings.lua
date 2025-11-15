require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":",                                                            {desc = "CMD enter command mode"})
map("i", "jk", "<ESC>")

map("n", "<A-p>",       "<cmd> ProjectMgr<cr>",                               {desc = "Tools Project Manager"})
map("n", "<leader>lg",  "<cmd>LazyGit<cr>",                                   {desc = "Tools LazyGit"})
map("n", "<leader>?",   "<cmd>VimCoach<cr>",                                  {desc = "Tools Vim Coach"})

-- Yazi
map("n", "<leader>yi",  "<cmd>Yazi<cr>",                                      {desc = "Yazi Open at the current file"})
map("n", "<leader>ycw", "<cmd>Yazi cwd<cr>",                                  {desc = "Yazi Open in workdir"})
-- DAP
map("n", "<leader>du",  "<cmd>lua require('dapui').toggle()<CR>",             {desc = "Debugger Toggle Mode"})
map("n", "<leader>dt",  "<cmd>lua require('dap').toggle_breakpoint()<CR>",    {desc = "Debugger Toggle Breakpoing"})
map("n", "<leader>db",  "<cmd>lua require('dap').set_breakpoint()<CR>",       {desc = "Debugger Set Breakpoint"})
map("n", "<leader>dc",  "<cmd>lua require('dap').continue()<CR>",             {desc = "Debugger Continue"})
map("n", "<leader>di",  "<cmd>lua require('dap').step_into()<CR>",            {desc = "Debugger Step Into"})
map("n", "<leader>dso", "<cmd>lua require('dap').step_out()<CR>",             {desc = "Debugger Step Out"})
map("n", "<leader>do",  "<cmd>lua require('dap').step_over()<CR>",            {desc = "Debugger Step Over"})
map("n", "<leader>dq",  "<cmd>lua require('dap').quit()<CR>",                 {desc = "Debugger Quit"})
map("n", "<leader>dx",  "<cmd>lua require('dap').terminate()<CR>",            {desc = "Debugger Terminate"})
-- Code
map("n", "gd",          "<cmd>lua vim.lsp.buf.definition()<CR>",              {desc = "Code Get Definition"})
map("n", "gD",          "<cmd>lua vim.lsp.buf.implementation()<CR>",          {desc = "Code Get Implementation"})
map("n", "gs",          "<cmd>lua vim.lsp.buf.signature_help()<CR>",          {desc = "Code Signature Help"})
map("n", "gS",          "<cmd>lua vim.lsp.buf.type_definition()<CR>",         {desc = "Code Type Definition"})
map("n", "gh",          "<cmd>lua vim.lsp.buf.hover()<CR>",                   {desc = "Code Hover"})
map("n", "gic",         "<cmd>lua vim.lsp.buf.incoming_calls()<CR>",          {desc = "Code Incoming Calls"})
map("n", "gc",          "<cmd>lua vim.lsp.buf.outgoing_calls()<CR>",          {desc = "Code Outgoing Calls"})
map("n", "gr",          "<cmd>lua vim.lsp.buf.references()<CR>",              {desc = "Code References"})
map("n", "gwa",         "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",    {desc = "Code Add Workspace Folder"})
map("n", "gwr",         "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", {desc = "Code Remove Workspace Folder"})
map("n", "<leader>o",   "<cmd>Outline<CR>",                                   {desc = "Code Toggle Outline"})
map("n", "<leader>cd",  "<cmd>TinyInlineDiag toggle<cr>",                     {desc = "Code Toggle Dagnostics"})

