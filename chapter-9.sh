ls

echo this is a pen > temp

cat temp

cp temp temp2

rm temp

# mv 対象 ファイル名orディレクトリ名 名前の変更または、ディレクトリの移動ができる
mv temp2 temp

rm temp

pwd

ls

mkdir test

mv test test2

ls

cd ./test2

pwd

cd ..

rmdir test2

# lオプションが属性を表示、 aが隠しファイル含めて表示
ls -la


chmod 777  chapter-9.sh 

ls -la

chmod 644 chapter-9.sh

