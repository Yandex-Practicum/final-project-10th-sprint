#!/bin/bash

# создаём каталог task с вложенными директориями
mkdir -p task/dir{1,2,3/dir4}

# изменяем текущую директорию на task
cd task

# создаём пустой файл task/dir2/empty
touch dir2/empty

# создаём файл task/dir2/hello.sh
echo '#!/bin/bash
echo "$1, привет!"' > dir2/hello.sh

# устанавливаем права rwxrw-r--
chmod 764 dir2/hello.sh

# сохраняем список файлов dir2 в dir2/list.txt
ls dir2 > dir2/list.txt

# копируем содержимое dir2 в dir3/dir4
cp -r dir2/* dir3/dir4/

# ищем все .txt файлы в task и подкаталогах и пишем в dir1/summary.txt
find . -type f -name "*.txt" ! -path "./dir1/summary.txt" | sort > dir1/summary.txt
echo "./dir1/summary.txt" >> dir1/summary.txt

# дописываем в summary.txt содержимое list.txt
cat dir2/list.txt >> dir1/summary.txt

# определяем переменную NAME
export NAME="Всем студентам"

# запускаем hello.sh и дописываем вывод в summary.txt
./dir2/hello.sh "$NAME" >> dir1/summary.txt

# перемещаем summary.txt в родительскую директорию с новым именем
mv dir1/summary.txt ../"Практическое задание"

# выводим содержимое файла на экран
cat ../"Практическое задание"

# ищем строки с "dir" в файле и сортируем их
grep "dir" ../"Практическое задание" | sort

# переходим на уровень выше
cd ..

# удаляем каталог task
rm -rf task