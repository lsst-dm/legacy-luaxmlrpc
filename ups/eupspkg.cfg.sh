# EupsPkg config file. Sourced by 'eupspkg'

# Breaks on Darwin w/o this
export LANG=C

config()
{
    sed -i '.orig' "s,LUA_DIR= /usr/local,LUA_DIR= ${LUA_DIR}," Makefile
}
