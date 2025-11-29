# Purpose:
[learnXinYminutes](learnxinyminutes.com) is a great resource for checking out new languages and tools. However I found myself wanting to read the actual `code` inside nvim.

This is not intended to be a replacement for their work, but rather a terminal access point to allow experimenting with it.

# Functionality

The plugin creates a folder in `vim.fn.stdpath("data")` called `learnXinYminutes` and then will download (on command) various code files.

Telescope search functionality.

Files can be downloaded individually on command, or all at once on setup.
If the search cannot find the local version of a code file, it will `curl` it.


# Updating
If learnXinYminutes.com updates and I haven't noticed, feel free to add the pertinent items here under the `languages/` folder.


e.g.
```lua
---@type learnLanguage
local BASH = {
    id = "BASH",
    name = {"bash", "bash script", "Bash"},
    code_url = "https://learnxinyminutes.com/files/LearnBash.sh",
    learn_full_url = "https://learnxinyminutes.com/bash/",
    file_extensions = {".sh"},
    tags = {"shell script", "terminal"},
    language_description = "Bash is a name of the unix shell, which was also distributed as the shell for the GNU operating system and as the default shell on most Linux distros. Nearly all examples below can be a part of a shell script or executed directly in the shell.",
    original_author = "Max Yankov",
}

return BASH
```

# Copyright
All copyright for learnXinYminutes belongs to the original authors


