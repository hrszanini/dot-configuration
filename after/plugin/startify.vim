let g:startify_files_number = 5

let g:startify_bookmarks = [
			\ {'i': '~/.config/nvim/init.vim' }, 
			\ {'g': '~/Git/' }
			\ ]

let g:startify_commands = [
			\ {'pi': ['Instalar Plugins',	':PlugInstall'			] },
			\ {'pu': ['Atualizar Plugins',	':PlugUpdate'			] },
			\ {'pc': ['Limpar Plugins',		':PlugClean'			] },
			\ {'ff': ['Procurar Arquivos',	':Telescope find_files'	] },
			\ {'fg': ['Procurar Texto',		':Telescope live_grep'	] },
			\ ]

let g:startify_lists = [
			\ { 'type': 'files',		'header': ['   Arquivos recentes'] },
			\ { 'type': 'bookmarks',	'header': ['   Arquivos padrão	'] },
			\ { 'type': 'commands',		'header': ['   Comandos			'] }, 
			\ { 'type': 'sessions',		'header': ['   Sessões			'] },
			\ ]

let g:startify_custom_header = startify#center([
			\' ▄████▄  ▒█████   ▓█████▄ ▓█████▄▄▄█████▓ ▒█████   ██▀███  ',
			\'▒██▀ ▀█ ▒██▒  ██▒ ▒██▀ ██▌▓█   ▀▓  ██▒ ▓▒▒██▒  ██▒▓██ ▒ ██▒',
			\'▒▓█    ▄▒██░  ██▒ ░██   █▌▒███  ▒ ▓██░ ▒░▒██░  ██▒▓██ ░▄█ ▒',
			\'▒▓▓▄ ▄██▒██   ██░▒░▓█▄   ▌▒▓█  ▄░ ▓██▓ ░ ▒██   ██░▒██▀▀█▄  ',
			\'▒ ▓███▀ ░ ████▓▒░░░▒████▓ ░▒████  ▒██▒ ░ ░ ████▓▒░░██▓ ▒██▒',
			\'░ ░▒ ▒  ░ ▒░▒░▒░ ░ ▒▒▓  ▒ ░░ ▒░   ▒ ░░   ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░',
			\'  ░  ▒    ░ ▒ ▒░   ░ ▒  ▒  ░ ░      ░      ░ ▒ ▒░   ░▒ ░ ▒░',
			\'░       ░ ░ ░ ▒    ░ ░  ░    ░    ░ ░    ░ ░ ░ ▒     ░   ░ ',
			\'░ ░         ░ ░      ░       ░               ░ ░     ░     ',
			\])
