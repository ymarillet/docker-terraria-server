#!/usr/bin/env bash

set -e

# http://patorjk.com/software/taag/#p=display&h=0&v=0&f=ANSI%20Shadow&t=Build%20done%0APress%20Ctrl%20%2B%20C
cat <<"EOF"
██████╗ ██╗   ██╗██╗██╗     ██████╗     ██████╗  ██████╗ ███╗   ██╗███████╗
██╔══██╗██║   ██║██║██║     ██╔══██╗    ██╔══██╗██╔═══██╗████╗  ██║██╔════╝
██████╔╝██║   ██║██║██║     ██║  ██║    ██║  ██║██║   ██║██╔██╗ ██║█████╗
██╔══██╗██║   ██║██║██║     ██║  ██║    ██║  ██║██║   ██║██║╚██╗██║██╔══╝
██████╔╝╚██████╔╝██║███████╗██████╔╝    ██████╔╝╚██████╔╝██║ ╚████║███████╗
╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═════╝     ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝

██████╗ ██████╗ ███████╗███████╗███████╗     ██████╗████████╗██████╗ ██╗              ██████╗
██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝    ██╔════╝╚══██╔══╝██╔══██╗██║             ██╔════╝
██████╔╝██████╔╝█████╗  ███████╗███████╗    ██║        ██║   ██████╔╝██║             ██║
██╔═══╝ ██╔══██╗██╔══╝  ╚════██║╚════██║    ██║        ██║   ██╔══██╗██║             ██║
██║     ██║  ██║███████╗███████║███████║    ╚██████╗   ██║   ██║  ██║███████╗        ╚██████╗
╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝     ╚═════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝         ╚═════╝


EOF

/root/terraria-server-linux-1308/TerrariaServer.bin.x86_64 -config /root/terraria-server-linux-1308/serverconfig.txt
#/usr/bin/supervisord -n