#!/usr/bin/env bash

set -e

julia -e 'using Pkg; Pkg.add("LanguageServer")'

ENVPATH='~/.julia/environments/v1.5'
cat <<EOF >julia-language-server
#!/usr/bin/env bash

julia -e "using LanguageServer, LanguageServer.SymbolServer; runserver()"  $ENVPATH
EOF

chmod +x julia-language-server
