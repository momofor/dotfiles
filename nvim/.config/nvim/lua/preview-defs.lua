require('goto-preview').setup {
    width = 120;
    height = 15;
    default_mappings = false;
    lsp_configs = {
        lua = {
            get_config = function(data)
            return data.targetUri,{ data.targetRange.start.line + 1, data.targetRange.start.character }
            end
        };
        typescript = {
            get_config = function(data)
            return data.uri, { data.range.start.line + 1, data.range.start.character }
        end
      }
    }
  }
local _u = require "_utils"
_u.map("n" ,"gpd" ,"<cmd>lua require('goto-preview').goto_preview_definition()<CR>" , {noremap = true})  
_u.map("n","gpi" , "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>" , {noremap = true})  
_u.map("n","gP" , "<cmd>lua require('goto-preview').close_all_win()<CR>" , {noremap = true})
