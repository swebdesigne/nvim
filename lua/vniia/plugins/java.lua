return {
        "nvim-java/nvim-java",
        dependencies = {
                "MunifTanjim/nui.nvim",
                "mfussenegger/nvim-dap",
                "nvim-neotest/nvim-nio",
                {
                        "rcarriga/nvim-dap-ui",
                        dependencies = {
                                "mfussenegger/nvim-dap",
                                "nvim-neotest/nvim-nio",
                        },
                },
                {
                        "JavaHello/spring-boot.nvim",
                        commit = "98c6ff1dcdda943d341bba3c00ae9d190a2e5f7d",
                },
        },
        config = function()
                local config = require("vniia.java-config")

                -- Setup java with config
                require("java").setup(config)

                -- Get jdk path
                local jdk_resolver = require("pkgm.resolve")
                local jdk_home = jdk_resolver.get_jdk_home(config)

                -- Configure runtime AFTER setup (to override the default config)
                vim.lsp.config("jdtls", {
                        settings = {
                                java = {
                                        configuration = {
                                                runtimes = {
                                                        {
                                                                name = "JavaSE-" .. config.jdk.version,
                                                                path = jdk_home,
                                                                default = true,
                                                        },
                                                },
                                        },
                                },
                        },
                })

                -- Enable jdtls server (required to start the language server)
                vim.lsp.enable("jdtls")

                -- Setup java-dap
                require("java-dap").setup()
        end,
}
