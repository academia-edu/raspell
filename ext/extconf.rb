require "mkmf"

dir_config("opt", "/opt/local/include",  "/opt/local/lib")
have_header("ruby.h")

unless have_header("aspell.h")
  $CPPFLAGS += "-D NO_ASPELL"
end

have_library("aspell")
create_makefile("raspell")
