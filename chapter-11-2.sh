<< コメントアウト
    # シェル変数と環境変数
    スコープの違い、シェル変数はローカルスコープ実行ファイル内のみ

    シェル変数では、配列、連想配列が許可
    環境変数では、許可されていない

    メタキャラを変数の値などで使いたい時はエスケープする
    \' \\ \$など


    # タブでファイル名補完機能あり

    # バックグラウンドジョブ
    フォアグラウンドジョブ コマンド実行時に、コマンド終了時までプロンプトを表示しないもの
    バックグラウンドジョブ　その反対 長い時間がかかる処理などで使う？
    コマンドの最後に & をつける

    # 順次実行
    ;までを実行して、temp1にlsの結果を反映
    temp1を標準mysql 力としてprを実行、temp2に書き込み
    ls > temp1 ; pr < temp1 > temp2
    rm temp1 temp2

    # グループ化なんてこともできる pr部分のみバックグラウンドジョブにする)
    ls > temp1 ; (pr < temp1 > temp2 &)

    # ディレクトリすたっく
    頻繁に移動する場合、cdはめんどい
    ディレクトリを登録する機能がある様子、macだとコマンドが異なるのか、ないのか実行できない


コメントアウト

# シェル変数　全表示
# set

# clear

# cshだと set $変数名=値
# bashだと 変数名=値 or declare 変数名=値
# オブションで型を指定できる
echo $TEST



declare -a TEST=( tess todayo dayo )
echo ${TEST[*]} # 配列すべて表示
echo ${#TEST[*]} # 配列の要素数

# 削除
unset TEST
echo ${TEST[*]}


# ファイル名置換
ls *
ls *[1]*
ls *[bh] # bかhが最後にあればマッチする
echo ~username

ls readme.??
ls readme.?

ls ../*/chapter-11.sh

# temp0 temp1 temp2 temp3 temp11 temp12 temp13のファイルがある時
temp* #の場合ファイルの並び順がtemp0 temp1 temp11 temp12 temp2 temp3
temp? temp?? # temp0 temp1 temp2 temp3 temp11 temp12という並び順にできる

# 終了ステータス && 左側が正常に終了すれば右の処理が行われる
touch readme2.md &&  cat readme2.md && rm readme2.md

# || 左側が以上終了した場合に、右側が実行される　
touch abc || rm abc
cat abcd || rm abc

& 
;
||
&&

# エイリアス
alias copy=cp
alias # エイリアス一覧
unalias copy

# コマンドの実行順
# 1 コマンドが/を含めば、パス名が指定されたものとしてそのプログラムを実行
# 2 commandの組み込み関数ならそれを実行
# 3 シェル変数$PATHから実行できるものがないか探し、あれば実行
# 4 なければ、command not foundを表示