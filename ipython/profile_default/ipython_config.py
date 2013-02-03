c = get_config()
#c.TerminalIPythonApp.display_banner = False     # Skip startup message
c.TerminalInteractiveShell.confirm_exit = False # Ctrl-D means quit!
#c.TerminalInteractiveShell.autoindent = False   # I can indent my own lines
c.PromptManager.in_template = '>>> '  # The IPython prompt is
c.PromptManager.in2_template = '... ' # useful, but I prefer
c.PromptManager.out_template = ''     # the standard
c.PromptManager.justify = False       # prompt.