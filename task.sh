#!/bin/bash
mkdir -p task/dir{1,2,3/dir4}
cd task || exit
touch dir2/empty
echo -e '#!/bin/bash\necho "$1, привет!"' > dir2/hello.sh
chmod 764 dir2/hello.sh
ls dir2 > dir2/list.txt
cp -r dir2/* dir3/dir4/
find . -name "*.txt" > dir1/summary.txt
cat dir2/list.txt >> dir1/summary.txt
NAME="Всем студентам" ./dir2/hello.sh "$NAME" >> dir1/summary.txt
mv dir1/summary.txt "Практическое задание"
cat "Практическое задание"
grep "dir" "Практическое задание" | sort
cd ..
