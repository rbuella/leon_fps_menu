fx_version "cerulean"
game "gta5"
lua54 'yes'

author 'Masterrr'
description 'FPS MENU'
version '1.0.0'


client_scripts {
        'client/client.lua'
}
server_scripts {
        'server/server.lua'
}
shared_scripts {
        '@ox_lib/init.lua'
}
dependencies {
	'ox_lib',
}
