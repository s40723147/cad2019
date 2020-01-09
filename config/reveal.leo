<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20180902120538.1"><vh>@settings</vh>
<v t="leo.20180902120538.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20180902120538.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20180902120523.1"><vh>編輯 reveal</vh>
<v t="leo.20180902120523.2"><vh>@path ./../reveal</vh>
<v t="leo.20180902120523.3"><vh>@clean index.html</vh>
<v t="leo.20180902120523.4"><vh>html</vh>
<v t="leo.20180902120523.5"><vh>head</vh></v>
<v t="leo.20180902120523.6"><vh>body</vh>
<v t="leo.20180902120523.7"><vh>reveal div</vh>
<v t="leo.20180902120523.8"><vh>slides div</vh>
<v t="leo.20180902120523.9"><vh>封面投影片</vh>
<v t="leo.20180902120523.10"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20191107030339.1"><vh>G1</vh>
<v t="leo.20191107030339.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20191107031108.1"><vh>G2</vh>
<v t="leo.20191107031108.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20191107032218.1"><vh>G3</vh>
<v t="leo.20191107032218.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20191107033131.1"><vh>G4</vh>
<v t="leo.20191107033131.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20200109170517.1"><vh>G5</vh>
<v t="leo.20200109170517.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20200109172158.1"><vh>G6</vh>
<v t="leo.20200109172158.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20200109173456.1"><vh>G7</vh>
<v t="leo.20200109173456.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20200109174618.1"><vh>G8</vh>
<v t="leo.20200109174618.2"><vh>封面投影片內容</vh></v>
</v>
<v t="leo.20180902120523.11"><vh>快捷鍵</vh>
<v t="leo.20180902120523.12"><vh>投影片快捷鍵</vh></v>
</v>
<v t="leo.20180902120523.13"><vh>各式內容引用範例</vh>
<v t="leo.20180902120523.14"><vh>導入數學符號與方程式</vh>
<v t="leo.20180902120523.15"><vh>LaTeX 格式方程式</vh></v>
</v>
<v t="leo.20180902120523.16"><vh>導入縮排程式碼</vh>
<v t="leo.20180902120523.17"><vh>引用程式碼</vh></v>
</v>
<v t="leo.20180902120523.18"><vh>導入影片</vh>
<v t="leo.20180902120523.19"><vh>iframe 導入影片</vh></v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20180902120523.1"></t>
<t tx="leo.20180902120523.10">## CAD2019 40723147


&lt;small&gt;
Created by [40723147](https://github.com/s40723147/cad2019)
&lt;/small&gt;

[CMSimfly 網誌](./../blog/index.html)


</t>
<t tx="leo.20180902120523.11">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180902120523.12"># 投影片快捷鍵

* 利用箭頭上下前後換頁
* 按 f 鍵進入全螢幕模式 (full screen)
* 按 s 鍵可以顯示投影片筆記 (show)
* 按 o 鍵可以切換單張或全域檢視 (overview)
* 按 b 或 . 鍵可以切換螢幕黑屏 (black)
* 按 Esc 可以退出全螢幕或全域檢視 (Escape)

</t>
<t tx="leo.20180902120523.13">&lt;section&gt;
@others
&lt;/section&gt;

</t>
<t tx="leo.20180902120523.14">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20180902120523.15"># 數學符號與方程式

Inline math equations go in like so: $\omega = d\phi / dt$. Display
math should get its own line and be put in in double-dollarsigns:

$$I = \int \rho R^{2} dV$$
</t>
<t tx="leo.20180902120523.16">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
&lt;!-- 請注意, @others 不可以內縮 --&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;



						
</t>
<t tx="leo.20180902120523.17">## 利用 Markdown 寫投影片
以下利用 Markdown 格式展示 Python 程式碼:
```
@language python
# use threading and subprocess to threading the make process
import os
import subprocess
import threading

def domake():
    
    path = "../exposed/api/exposed"
    ubuntu = "../Ubuntu"
    
    # create obj path
    
    if not os.path.exists(path+"/../obj"):
        os.makedirs(path+"/../obj")
    
    subprocess.call(["make", "clean"], cwd=path)
    subprocess.call("make", cwd=path)
    subprocess.call(["cp", "{libslvs.so, _slvs.so, slvs.py}", ubuntu], cwd=path)
    subprocess.call(["python3", "circle_ex.py"], cwd=path+"/"+ubuntu)
    
make = threading.Thread(target=domake)
make.start()
```
</t>
<t tx="leo.20180902120523.18">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180902120523.19">## 使用 iframe 導入影片

### 導入影片 template

&lt;iframe src="https://player.vimeo.com/video/183950627" width="640" height="492" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;
</t>
<t tx="leo.20180902120523.2"></t>
<t tx="leo.20180902120523.3">@language xml
@tabwidth -4
@others

</t>
<t tx="leo.20180902120523.4">&lt;!doctype html&gt;
&lt;html lang="en"&gt;
@others
&lt;/html&gt;
</t>
<t tx="leo.20180902120523.5">&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
&lt;title&gt;
CMSimfly 網際內容管理
&lt;/title&gt;
    &lt;meta name="description" content="A framework for easily creating beautiful presentations using HTML"&gt;
    &lt;meta name="author" content="Hakim El Hattab"&gt;
    
    &lt;meta name="apple-mobile-web-app-capable" content="yes"&gt;
    &lt;meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"&gt;
    
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"&gt;
    
    &lt;link rel="stylesheet" href="css/reveal.css"&gt;
    &lt;link rel="stylesheet" href="css/theme/black.css" id="theme"&gt;
    
    &lt;!-- Theme used for syntax highlighting of code --&gt;
    &lt;link rel="stylesheet" href="lib/css/zenburn.css"&gt;

    &lt;!-- Printing and PDF exports --&gt;
    &lt;script&gt;
        var link = document.createElement( 'link' );
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = window.location.search.match( /print-pdf/gi ) ? 'css/print/pdf.css' : 'css/print/paper.css';
        document.getElementsByTagName( 'head' )[0].appendChild( link );
    &lt;/script&gt;

    &lt;!--[if lt IE 9]&gt;
    &lt;script src="lib/js/html5shiv.js"&gt;&lt;/script&gt;
    &lt;![endif]--&gt;
&lt;/head&gt;

</t>
<t tx="leo.20180902120523.6">&lt;body&gt;
@others
&lt;script src="lib/js/head.min.js"&gt;&lt;/script&gt;
&lt;script src="js/reveal.js"&gt;&lt;/script&gt;
&lt;script&gt;
        // More info https://github.com/hakimel/reveal.js#configuration
        Reveal.initialize({
            controls: true,
            progress: true,
            history: true,
            center: true,

            transition: 'slide', // none/fade/slide/convex/concave/zoom

            // More info https://github.com/hakimel/reveal.js#dependencies
            dependencies: [
                { src: 'lib/js/classList.js', condition: function() { return !document.body.classList; } },
                { src: 'plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                { src: 'plugin/zoom-js/zoom.js', async: true },
                { src: 'plugin/notes/notes.js', async: true },
                { src: 'plugin/math/math.js', async: true }
            ]
        });
&lt;/script&gt;
&lt;/body&gt;

</t>
<t tx="leo.20180902120523.7">&lt;div class="reveal"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20180902120523.8">&lt;!-- Any section element inside of this container is displayed as a slide --&gt;
&lt;div class="slides"&gt;
@others
&lt;/div&gt;

</t>
<t tx="leo.20180902120523.9">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20180902120538.1"></t>
<t tx="leo.20180902120538.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20180902120538.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20191107030339.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20191107030339.2">## W1~W5

* 倉儲建立-網站架設

* [完成Solvespace編譯](https://www.youtube.com/watch?v=OzwHi9AaUxw&amp;t=201s)

* [完成Solvespace基礎操作練習](https://s40723147.github.io/cad2019/content/Solvespace%20%E6%93%8D%E4%BD%9C.html)





</t>
<t tx="leo.20191107031108.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20191107031108.2">## W6 V-rep運用

* [參數化零組件繪製](https://www.youtube.com/watch?v=gidMeVVjt4k)

* [網際 V-rep 模型控制](https://www.youtube.com/watch?v=ORZKN_ylB7k&amp;t=56s)

* [新增啟動與停止按鈕](&lt;iframe src="https://www.youtube.com/watch?v=PouH7zJ9CCs&amp;t=122s" width="500" height="340" 
)
#### 連結對應影片



</t>
<t tx="leo.20191107032218.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20191107032218.2">## W7 編譯solvespace 範例練習

* [編譯solvespace新增add who compiled](https://www.youtube.com/watch?v=oY57UNLn5FI)

* [繪圖認證範例一](https://www.youtube.com/watch?v=cRKKRkRkNlI&amp;t=70s)

* [繪圖認證範例二](https://www.youtube.com/watch?v=8Hdx4pcZ5Ac)

* [繪圖認證範例三](https://www.youtube.com/watch?v=eIcolUgQc4Q&amp;t=91s)

#### [對應網站](https://s40723147.github.io/cad2019/content/%E7%B9%AA%E5%9C%96%E8%AA%8D%E8%AD%89%E7%AF%84%E4%BE%8B.html)



</t>
<t tx="leo.20191107033131.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20191107033131.2">## W8 新增SSH key webot

* 下載可攜版

* 操作webot

* 新增shh key





</t>
<t tx="leo.20200109170517.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20200109170517.2">## W10~W14
* 不同軟體的[零組件繪製](https://s40723147.github.io/cad2019/content/%E9%9B%B6%E7%B5%84%E4%BB%B6%E7%B9%AA%E8%A3%BD.html)
* 運用[【NX12】](https://www.youtube.com/channel/UCCsh_1xCiVRhiKTEWxbyVyg?feature=emb_subscribe_title)  [【Inventor2019】](https://www.youtube.com/watch?v=nb9pVtYPVsk)
#### 【[Solvespace](https://s40723147.github.io/cad2019/content/%E7%B9%AA%E5%9C%96%E8%AA%8D%E8%AD%89%E7%AF%84%E4%BE%8B.html) 】 繪製零組件

* [【NX12】教材閱讀 操作](https://s40723147.github.io/cad2019/content/NX%2012.html)
#### [重點整理](https://s40723147.github.io/cad2019ag4/reveal/index.html#/3)</t>
<t tx="leo.20200109172158.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20200109172158.2">## W15歷程檢驗
* 經由 [github倉儲](https://github.com/s40723147/cad2019) 的 [commits](https://github.com/s40723147/cad2019/commits/master) 依據驗收
* 編輯影片、上字幕
#### &lt;iframe src="https://player.vimeo.com/video/383711015" width="640" height="492" frameborder="0" allow="autoplay; fullscreen" allowfullscreen&gt;&lt;/iframe&gt;
</t>
<t tx="leo.20200109173456.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20200109173456.2">## W16歷程檢驗
* 利用 Solvespace 完成[簡化越野車](https://cad.onshape.com/documents/0c757e42f113318abade702c/w/83a3818a1aef5d4234265d9c/e/0284daee1c8866acdbcf0b9d) 零組件設計繪圖.
* 以 STL 格式轉出後, 轉入 V-rep
* 以WRL格式轉出後, 轉入 Webots    【 [對應網站](https://s40723147.github.io/cad2019/content/W17.html)】
####  &lt;iframe src="https://player.vimeo.com/video/383712693" width="640" height="347" frameborder="0" allow="autoplay; fullscreen" allowfullscreen&gt;&lt;/iframe&gt;</t>
<t tx="leo.20200109174618.1">&lt;section data-markdown&gt;
    &lt;script type="text/template"&gt;
@others
    &lt;/script&gt;
&lt;/section&gt;


						
</t>
<t tx="leo.20200109174618.2">## W17歷程檢驗
* 協同任務:協同翻譯兩份教學內容
#### 【[對應網站](https://s40723147.github.io/cad2019/content/W17.html )】【[分組](https://s40723147.github.io/cad2019ag4/content/W17%20%E5%8D%94%E5%90%8C%E4%BB%BB%E5%8B%99.html)】
* 利用 Solvespace 或 NX12 將主連桿改為機械阻尼，各零件的尺寸標示工程圖、零件材料表轉入V-rep  
&lt;iframe src="https://player.vimeo.com/video/383715348" width="550" height="450" frameborder="0" allow="autoplay; fullscreen" allowfullscreen&gt;&lt;/iframe&gt;    </t>
</tnodes>
</leo_file>
