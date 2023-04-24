# 基于💤 LazyVim配置

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

这是一个临时的配置，后续慢慢推进文档。


# 快捷键
- 仅适合此配置
- (leader = `space`) 下面用<\LD>表示
- Normal = `N` Insert = `I` Visual = `V` Select = `S` 	

|                            	|             操作描述             	|                     KEY                    	|                           可用模式                            |                                                            备注，补充                                                             |             相关插件，函数             	|
| ---------------------------	| ---------------------------------	| -------------------------------------------	| -------------------------------------------------------------	| --------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------- 	|
|          面板显示          	|          Lazy 插件管理器         	|                  leader + l                	|                               N                              	|                                                                                                                                 	|                                        	|
|                            	|        Mason LSP 管理面板        	|                leader + c + m              	|                               N                              	|                                                                                                                                 	|                                        	|
|           Buffers          	|          Buffer 之间移动         	|                { [, ] } + b               	|                               N                              	|                                                                                                                                 	|                                        	|
|                            	|          关闭当前buffer          	|                leader + b + d              	|                               N                              	|                                                                                                                                 	|                                        	|
|           Windows          	|               分屏               	|           ctrl + w + { s, v }             	|                               N                              	|                                                                                                                                 	|                                        	|
|                            	|          关闭当前window          	|               Ctrl + w + d                	|                               N                              	|                                                                                                                                 	|                                        	|
|                            	|        windows之间移动光标       	|           Ctrl + { h, j, k, l }           	|                               N                              	|                                                                                                                                 	|                                        	|
|                            	|        当前window全屏显示        	|                leader + w + m              	|                               N                              	|              `mini.nvim ( mini.misc->zoom()` )实现 全屏之后有点BUG,但是不影响使用， 退出全屏之后重新进入全屏即可。              	| mini.nvim (mini.misc -> MiniMisc.zoom) 	|
|          快速移动          	|             半屏滚动             	|              Ctrl + { d, u }              	|                               N                              	|                                                                                                                                 	|                                        	|
|                            	|             快速跳转             	|                   { s,S }                  	|                               N                              	| 插入模式下可以使用 `Alt + s`直接进入跳转 (跳转模式：`s` 对应下半屏，匹配按下的相 同的前两个字符 ，可以匹配中文这类多字节的符号) 	|                                        	|
|                            	|                                  	|              Ctrl + { i, o }              	|                               N                              	|                       编辑点跳转，可以用于连接之间跳转，支持不同文件， 不同buffer,不同windows之间快速跳转                       	|                                        	|
|                            	|             单行滚动             	|              Ctrl + { e, y }              	|                               N                              	|                                                                                                                                 	|                                        	|
|      快速删除/添加tab      	|           tab 删除/添加          	|              Ctrl + { d, t }              	|                               I                              	|                                           作用于当前行开头在插入模式下快速添加删除tab                                           	|                                        	|
|                            	|             tab 添加             	|                 Ctrl +  i                 	|                               I                              	|                                         `Ctrl + i`作用于当前光标前一个字符位置处添加tab                                         	|                                        	|
| 插入模式（I)下 的快捷操作  	|     插入模式下的快速插入操作     	|                  Ctrl + a                 	|                               I                              	|                                   将复制上一次插入模式到正常模式插入的所有字符 并保持插入状态                                   	|                                        	|
|                            	| 快速复制上一次插入模式输入的字符 	|                  Ctrl + \`                 	|                               I                              	|                                 将复制上一次插入模式到正常模式插入的所有字符 并切换到Normal模式                                 	|                                        	|
|                            	|   复制同一列上下行相对应的字符   	|              Ctrl + { y, e }              	|                               I                              	|                                          复制当前光标所在位置的上下行对应位置的单个字符                                         	|                                        	|
|                            	|     显示寄存器面板，快速插入     	|                  Ctrl + r                 	|                               I                              	|                                            直接选择寄存器保存的内容插入到当前光标位置                                           	|                                        	|
|                            	|                                  	|                  Ctrl + p                 	|                               I                              	|              插入模式下输入单词，句子快速匹配当前Buffer中匹 配符合的完整字段 ( 面板中使用 `Ctrl + { n, p}` 选择插入             	|                                        	|
|                            	|              移动行              	|               Alt + { j, k }              	|                             I, N                             	|                                                        上下快速移动当前行                                                       	|                                        	|
|                            	|             快速删除             	|                  Ctrl + w                 	|                               I                              	|                                                                                                                                 	|                                        	|
|                            	|                                  	|                  Ctrl + u                 	|                               I                              	|                                            和 `Ctrl + w` 区别是遇到不同符号时一样删除                                           	|                                        	|
|                            	|             快速保存             	|                  Ctrl + s                 	|                               I                              	|                                              快速保存当前buffer的更改并切换到Normal                                             	|                                        	|
|                            	|      快速包裹，插入括号等...     	|           g + z + a + { Symbol }          	|                               N                              	|                                            需要先选中需要环绕的字段，插入任意包裹字符                                           	|         mini.nvim(mini.sround)         	|
|                            	|                                  	|                                           	|                                                              	|                                                                                                                                 	|                                        	|
|                            	|                                  	|                  Ctrl + d                 	|                               I                              	|                                                                                                                                 	|                                        	|
|                            	|                                  	|                  Ctrl + f                 	|                               I                              	|                                                                                                                                 	|                                        	|
