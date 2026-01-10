#!/bin/bash

# 1. Создаём структуру директорий
mkdir -p task/dir1 task/dir2 task/dir3/dir4
cd task

# 2. Создаём файлы
touch dir2/empty
echo '#!/bin/bash' > dir2/hello.sh
echo 'echo "$1, привет!"' >> dir2/hello.sh
chmod 764 dir2/hello.sh

# 3. Формируем список файлов (имена)
ls dir2 > dir2/list.txt

# 4. Копируем содержимое
cp -r dir2/. dir3/dir4/

# 5. Находим все .txt файлы и сохраняем ПУТИ к ним
find . -name "*.txt" > dir1/summary.txt

# --- ВЫВОД В КОНСОЛЬ (согласно твоему заданию) ---

# Вывод путей (блок 1)
cat dir1/summary.txt

# Вывод имен файлов из dir2 (блок 2)
cat dir2/list.txt

# Приветствие
./dir2/hello.sh "Всем студентам"

# Вывод путей еще раз (блок 3)
# Примечание: судя по твоему списку, в конце снова должны быть пути
cat dir1/summary.txt

# Уборка
cd ..
rm -rf task
