<< コメントアウト
    # シェル変数と環境変数
    スコープの違い、シェル変数はローカルスコープ実行ファイル内のみ

    シェル変数では、配列、連想配列が許可
    環境変数では、許可されていない

    メタキャラを変数の値などで使いたい時はエスケープする
    
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

