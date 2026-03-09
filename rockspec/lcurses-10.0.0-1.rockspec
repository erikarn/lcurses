package = "lcurses"
version = "10.0.0-1"
description = {
  detailed = "lcurses is a C library for Lua that wraps the curses API.",
  homepage = "https://github.com/erikarn/lcurses/",
  license = "MIT/X11",
  summary = "Lua bindings for curses",
}
source = {
  url = "git://github.com/erikarn/lcurses.git",
  tag = "release-v10.0.0",
  branch = "master",
}
dependencies = {
  "lua >= 5.1, <= 5.4",
}
external_dependencies = nil
build = {
  build_command = "LUA='$(LUA)' ./bootstrap && ./configure LUA='$(LUA)' LUA_INCLUDE='-I$(LUA_INCDIR)' --prefix='$(PREFIX)' --libdir='$(LIBDIR)' --datadir='$(LUADIR)' --datarootdir='$(PREFIX)' && make clean all",
  copy_directories = {},
  install_command = "make install luadir='$(LUADIR)' luaexecdir='$(LIBDIR)'",
  type = "command",
}
