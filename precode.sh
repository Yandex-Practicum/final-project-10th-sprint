#!/bin/bash
mkdir -p task/{dir1,dir2,dir3/dir4}
cd task
touch dir2/empty
echo -e '#!/bin/bash\necho "$1, привет!"' > dir2/hello.sh
chmod a+r dir2/hello.sh
chmod ug+w dir2/hello.sh
chmod u+x dir2/hello.sh
ls dir2 > dir2/list.txt
cp -a dir2/. dir3/dir4
find -type f -name \*.txt > dir1/summary.txt
cat dir2/list.txt >> dir1/summary.txt 
export NAME="Всем студентам"
./dir2/hello.sh "$NAME" >> dir1/summary.txt
mv dir1/summary.txt 'Практическое задание'
cat 'Практическое задание'
grep "dir" 'Практическое задание' | sort
cd ..
rm -r task
