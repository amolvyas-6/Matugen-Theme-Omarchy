return {
  {
    "bjarneo/aether.nvim",
    name = "aether",
    priority = 1000,
    opts = {
      disable_italics = false,
      colors = {
            -- Monotone
            base00 = "{{colors.surface_container_low.dark.hex}}",  -- Default background
            base01 = "{{colors.surface_container.dark.hex}}",      -- Lighter background (status)
            base02 = "{{colors.surface_container_high.dark.hex}}", -- Selection background
            base03 = "{{colors.outline_variant.dark.hex}}",        -- Comments, invisibles
            base04 = "{{colors.outline.dark.hex}}",                -- Dark foreground (dim)
            base05 = "{{colors.on_surface_variant.dark.hex}}",     -- Default foreground (medium)
            base06 = "{{colors.on_surface.dark.hex}}",             -- Light foreground (bright)
            base07 = "{{colors.surface_container_highest.dark.hex}}", -- Light background (brightest)

            -- Accents
            base08 = "{{colors.error.dark.hex}}",                  -- Red (errors)
            base09 = "{{colors.secondary_fixed.dark.hex}}",        -- Orange (numbers)
            base0A = "{{colors.tertiary_fixed.dark.hex}}",         -- Yellow (classes)
            base0B = "{{colors.tertiary.dark.hex}}",               -- Green (strings)
            base0C = "{{colors.primary_fixed.dark.hex}}",          -- Cyan (regex)
            base0D = "{{colors.primary.dark.hex}}",                -- Blue (functions)
            base0E = "{{colors.secondary.dark.hex}}",              -- Magenta (keywords)
            base0F = "{{colors.on_secondary_container.dark.hex}}", -- Brown (deprecated)
        },

    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
