#!/bin/sh

chmod +x ./carbon_prepatch.sh
sh ./carbon_prepatch.sh

./RustDedicated -batchmode +server.port $1 +server.identity "rust" +rcon.port $2 +rcon.web true +server.hostname "${3}" +server.level "${4}" +server.description "${5}" +server.url ${6} +server.headerimage ${7} +server.logoimage $8 +server.maxplayers $9 +rcon.password ${10} +server.saveinterval ${11} +app.port ${12} $( [ -z ${16} ] && printf %s "+server.worldsize \"${13}\" +server.seed \"${14}\"" || printf %s "+server.levelurl " ) ${15}

#./run.sh \"{{SERVER_PORT}}\" \"{{RCON_PORT}}\" \"{{HOSTNAME}}\" \"{{LEVEL}}\" \"{{DESCRIPTION}}\" \"{{SERVER_URL}}\" \"{{SERVER_IMG}}\" \"{{SERVER_LOGO}}\" \"{{MAX_PLAYERS}}\" \"{{RCON_PASS}}\" \"{{SAVEINTERVAL}}\" \"{{APP_PORT}}\" \"{{WORLD_SIZE}}\" \"{{WORLD_SEED}}\" \"{{ADDITIONAL_ARGS}}\" \"{{MAP_URL}}\"