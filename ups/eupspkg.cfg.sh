# EupsPkg config file. Sourced by 'eupspkg'

# Breaks on Darwin w/o this
export LANG=C

config()
{
    [[ $(uname) = Darwin ]] && SED_INPLACE="sed -i '.prev'" || SED_INPLACE="sed -i"

    $SED_INPLACE "s,LUA_DIR= /usr/local,LUA_DIR= ${LUA_DIR}," Makefile
}
