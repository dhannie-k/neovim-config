return {
cmd = {"rustup", "run", "stable", "rust-analyzer"},
        filetypes = {"rust"},
        root_markers = {"Cargo.toml" },

        settings = {
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                },
                check = {
                    command = "clippy";
                },
                diagnostics = {
                    enable = true;
	    }
    }
}}
