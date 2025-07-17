
mkdir -p dir1 dir2 dir3/dir4


touch dir1/summary.txt
touch dir2/list.txt
touch dir3/dir4/list.txt
touch empty.txt

cp dir2/list.txt dir1/
mv dir2/list.txt dir2/list_old.txt

echo '#!/bin/bash' > hello.sh
echo 'echo "Всем студентам, привет!"' >> hello.sh
chmod +x hello.sh

find . -name '*list*'
ls -l
cat hello.sh
find . -name '*.txt'

rm empty.txt
rm -rf dir3

