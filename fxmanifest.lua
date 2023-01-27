fx_version 'adamant'
game 'gta5'

description 'AgenceJob By Dobraziil V1'

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",
}

client_scripts {
	'F6Agence/cl_dobra.lua'
}


server_scripts {
	'F6Agence/sv_dobra.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'AgenceJob/locales/fr.lua',
	'AgenceJob/config.lua',
	'AgenceJob/server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'AgenceJob/locales/fr.lua',
	'AgenceJob/config.lua',
	'AgenceJob/client/main.lua'
}
