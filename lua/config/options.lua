-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- This file is automatically loaded by plugins.config
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

-- 自动保存
opt.autowrite = true

-- 剪切板
opt.clipboard = "unnamedplus" -- Sync with system clipboard
--              unnamedplus : 选项使得所有的复制、剪切、更改和粘贴操作都使用系统剪贴板寄存器(*)
--              unnamed : 复制和剪切操作还会将文本复制到默认寄存器(+)

-- 自动完成
opt.completeopt = "menu,menuone,noinsert,noselect,preview" -- Customize completions
--                menu：弹出菜单显示complete列表。存在多个匹配项且有足够的颜色可用时才会出现
--                menuone：只有一个匹配项也弹出菜单，当关于匹配项的其他信息可用时特别有用
--                longest：只插入匹配最长的相同文本。如果菜单显示，使用 CTRL-L 添加更多。是否忽略大小写取决于自动完成的类型。缓冲区文本会使用 'ignorecase' 选项。
--                preview：在预览窗口中显示有关当前选择的自动完成的额外信息。仅在与“menu”或“menuone”组合使用时有效。
--                noinsert：直到用户从菜单中选择一个匹配项，才不插入任何文本。仅在与“menu”或“menuone”组合使用时有效。如果使用“longest”选项，则无效。
--                noselect：不在菜单中选择匹配项，强制从菜单中选择。仅在与“menu”或“menuone”组合使用时有效。

-- 隐藏字符显示级别
opt.conceallevel = 3 -- Hide * markup for bold and italic
--                 0：禁用 Vim 中所有的字符隐藏和替代（substitution）功能。
--                 1：只隐藏已知固定的组合字符，例如 Markdown 中的标题和列表字符等。
--                 2：隐藏所有合法的隐藏字符。
--                 `Note` 中提到了一个例外情况，即光标所在行的隐藏字符不会被隐藏，这是为了方便编辑和复制。如果想要修改这个行为，可以使用 concealcursor 选项进行设置

-- 未保存文件提示框
opt.confirm = true -- Confirm to save changes before exiting modified buffer

-- 高亮光标行
opt.cursorline = true -- Enable highlighting of the current line

-- 使用空格替换tab
opt.expandtab = false -- Use spaces instead of tabs

-- Vim格式化文本的方式 (可以使用逗号将选项字母分隔)
opt.formatoptions = "jcroqlnt" -- Default: tcqj
--                  t: 使用'textwidth'自动换行文本
--                  c: 使用'textwidth'自动换行注释，并自动插入当前注释导向符。
--                  r: 在插入模式下按下回车键后自动插入注释。
--                  o: 在正常模式下按下'o'或'O'后自动插入当前注释导向符。如果不需要注释，请使用CTRL-U快速删除它。|i_CTRL-U|
--                  /: 当包含'o'时：仅当 "//" 在语句开头时才不插入后面的注释导向符。
--                  q: 允许使用"gq"格式化注释。格式化不会改变空行或仅包含注释导向符行。新段落在这样的行后开始，或者当注释导向符发生变化时开始。
--                  w: 行尾空格表示自动换行到下一行。以非空白字符结尾的行即为段落结束。
--                  a: 自动格式化段落。每次插入或删除文本时，段落将重新格式化。当存在“c”标志时，只有识别到的注释会自动格式化。
--                  n: 识别编号列表。可以使用任何类型的列表，找到数字，后面可能跟随 '.',':',')',']'或'}'。请注意，也必须设置'autoident'。不适用于"2"使用。
--                  2: 在格式化文本时，使用段落的第二行缩进来替换整个段落的首行缩进，而不是使用首行的缩进。这支持首行缩进与其余部分不同的段落。请注意，'autoindent' 必须同时被设置(default:true)。它也适用于注释，会忽略注释导向符。
--                  v: 在插入模式下使用类似Vi的自动换行：仅在当前插入命令中输入的空白处断开一行。（注意：这不是100％的Vi兼容。在这个领域，Vi有一些“意外的特性”或错误。它使用屏幕列而非行列。）
--                  b: 类似于 'v'，但仅在您在换行边缘处或之前输入空白时才自动换行。如果在插入之前行超过了'textwidth'，或者在到达'textwidth'之前未输入空白，则Vim不执行自动换行。
--                  l: 插入模式下不打断长行：当插入命令启动时，如果行长大于'textwidth'，Vim不会自动格式化它。
--                  m: 同样也会在超过255个字节的多字节字符处换行。这对于每个字符都是单独的单词的亚洲文本非常有用。
--                  M: 连接行时，在多字节字符之前或之后不要插入空格。覆盖'B'标志。
--                  B: 连接行时，不要在两个多字节字符之间插入空格。被'M'标志覆盖。
--                  1: 不要在一个字母后换行。相反，在它之前断开行（如果可能）。
--                  ]: 严格遵守'textwidth'。设置此标志后，行的长度不能超过'textwidth'，除非行断点规定不可能这样做。主要用于CJK脚本，仅当'encoding'为"utf-8"时才有效。
--                  j: 尽可能自动删除连接行中的注释导向符。例如，连接：
--                  p: 不要在跟在句号后的单个空格处断开行。这旨在与 'joinspaces' 和 |cpo-J|结合使用，处理文本，句子之间由两个空格分隔。例如，使用'textwidth'设置为28：

-- Grep 相关
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep" -- 使用rg
opt.ignorecase = true -- 搜索时忽略大小写
opt.inccommand = "nosplit" -- preview incremental substitute
--               nosplit: 在缓冲区中逐步显示命令的效果
--               spilt: 继承nosplit效果并显示部分屏幕外结果在预览窗口中
-- inccommand非空值显示系列标志的用户命令的增量效果
-- ：substitute，
-- ：smagic，
-- ：snomagic
-- ：command-preview

-- status line 显示:
opt.laststatus = 3
--               0: never
--               1: only if there are at least two windows
--               2: always
--               3: always and ONLY the last window

opt.list = true -- -- 显示隐藏字符(tabs...
opt.listchars = "tab: -,trail:-,nbsp:+,multispace:.x."
--              eol:c 						每行结尾显示的字符。如果省略，则没有额外字符在行尾
--              tab:x[y][z] 				显示制表符。'y','z'字符是可选的(tabstop数量相关),当省略“tab：”时，制表符显示为^I
--              space:c 					空格要显示的字符。如果省略，空格为空白
--              multispace:c... 			用于循环显示多个连续空格的一个或多个字符。覆盖“space”设置，但对于单个空格除外。如果省略，“space”设置将被使用
--              lead:c 						显示前导空格的字符。如果省略，前导空格为空白。覆盖前导空格的“space”和“multispace”设置。
--              leadmultispace:c... 	类似于|lcs-multispace|值，但仅用于前导空格。 覆盖前导多个空格的|lcs-lead|设置。
--              trail:c 					要在尾随空格上显示的字符。如果省略，尾随空格为空白。覆盖“space”和“multispace”设置尾随空格。
--              extends:c 					当“wrap”关闭且该行超出屏幕右侧时，在最后一列中显示的字符。
--              precedes:c 				当第一列中可见的字符之前存在文本时，在物理行的第一列中显示的字符。
--              conceal:c 					当“conceallevel”设置为1时，在隐含文本位置显示的字符。如果省略，为空格。
--              nbsp:c 						要显示为不可断空格字符（0xA0（160十进制）和U+202F）的字符。如果省略，则为空白。
--              `NOTE`请注意，要使用双反斜杠。十六进制字符的数量必须为2，对于\u为4，对于\U为8。

opt.mouse = "a" -- 启用鼠标
opt.number = true -- 打印行号
opt.relativenumber = true -- relative Number 相对行号
opt.scrolloff = 4 -- Lines of context
-- 光标上下至少要保留多少行文本才会开始滚动屏幕,将其设置为很大的值（如999）光标行将始终位于窗口中央

-- popup menu相关
opt.pumblend = 50 -- Popup 透明度
opt.pumheight = 10 -- Popup 高度

-- Session 保存时的附加选项
opt.sessionoptions = "buffers,curdir,folds,tabpages,winsize,terminal,options"
-- `'sessionoptions'`  `'ssop'` 	string	(default: "blank,buffers,curdir,folds,help,tabpages,winsize,terminal")
-- 						word:	 			save and restore ~ (没明白是什么意思)
-- 						blank: 			空窗口
-- 						buffers: 		隐藏和未加载的 buffers, 不仅限于窗口中的 buffers
-- 						curdir: 			当前所在目录
-- 						folds:			手动创建的折叠
-- 						globals: 		以大写字母开头并包含至少一个小写字母的全局变量，仅存储字符串和数字类型
-- 						help: 			帮助窗口
-- 						localoptions: 	窗口或缓冲区本地的选项和映射(不仅是本地选项的全局值)
-- 						options: 		所有选项和映射（也包括本地选项的全局值）
-- 						skiprtp: 		将 'runtimepath' 和 'packpath' 从选项中排除 (多套nvim配置)
-- 						resize: 			Vim 窗口的大小： 'lines' 和 'columns'
-- 						sesdir: 			会话文件所在的目录将成为当前目录（用于从不同系统访问的项目）
-- 						tabpages:		所有选项卡页；如果没有这个选项，则仅还原当前选项卡页，这样您可以为每个选项卡页单独创建会话
-- 						terminal: 		包括可以恢复命令的终端窗口
-- 						winpos: 			Vim 窗口的位置
-- 						winsize: 		窗口大小
-- 						slash: 			|已弃用| 始终启用。在文件名中使用 "/"
-- 						unix: 			|已弃用| 始终启用。使用 "\n" 行结束符。
-- 						`NOTE`:不要同时包括 "curdir" 和 "sesdir"。当两者都不包括时，文件名将作为绝对路径存储。
-- 								 如果省略 "options"，在恢复会话后很多事情将无法正常工作。

-- Tab ===============================================================================
opt.shiftround = true -- Round indent (插入模式下快捷键添加和删除tab:Ctrl+d)
opt.shiftwidth = 3 -- Size of an indent
opt.tabstop = 3 -- Number of spaces tabs count for

-- UI ================================================================================
-- shortmess
opt.shortmess:append({ W = true, I = true, c = true })
-- 			 'shortmess' 'shm' 字符串类型，默认值为 "filnxtToOF"。
--
-- 			 此选项帮助避免由文件消息引起的所有 |hit-enter|（按回车）提示，例如使用 CTRL-G，以及避免一些其他消息。它是一个标志列表：
-- 			     f 当存在时，使用 "(3 of 5)" 代替 "(file 3 of 5)"
-- 			     i 当存在时，使用 "[noeol]" 代替 "[Incomplete last line]"
-- 			     l 当存在时，使用 "999L, 888B" 代替 "999 lines, 888 bytes"
-- 			     m 当存在时，使用 "[+]" 代替 "[Modified]"
-- 			     n 当存在时，使用 "[New]" 代替 "[New File]"
-- 			     r 当存在时，使用 "[RO]" 代替 "[readonly]"
-- 			     w 当进行文件写入操作时，使用 "[w]" 代替 "written"，在使用 ':w >> file' 命令时使用 "[a]" 代替 "appended"
-- 			     x 当存在时，使用 "[dos]" 代替 "[dos format]"，"[unix]" 代替 "[unix format]"，"[mac]" 代替 "[mac format]"
-- 			     a 所有上述缩写
-- 			     o 用于写入文件后的覆盖消息，并带有读取文件的后续消息（对于 ":wn" 或当 'autowrite' 打开时非常有用）
-- 			     O 读取文件的消息覆盖任何先前的消息；对于快速修复消息（例如 ":cn"）也是如此
-- 			     s 不给出 "search hit BOTTOM, continuing at TOP" 或 "search hit TOP, continuing at BOTTOM" 消息；当使用搜索计数时，不在计数消息后显示 "W"（参见下面的 S）
-- 			     t 如果文件消息过长而无法放置在命令行上，则在开头截断文件消息，左侧最多出现 "<"；在 Ex 模式下被忽略
-- 			     T 如果其他消息过长而无法放置在命令行上，则在中间截断其他消息，居中出现 "..."；在 Ex 模式下被忽略
-- 			     W 在写入文件时不给出 "written" 或 "[w]"
-- 			     A 发现现有的交换文件时不给出 "ATTENTION" 消息
-- 			     I 开始 Vim 时不显示 intro 消息，参见 |:intro|
-- 			     c 不给出插入模式自动完成菜单消息；例如，"-- XXX completion (YYY)"、"match 1 of 2"、"The only match"、"Pattern not found"、"Back at original" 等。
-- 			     C 扫描插入模式自动完成项时不给出消息，例如 "scanning tags"
-- 			     q 使用 "recording" 代替 "recording @a"
-- 			     F 编辑文件时不给出文件信息，例如像使用 ':silent' 命令一样使用
-- 			     S 在搜索时不显示搜索计数消息，例如"[1/5]"

opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.termguicolors = true -- True color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
  opt.splitkeep = "screen"
  opt.shortmess:append({ C = true })
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- 用于删除Unicode组合字符的时候开启
-- opt.delcombine = "deco" -- "delcombine", "deco", "nodelcombine", "nodeco"
