
"Disables print key (Cmd+p) for MacVim
if has("gui_macvim")
  macmenu &File.Print key=<nop>
endif
