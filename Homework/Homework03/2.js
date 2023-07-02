// 2. Необходимо создать html-страницу с названием 2.html, в которой подключить файл 2.js (его тоже необходимо создать рядом с html-файлом). В js-файле необходимо создать следующий скрипт:
// Cоздать функцию greeting, которая принимает в качестве аргумента имя человека и выводит приветствие, используя переданное ей имя, в консоль.
// Необходимо у пользователя запросить имя и вызвать функцию greeting, передав туда полученное от пользователя значение.

const nameUser = (prompt("Введите ваше имя: "));
let now = new Date();

greeting(nameUser);

function greeting(name) {
  let now = new Date();
  let hour = now.getHours();

  if (hour >= 4 && hour <= 11) console.log(`Доброе утро, ${name}!`);
  else if (hour >= 12 && hour <= 16) console.log(`Добрый день, ${name}!`);
  else if (hour >= 17 && hour <= 23) console.log(`Добрый вечер, ${name}!`);
  else console.log(`Доброй ночи, ${name}!`);
}