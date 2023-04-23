# 基于💤 LazyVim配置

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

这是一个临时的配置，后续慢慢推进文档。

# 快捷键(<leader> == `space`)
常用的快捷键，后续更新其他快捷键及改进键位

- `Lazy 插件管理器面板`:`<leader> + l`
- `mason LSP 管理面板`:`<leader> + c + m`

- `全屏` : `<leader> + w + m` -- `mini.nvim -> mini.misc -> MiniMisc.zoom`
- `文件树`：`<leader> + f + e` -- `neo-tree.nvim`
- `分屏`: `Ctrl + w + { v, s }`
- `分屏之间跳转`:`Ctrl + { h, j, k, l }`
- `buffer 切换`:`{ [, ] } + b`
- `关闭分屏`:`Ctrl + w + d`
- `关闭文件缓冲区（buf)`:`<leader> + b + d`
- `快捷环绕插入`:`g + z + a + { ", ', (, ~, ... }` -- 需要先将需要环绕包裹的文本切换到可视化('v')模式选中

- `半屏滚动`:`Ctrl+{ d, u }`
- `单行滚动`:`Ctrl+{ e, y}`

## Insert模式可用
- `返回到normal模式`:`j + k`
- `返回到normal模式`:`Ctrl + [`
- `删除整行`:`Ctrl + u`
- `Tab`:`Ctrl + i`

## 复制
- `复制到系统剪贴板`:`\ + y` -- 需要先选中
- `复制到普通剪贴板`:`y + y`

