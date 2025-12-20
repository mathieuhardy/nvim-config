function select_ai_suggestions_backend(backend)
  set_codeium_status(backend == "codeium")
  set_copilot_status(backend == "copilot")
end

function set_codeium_status(enabled)
  if enabled then
    require("codeium").enable()
  else
    require("codeium").disable()
  end
end

function set_copilot_status(enabled)
  if enabled then
    vim.cmd("Copilot enable")
  else
    vim.cmd("Copilot disable")
  end
end
