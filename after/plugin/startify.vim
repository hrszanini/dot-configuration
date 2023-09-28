let g:startify_files_number = 9

let g:startify_custom_indices = map(range(1,100), 'string(v:val)')

let g:startify_bookmarks = [
			\ {'0': '~/.config/nvim/init.vim' }, 
			\ {'g': '~/Git/' },
			\ {'d': '~/Downloads/' },
			\ ]

let g:startify_commands = [
			\ ]

let g:startify_lists = [
			\ { 'type': 'files',		'header': ['   Arquivos recentes	'] },
			\ { 'type': 'bookmarks',	'header': ['   Arquivos padrão		'] },
			\ { 'type': 'commands',		'header': ['   Comandos				'] }, 
			\ { 'type': 'sessions',		'header': ['   Sessões				'] },
			\ ]

let g:startify_custom_header = startify#center([
			\' ██████╗ ██████╗ ██████╗ ███████╗████████╗ ██████╗ ██████╗ ',
			\'██╔════╝██╔═══██╗██╔══██╗██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗',
			\'██║     ██║   ██║██║  ██║█████╗     ██║   ██║   ██║██████╔╝',
			\'██║     ██║   ██║██║  ██║██╔══╝     ██║   ██║   ██║██╔══██╗',
			\'╚██████╗╚██████╔╝██████╔╝███████╗   ██║   ╚██████╔╝██║  ██║',
			\' ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝',
			\])
