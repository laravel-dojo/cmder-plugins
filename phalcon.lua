--
-- mk990 2018-10-29 12:38
--

--------------------------------------------------------------------------------
local function flags(...)
    local p = clink.arg.new_parser()
    p:set_flags(...)
    return p
end

local phalcon_basic_options = {
	"--help", "-h"
}

local phalcon_basic_parser = clink.arg.new_parser()
phalcon_basic_parser:set_flags(phalcon_basic_options)
phalcon_basic_parser:set_arguments({
	"info" .. flags(phalcon_basic_options),            
	"commands" .. flags(),                 
	"controller" .. flags(
		"--name",
		"--namespace",
		"--directory",
		"--output",
		"--base-class",
		"--force",
		phalcon_basic_options),         
		
	"module" .. flags(
		"--name",
		"--namespace",
		"--output",
		"--config-type",
		"--template-path",
	phalcon_basic_options),         
	"model" .. flags(
		"--name",
		"--schema",
		"--config",
		"--namespace",
		"--get-set",
		"--extends",
		"--excludefields",
		"--doc",
		"--directory",
		"--output",
		"--force",
		"--camelize",
		"--trace",
		"--mapcolumn",
		"--abstract",
		"--annotate",
		phalcon_basic_options),         
	"all-models" .. flags(
		"--config",
		"--schema",
		"--namespace",
		"--extends",
		"--force",
		"--camelize",
		"--get-set",
		"--doc",
		"--relations",
		"--fk",
		"--directory",
		"--output",
		"--mapcolumn",
		"--abstract",
		"--annotate",
		phalcon_basic_options),         
	"project" .. flags(
		"--name",
		"--enable-webtools",
		"--directory",
		"--type",
		"--template-path",
		"--template-engine",
		"--use-config-ini",
		"--trace",
		phalcon_basic_options),         
	"scaffold" .. flags(
		"--table-name",
		"--schema",
		"--config",
		"--get-set",
		"--directory",
		"--template-path",
		"--template-engine=s",
		"--force",
		"--trace",
		"--ns-models",
		"--ns-controllers",
		phalcon_basic_options),         
	"migration" .. flags(
		"--action",
		"--config",
		"--migrations",
		"--directory",
		"--table",
		"--version",
		"--descr",
		"--data",
		"--force",
		"--ts-based",
		"--log-in-db",
		"--dry",
		"--verbose",
		"--no-auto-increment",
		phalcon_basic_options),         
	"webtools" .. flags(
		"--action",
		phalcon_basic_options),         
	"serve" .. flags(
		"--hostname",
		"--port",
		"--basepath",
		"--rootpath",
		"--config",
		phalcon_basic_options),         
	"console" .. flags(
		"--include",
		phalcon_basic_options)       
})

clink.arg.register_parser("phalcon", phalcon_basic_parser)
clink.arg.register_parser("phalcon", phalcon_basic_options)