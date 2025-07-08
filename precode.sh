#!/usr/bin/env bash

# создаём каталог task с вложенными директориями
mkdir -p task/dir1 task/dir2 task/dir3/dir4

# изменяем текущую директорию на task
cd task

# создаём пустой файл task/dir2/empty
touch dir2/empty

# создаём файл task/dir2/hello.sh с содержимым
echo -e '#!/bin/bash\necho "$1, привет!"' > dir2/hello.sh

# устанавливаем права rwxrw-r--
chmod 764 dir2/hello.sh

# сохраняем список файлов task/dir2 в task/dir2/list.txt
ls dir2 > dir2/list.txt

# копируем содержимое каталога task/dir2 в каталог task/dir3/dir4
cp -r dir2/* dir3/dir4

# создаём пустой файл summary.txt чтобы он попал в результаты поиска
touch dir1/summary.txt

# записываем в task/dir1/summary.txt список файлов *.txt
find ./dir2 ./dir3 ./dir1 -name "*.txt" > dir1/summary.txt

# дописываем в task/dir1/summary.txt содержимое task/dir2/list.txt
cat dir2/list.txt >> dir1/summary.txt

# определяем переменную окружения NAME
NAME="Всем студентам"

# запускаем task/dir2/hello.sh с аргументом NAME
./dir2/hello.sh "$NAME" >> dir1/summary.txt

# перемещаем task/dir1/summary.txt в task/Практическое задание
mv dir1/summary.txt "Практическое задание"

# выводим содержимое файла task/Практическое задание
cat "Практическое задание"

# ищем строки с "dir" и сортируем
grep "dir" "Практическое задание" | sort

# меняем текущую директорию на родительскую
cd ..

# удаляем директорию task
rm -r task