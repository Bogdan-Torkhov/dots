local dracula_status, dracula = pcall(require, "dracula")
    if not dracula_status then
       return
end

dracula.setup({
  soft = false,
  transparent = true
})
