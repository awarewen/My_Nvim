# 基于💤 LazyVim配置

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

这是一个临时的配置，后续慢慢推进文档。

# 快捷键
常用的快捷键，后续更新其他快捷键及改进键位

- (`<leader>` == `space`)

<style type="text/css">
.tg  {border-collapse:collapse;border-color:#93a1a1;border-spacing:0;}
.tg td{background-color:#fdf6e3;border-color:#93a1a1;border-style:solid;border-width:1px;color:#002b36;
  font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{background-color:#657b83;border-color:#93a1a1;border-style:solid;border-width:1px;color:#fdf6e3;
  font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-zkvm{background-color:#eee8d5;border-color:#000000;text-align:center;vertical-align:top}
.tg .tg-wp8o{border-color:#000000;text-align:center;vertical-align:top}
.tg .tg-mqa1{border-color:#000000;font-weight:bold;text-align:center;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 1190px">
<colgroup>
<col style="width: 121.366667px">
<col style="width: 179.366667px">
<col style="width: 154.366667px">
<col style="width: 112.366667px">
<col style="width: 352.733334px">
<col style="width: 269.366667px">
</colgroup>
<thead>
  <tr>
    <th class="tg-wp8o"></th>
    <th class="tg-mqa1">操作描述<br></th>
    <th class="tg-mqa1">KEY <br>(&lt;leader&gt; == `space`)<br>下面用&lt;LD&gt;表示<br></th>
    <th class="tg-mqa1">可用模式<br>Normal = `N`<br>Insert = `I`<br>Visual = `V`<br>Select = `S`</th>
    <th class="tg-mqa1">备注，补充</th>
    <th class="tg-mqa1">相关插件，函数</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-zkvm" rowspan="2">面板显示</td>
    <td class="tg-zkvm">Lazy 插件管理器</td>
    <td class="tg-zkvm">&lt;LD&gt; + l</td>
    <td class="tg-zkvm">N</td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">Mason LSP 管理面板</td>
    <td class="tg-wp8o">&lt;LD&gt; + c + m</td>
    <td class="tg-wp8o">N</td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm" rowspan="2">Buffers</td>
    <td class="tg-zkvm">Buffer 之间移动<br></td>
    <td class="tg-zkvm">{ [, ] } + b<br></td>
    <td class="tg-zkvm">N</td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">关闭当前buffer</td>
    <td class="tg-wp8o">&lt;LD&gt; + b + d</td>
    <td class="tg-wp8o">N</td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm" rowspan="4">Windows<br></td>
    <td class="tg-zkvm">分屏</td>
    <td class="tg-zkvm">&lt;Ctrl + w&gt; + { s, v }</td>
    <td class="tg-zkvm">N</td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">关闭当前window</td>
    <td class="tg-wp8o">&lt;Ctrl + w&gt; + d</td>
    <td class="tg-wp8o">N</td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm">windows之间移动光标</td>
    <td class="tg-zkvm">Ctrl + { h, j, k, l }<br></td>
    <td class="tg-zkvm">N</td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">当前window全屏显示<br></td>
    <td class="tg-wp8o">&lt;LD&gt; + w + m</td>
    <td class="tg-wp8o">N</td>
    <td class="tg-wp8o">`mini.nvim ( mini.misc-&gt;zoom()` )实现<br>全屏之后有点BUG,但是不影响使用，<br>退出全屏之后重新进入全屏即可。<br></td>
    <td class="tg-wp8o">mini.nvim (mini.misc -&gt; MiniMisc.zoom)</td>
  </tr>
  <tr>
    <td class="tg-zkvm" rowspan="4">快速移动</td>
    <td class="tg-zkvm">半屏滚动</td>
    <td class="tg-zkvm">Ctrl + { d, u }<br></td>
    <td class="tg-zkvm">N</td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o" rowspan="2">快速跳转<br></td>
    <td class="tg-wp8o">{ s,S}<br></td>
    <td class="tg-wp8o">N</td>
    <td class="tg-wp8o">插入模式下可以使用 `Alt + s`直接进入跳转<br>(跳转模式：`s` 对应下半屏，匹配按下的相<br>同的前两个字符 ，可以匹配中文这类多字节的符号)</td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm">Ctrl + { i, o }</td>
    <td class="tg-zkvm">N</td>
    <td class="tg-zkvm">编辑点跳转，可以用于连接之间跳转，支持不同文件，<br>不同buffer,不同windows之间快速跳转<br></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">单行滚动</td>
    <td class="tg-wp8o">Ctrl + { e, y }</td>
    <td class="tg-wp8o">N</td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm" rowspan="2">快速删除/添加tab<br></td>
    <td class="tg-zkvm" rowspan="2">tab 删除/添加</td>
    <td class="tg-zkvm">Ctrl + { d, t }</td>
    <td class="tg-zkvm">I</td>
    <td class="tg-zkvm">作用于当前行开头在插入模式下快速添加删除tab</td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">Ctrl +&nbsp;&nbsp;i</td>
    <td class="tg-wp8o">I</td>
    <td class="tg-wp8o">`Ctrl + i`作用于当前光标前一个字符位置处添加tab</td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm" rowspan="9">插入模式（I)下<br>的快捷操作<br><br></td>
    <td class="tg-zkvm" rowspan="5">插入模式下的快速插入操作<br></td>
    <td class="tg-zkvm">Ctrl + a</td>
    <td class="tg-zkvm">I<br></td>
    <td class="tg-zkvm">将复制上一次插入模式到正常模式插入的所有字符<br>并保持插入状态<br></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">Ctrl + `</td>
    <td class="tg-wp8o">I<br></td>
    <td class="tg-wp8o">将复制上一次插入模式到正常模式插入的所有字符<br>并切换到Normal模式<br></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm">Ctrl + { y, e }</td>
    <td class="tg-zkvm">I</td>
    <td class="tg-zkvm">复制当前光标所在位置的上下行对应位置的单个字符<br></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">Ctrl + r</td>
    <td class="tg-wp8o">I</td>
    <td class="tg-wp8o">直接选择寄存器保存的内容插入到当前光标位置<br></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm">Ctrl + p</td>
    <td class="tg-zkvm">I<br></td>
    <td class="tg-zkvm">插入模式下输入单词，句子快速匹配当前Buffer中匹<br>配符合的完整字段 ( 面板中使用 `Ctrl + { n, p}` 选择插入<br></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">移动行<br></td>
    <td class="tg-wp8o">Alt + { j, k }<br></td>
    <td class="tg-wp8o">I, N</td>
    <td class="tg-wp8o">上下快速移动当前行<br></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm" rowspan="2">快速删除<br></td>
    <td class="tg-zkvm">Ctrl + w</td>
    <td class="tg-zkvm">I</td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o">Ctrl + u</td>
    <td class="tg-wp8o">I</td>
    <td class="tg-wp8o">和 `Ctrl + w` 区别是遇到不同符号时一样删除<br></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm">快速保存</td>
    <td class="tg-zkvm">Ctrl + s</td>
    <td class="tg-zkvm">I</td>
    <td class="tg-zkvm">快速保存当前buffer的更改并切换到Normal</td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o">快速包裹，插入括号等...</td>
    <td class="tg-wp8o">g + z + a + { symbol }</td>
    <td class="tg-wp8o">N</td>
    <td class="tg-wp8o">需要先选中需要环绕的字段，插入任意包裹字符</td>
    <td class="tg-wp8o">mini.nvim(mini.sround)</td>
  </tr>
  <tr>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
  </tr>
  <tr>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm">Ctrl + d</td>
    <td class="tg-zkvm">I</td>
    <td class="tg-zkvm"></td>
    <td class="tg-zkvm"></td>
  </tr>
  <tr>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o">Ctrl + f<br></td>
    <td class="tg-wp8o">I</td>
    <td class="tg-wp8o"></td>
    <td class="tg-wp8o"></td>
  </tr>
</tbody>
</table>
