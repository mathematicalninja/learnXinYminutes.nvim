local LOOKUP = {}

---@type {[id]:learn_language}
LOOKUP.data = require("learnXinYminutes.languages")

LOOKUP.setup = function() end

-- IDEA:
-- extension ==> name
-- name ==> url (code file)
-- text snippets ==> name
-- telescope can search for name or text snippets, e.g. `c++` or `c plus plus` or `.cpp`
-- name ==> url (full reference for user to follow)

-- IDEA: maybe these should all return key, value pairs, so the "ID ==> name" can be passed to telescope for it to then go search "name ==> ID"

-- TODO: read telescope docs on building a search.

---@param id id
---@return string
LOOKUP.get_name = function(id) end

---@param id id
---@return string
LOOKUP.get_cannonical_name = function(id) end

---@param id id
---@return string[]
LOOKUP.get_all_names = function(id) end

---@param id id
---@return string
LOOKUP.get_code_url = function(id) end

---@param id id
---@return string
LOOKUP.get_language_description = function(id) end

---@param id id
---@return string
LOOKUP.get_learn_full_url = function(id) end

---@param id id
---@return string
LOOKUP.get_original_author = function(id) end

---@param id id
---@return string[]
LOOKUP.get_file_extensions = function(id) end

---@param id id
---@return string[]
LOOKUP.get_tags = function(id) end

---@return id[]
LOOKUP.get_id_list = function()
    ---@type string[]
    local ids = {}
    for k, _ in pairs(LOOKUP.data) do
        table.insert(ids, k)
    end
    return ids
end

return LOOKUP
