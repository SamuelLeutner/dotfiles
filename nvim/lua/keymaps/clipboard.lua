local is_wsl = vim.fn.has("wsl") == 1
local is_linux = vim.fn.has("unix") == 1 and not is_wsl

vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', 'p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', 'p', '"+p', { noremap = true })

local function program_exists(program)
    local handle = io.popen("which " .. program .. " 2>/dev/null")
    local result = handle:read("*a")
    handle:close()
    return result ~= ""
end

local function check_dependencies()
    local missing = {}
    
    if is_wsl then
        if not program_exists("win32yank.exe") then
            table.insert(missing, "win32yank.exe")
        end
    elseif is_linux then
        if os.getenv("WAYLAND_DISPLAY") ~= nil then
            if not program_exists("wl-copy") then
                table.insert(missing, "wl-clipboard")
            end
        else
            if not program_exists("xclip") then
                table.insert(missing, "xclip")
            end
        end
    end
    
    if #missing > 0 then
        local msg = "Clipboard pode não funcionar. Programas ausentes: " .. table.concat(missing, ", ")
        vim.notify(msg, vim.log.levels.WARN)
    end
end

vim.defer_fn(check_dependencies, 1000)

return {} 
