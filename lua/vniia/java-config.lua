return {
	checks = {
		nvim_version = false,
		nvim_jdtls_conflict = false,
	},

	experimental = {
		fix_generated_sources = false,
	},

	jdtls = {
		version = '1.54.0',
		path = nil,
		auto_install = true,
	},

	lombok = {
		enable = true,
		version = '1.18.46',
		path = vim.fn.stdpath('config') .. '/java/lombok-1.18.46.jar',
		auto_install = false,
	},

	java_test = {
		enable = true,
		version = '0.43.2',
		path = nil,
		auto_install = true,
	},

	java_debug_adapter = {
		enable = true,
		version = '0.58.3',
		path = nil,
		auto_install = true,
	},

	spring_boot_tools = {
		enable = true,
		version = '1.55.1',
		path = nil,
		auto_install = true,
	},

	jdk = {
		auto_install = true,
		version = '25',
		path = nil,
	},

	log = {
		use_console = true,
		use_file = true,
		level = 'info',
		log_file = vim.fn.stdpath('state') .. '/nvim-java.log',
		max_lines = 1000,
		show_location = false,
	},
}
