var tipuesearch = {"pages": [{'title': 'About', 'text': '此內容管理系統以\xa0 https://github.com/mdecourse/cmsimde \xa0作為 submodule 運作, 可以選定對應的版本運作, cmsimde 可以持續改版, 不會影響之前設為 submodule, 使用舊版 cmsimde 模組的內容管理相關運作. \n 利用 cmsimde 建立靜態網誌方法: \n 1. 在 github 建立倉儲, git clone 到近端 \n 2. 參考\xa0 https://github.com/mdecourse/newcms , 加入除了 cmsimde 目錄外的所有內容 \n 以 git submodule add\xa0 https://github.com/mdecourse/cmsimde \xa0cmsimde \n 建立 cmsimde 目錄, 並從 github 取下子模組內容. \n 3.在近端維護時, 更換目錄到倉儲中的 cmsimde, 以 python wsgi.py 啟動近端網際伺服器. \n 動態內容編輯完成後, 以 generate_pages 轉為靜態內容, 以 git add commit 及 push 將內容推到遠端. \n 4. 之後若要以 git clone 取下包含 submodule 的所有內容, 執行: \n git clone --recurse-submodules  https://github.com/mdecourse/newcms.git \n', 'tags': '', 'url': 'About.html'}, {'title': 'Develop', 'text': 'https://github.com/mdecourse/cmsimde \xa0的開發, 可以在一個目錄中放入 cmsimde, 然後將 up_dir 中的內容放到與 cmsimde 目錄同位階的地方, 使用 command 進入 cmsimde 目錄, 執行 python wsgi.py, 就可以啟動, 以瀏覽器 https://localhost:9443\xa0就可以連接, 以 admin 作為管理者密碼, 就可以登入維護內容. \n cmsimde 的開發採用 Leo Editor, 開啟 cmsimde 目錄中的 cmsimde.leo 就可以進行程式修改, 結束後, 若要保留網際內容, 只要將 cmsimde 外部的內容倒回 up_dir 目錄中即可後續對 cmsimde 遠端倉儲進行改版. \n init.py 位於\xa0 up_dir 目錄, 可以設定 site_title 與 uwsgi 等變數. \n', 'tags': '', 'url': 'Develop.html'}, {'title': 'Tasks', 'text': '', 'tags': '', 'url': 'Tasks.html'}, {'title': 'Task1', 'text': '1.在可攜系統中，添加Solvespace \xa0完成編譯‧ \n 2.在 Solvespace \xa0中進行繪圖實習並了解其中的關西‧ \n 3.建立零組件完成組配進行分析‧ \n', 'tags': '', 'url': 'Task1.html'}, {'title': 'Solvespace 編譯', 'text': '編譯步驟: \n 先將 Y:\\portablegit\\bin\\sh.exe 改名為 sh_rename_for_solvespace.exe (透過 MSYS2 執行 shell 指令, 而非 portablegit 中的 sh.exe) \n git version 查驗 git 版本 \n git 2.13 版本以上, 可以使用下列 git clone \xa0 --recurse-submodules 取得所有子模組資料 \n git clone --recurse-submodules https://github.com/solvespace/solvespace.git solvespace \n 上述指令同: \n git clone\xa0 https://github.com/solvespace/solvespace.git \xa0 \n cd solvespace \n git submodule init \n git submodule update \n edit Y:\\tmp\\solvespace\\extlib\\angle\\CMakeLists.txt comment out line 713 and 714 \n #list(APPEND ANGLE_DEFINITIONS #"-DANGLE_PRELOADED_D3DCOMPILER_MODULE_NAMES={ \\"d3dcompiler_47.dll\\", \\"d3dcompiler_46.dll\\", \\"d3dcompiler_43.dll\\" }") endif() \n 接著需要手動進行 libpng.dll.a 的編譯, 並改名為 libpng_static.a, 並放到編譯系統的 lib 目錄中 (即隨身系統的 msys64\\mingw64\\lib 目錄): \n cd solvespace \n cd extlib \n cd libpng \n mkdir build \n cd build \n cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release mingw32-make \n (mingw32-make -Wl,-static) \n rename libpng.dll.a to libpng_static.a and copy to Y:\\msys64\\mingw64\\lib \n 接著回到 solvespace 原始碼目錄, 建立 build 目錄後進入 build 目錄, 執行: \n cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release mingw32-make \n 操作影片: \n \n 對 About 新增學號ˇ \n \n 參考資料: \n https://2019wcm.blogspot.com/2019/03/msys2-solvespace.html \n https://github.com/solvespace/solvespace \n', 'tags': '', 'url': 'Solvespace 編譯.html'}, {'title': 'Solvespace 操作', 'text': 'Solvespace常用指令對照表 \n \n \n \n Solvespace Tutorial 1 - a Simple Plate \n \n Solvespace Tutorial 2 - Three-Way Connector \n \n Solvespace Tutorial 3 - Sketch Rotation around an Axis \n \n Solvespace Tutorial 4 - Assembly \n \n Solvespace Tutorial 9: a Simple Gear \n \n Solvespace Tutorial 11: Cubic Bezier Spline tool (Vase) \n \n', 'tags': '', 'url': 'Solvespace 操作.html'}, {'title': 'Task1進階', 'text': 'Task1 所需完成事項如下: \n \n 利用 Solvespace 繪製雙輪車所需的零組件, 將操作過程拍成帶有說明字幕的影片後上傳至 Youtube 後, 嵌入個人網頁 W6 頁面中. (影片標題為: 機械設計工程系-電腦輔助設計實習 W6 任務一參數化零組件繪製). \n 利用 V-rep 3.6.1 rev4 與隨身程式執行系統, 完成網際 V-rep 模型控制任務後, 將操作過程拍成帶有說明字幕的影片後上傳至 Youtube 後, 嵌入個人網頁 W6 頁面中. (影片標題為: 機械設計工程系-電腦輔助設計實習 W6 任務一網際 V-rep 模型控制). \n 從 \xa0 #14 \xa0 已知可透過 Python 程式啟動或停止 V-rep 模擬, 請在事項 2 的架構下, 新增兩個按鈕, 可以啟動或停止所連線的 V-rep 模擬. 完成後將操作流程拍成帶字幕的影片後上傳至 Youtube 後, 嵌入個人網頁 W6 頁面中. (影片標題為: 機械設計工程系-電腦輔助設計實習 W6 任務一新增啟動與停止按鈕) \n \n', 'tags': '', 'url': 'Task1進階.html'}, {'title': '1.參數化零組件繪製', 'text': '利用  Solvespace  繪製雙輪車所需的零組件: \n (一) 繪製車架 \n \n 雙輪車 車架設計  1.需有輸出軸孔定位 \n \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0\xa0 2.設定車輪軸與地面高度 \n (二)繪製車輪 \n \n 雙輪車 車輪設計  1.需設定車輪大小胎寬 \n \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0\xa0 2.輪軸大小.長度 \n (三)零組件組配 \n \n 雙輪車 組配 完成組配 \n', 'tags': '', 'url': '1.參數化零組件繪製.html'}, {'title': '2.網際 V-rep 模型控制', 'text': '啟動app.py在網際上控制 v-rep內的模型控制: \n \n', 'tags': '', 'url': '2.網際 V-rep 模型控制.html'}, {'title': '3.新增啟動與停止按鈕', 'text': '在網際操作網頁上添加兩個按鈕 \n 並給予按鈕功能實習應用 \n \n', 'tags': '', 'url': '3.新增啟動與停止按鈕.html'}, {'title': '繪圖認證範例', 'text': 'http://mde.tw/cad2019/content/CAD2CAE.html 中挑選範例進行繪圖認證 \n CAD2CAE \n 範例1 \n \n 範例2 \n \n 範例3 \n \n', 'tags': '', 'url': '繪圖認證範例.html'}, {'title': 'w8', 'text': "webot  可攜版安裝並啟用 \n \n 必須將對應的啟動修改加入webot的啟動條件 \n \xa0在Y:新增start_webots.bat, 內容為: \n start Y:\\Webots_2019b_rev1\\msys64\\mingw64\\bin\\webots.exe \n 當隨身程式系統納入上述兩個條件並啟動後, 可以直接在命令列輸入 start_webots.bat 啟動. \n \n 新增blog \n 對blog進行資料更新改版使網頁上的blog能夠進行瀏覽 \n 1.首先透過Y:\xa0launchLeo啟動開啟leo編輯器進行內容更新 \n 2.開啟對應倉儲下config內的pelican檔案進行編修 \n 3.AUTHOR = '40723147'\xa0 \xa0 \xa0 \xa0 SITENAME = 'CAD2019_40723147' 更新作者標題 \n 4.blog的對應連結SITEURL = 'https://s40723147.github.io/cad2019/blog'進行設定 \n 5.@edit base.html內容更新最新版版可到老師的倉儲進行複製 \n 6.內容設計 \n \n \n 新增ssh key \n 參考影片: \n 1.在ipv4下的金鑰設定 \n \n", 'tags': '', 'url': 'w8.html'}, {'title': 'NX 零組件繪圖', 'text': 'CHAPTER 3 – TWO DIMENSIONAL SKETCHING \n 二維草圖\xa0 \n 二維草圖在NX12中用於創建實體特徵 \n 1. 繪製幾何體 --利用直線圓弧多邊形等構成草圖形狀 \n 2. 定義幾何關係 --給予水平垂直或者角度等相關約束條件限制圖形位置及大小 \n 2D草圖: \n \n Example\xa0 \xa03.6.1\xa0 Circular Base \n \n CHAPTER 4 –THREE DIMENSIONAL MODELING\xa0 \n 三維建模 \n NX12中包刮了下列的建模方式分為以下兩類 \n Swept Features include:\xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 長出功能包括\xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \n • Extruded Body\xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 擠出實體 • Revolved Body\xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 迴轉實體 • Sweep along Guide\xa0  \xa0 \xa0 \xa0 \xa0  掃掠 • Tube\xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0管 • Styled Sweep\xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0樣式掃描 \n Remove Features include:\xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0刪除功能包括\xa0 \xa0 \xa0 \xa0 \n • Hole\xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0 孔 • Pocket\xa0 \xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0口袋 • Slot\xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0 插槽 • Groove\xa0 \xa0 \xa0 \xa0  \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0  \xa0 凹槽 \n \n \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0Extruded Body\xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 Revolved Body \n \n \xa0  \xa0Styled Sweep\xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 Groove\xa0 \n \n \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0Hole \n CHAPTER 5 – DRAFTING \n 製圖 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 Author:\xa0 40723147 \xa0 \xa0 \xa0 \xa0 \xa0\xa0 \n 以描述物件的功能或結構的技術，是在世界範圍通用的「工程技術的語言」‧\xa0\xa0 \xa0\xa0 \n 工程製圖在工業和工程中對表達設計師的設想有著重要的作用。為了使圖紙便於溝通理解，人們採用了相似的符號、透視投影、單位、樣式和版面設計等。這些要素共同構成了一套視覺語言，使圖紙避免產生歧義，且相對容易理解。 \n 1.圖紙選用: \n \n 為常見的圖紙大小規格表 \n 2.單位選用: \n 分為英制公制單位供選擇 \n \n 常用尺寸對照表 \n 出自:( https://wenku.baidu.com/view/1468fa1ff90f76c660371aac.html ) \n 3.角法選用: \n 常用的角法為第一角法和第三角法表示法如下 \n \n 圖面範例 \n \n \n 可以藉由NX12建立工程圖，在工程界中進行溝通完成製造及設計‧ \n 完成建構實體-->工程圖繪製-->工程界的溝通方式 \n', 'tags': '', 'url': 'NX 零組件繪圖.html'}, {'title': 'Q&A', 'text': '這裡紀錄著40723147學員 \n 在進行Tasks時所發生的問題與解答‧ \n', 'tags': '', 'url': 'Q&A.html'}, {'title': 'T1', 'text': '(一) Solvespace \xa0 編譯過程中缺少檔案 \n 開啟Solvespace時出現缺少 libwinpthread-1.\xa0dll\xa0 檔案 \n \n 1.在E:\\solvespace\\build\\bin中檢查缺少的檔案 libwinpthread-1.\xa0dll\xa0 \n 2.從Y:\\tmp\\solvespace\\build\\bin中尋找 libwinpthread-1.\xa0dll\xa0 將其複製到 E:\\solvespace\\build\\bin中‧補足缺少的檔案‧ \n \n \n \n (二) Solvespace編譯過程中出現錯誤 \n 當我們執行 mingw32-make 指令時會出現錯誤如圖: \n \n 原因是未將E:\\cad\\201906_fall\\work\\solvespace\\extlib\\angle\\ \n CMakeLists.txt  檔案中的 713行 與 714行 開頭加上  #符號 \n (此路徑為待編譯solvespace中的對應路徑) \n (非原先在Y:\\tmp\\solvespace\\extlib\\angle中的 CMakeLists.txt\xa0 ) \n \n \n 圖中 713行 與 714行 並未再開頭加入\xa0 #符號 故出現此錯誤 \n \n \n 此圖 713行 與 714行 已加入  #符號 便可以繼續編譯~~~', 'tags': '', 'url': 'T1.html'}]};