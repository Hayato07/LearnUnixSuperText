<< コメントアウト
    シェル　＝　コマンドインタプリタ（文字列として与えられるコマンドを解釈実行するもの
    カーネルの機能を使ってキーボードから文字を受け取ったり、プログラムを起動する

    シェルは自由に作成できるので、種類がある。csh とshが主なもの(bashやzshはどちらをもとに生まれているのだろう)

    ctrl+A 行頭へ
    ctrl+E 行末へ
    ctrl+F 右に移動
    
コメントアウト

# リダイレクション 
# > 実行結果の標準出力先を変更する(既存ファイルに上書き)
who > temp1
cat temp1

# 標準エラー出力も出力される
who >& temp1
# 標準出力をfile1に、標準エラー出力をfile2に出力
( cal > file1 ) >& file2

# >> 標準出力をファイルに追記する
who >> temp1
cat temp1
#　< 標準入力を変更するリダ入れクション
man man > temp2
more < temp2

# << endstr 文字列 endstr ヒアドキュメント文字列の部分を入力する
cat << EOF
$USER is using $SHELL
EOF

# こちらは変数でなく文字列扱い
cat << 'EOF'
$USER is using $SHELL
EOF



# パイプ
# | ファイルに保存せずに、左の出力を右のコマンド渡す
ls -la | grep temp1 | more

# |&　エラーも渡す
# command |& file3

pr temp1 > temp3
more temp3
rm temp1 temp2 temp3 file1 file2