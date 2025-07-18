#!/bin/bash

# Создаем структуру каталогов
mkdir -p task/dir1 task/dir2 task/dir3/dir4

# Переходим в каталог task
cd task || exit

# 1. Создаем пустой файл empty в dir2
touch dir2/empty

# 2. Создаем hello.sh с нужным содержимым
{
    echo '#!/bin/bash'
    echo 'echo "$1, привет!"'
} > dir2/hello.sh

# 3. Устанавливаем права rwxrw-r-- (764)
chmod 764 dir2/hello.sh

# 4. Сохраняем список файлов dir2 в list.txt
ls dir2 > dir2/list.txt

# 5. Копируем содержимое dir2 в dir3/dir4
cp -r dir2/* dir3/dir4/

# 6. Записываем список всех .txt файлов в summary.txt
find . -name "*.txt" > dir1/summary.txt

# 7. Добавляем содержимое list.txt в summary.txt
cat dir2/list.txt >> dir1/summary.txt

# 8. Устанавливаем переменную окружения
export NAME="Всем студентам"

# 9. Запускаем hello.sh с аргументом и дописываем вывод
./dir2/hello.sh "$NAME" >> dir1/summary.txt

# 10. Переименовываем summary.txt
mv dir1/summary.txt "Практическое задание"

# 11. Выводим содержимое файла
cat "Практическое задание"

# 12. Ищем строки с "dir" и сортируем
grep "dir" "Практическое задание" | sort

# Возвращаемся в исходную директорию
cd ..

# Удаляем каталог task (для реального использования нужно раскомментировать)
# rm -rf task
