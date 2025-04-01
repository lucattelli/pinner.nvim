# pinner.nvim

A quick-and-dirty neovim plugin I created to allow me easily "pin" frequently used buffers into my numeric row.

# Using

```
return {
  {
    "lucattelli/pinner.nvim",
    config = function()
      require("pinner").setup()
    end
  }
}
```
# Shortcuts

- Use `leader` + `SHIFT` + `[1-9]` to pin the current active buffer.
- Use `leader` + `[1-9]` to go to a pinned buffer.

# Contributing
Contributions are welcome! Feel free to submit issues and pull requests on the GitHub repository.​

# License
This project is licensed under the GPL-3.0 License.
