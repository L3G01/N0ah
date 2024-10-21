fx_version 'cerulean'
games { 'gta5' }

lua54 'yes'

author 'Lego / ZaffronRP'
description 'Spiller ejet Pizza Restaurant bygget med ox_lib'
version '1.5.0'

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua'
}

client_scripts {
   'client/*.lua',
   'config.lua'
}

server_scripts {
    'server/*.lua',
    'config.lua'
}
