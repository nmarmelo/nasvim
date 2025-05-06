-- Function to center and print the NasVim ASCII art
function print_centered_ascii()
    -- The NasVim ASCII art
    local ascii_art = {
        " ███╗   ██╗ █████╗ ███████╗██╗   ██╗██╗███╗   ███╗",
        " ████╗  ██║██╔══██╗██╔════╝██║   ██║██║████╗ ████║",
        " ██╔██╗ ██║███████║███████╗██║   ██║██║██╔████╔██║",
        " ██║╚██╗██║██╔══██║╚════██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        " ██║ ╚████║██║  ██║███████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        " ╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
        "                                                  ",
        "           [ROOT@SYSTEM]# ACCESS GRANTED_          "
    }

    -- Get terminal width (works on most Unix systems)
    local terminal_width

    if vim and vim.api and vim.api.nvim_get_option then
        terminal_width = vim.api.nvim_get_option("columns")
    else
        local handle = io.popen("tput cols")
        terminal_width = tonumber(handle:read("*a")) or 80
        handle:close()
    end
    -- Find the width of the ASCII art
    local max_width = 0
    for _, line in ipairs(ascii_art) do
        max_width = math.max(max_width, #line)
    end

    -- Calculate padding for centering
    local padding = math.floor((terminal_width - max_width) / 2)

    -- Print the centered ASCII art
    print("\n")  -- Add some space at the top
    for _, line in ipairs(ascii_art) do
        print(string.rep(" ", padding) .. line)
    end
    print("\n")  -- Add some space at the bottom
end

-- Call the function to print the centered ASCII art
print_centered_ascii()
