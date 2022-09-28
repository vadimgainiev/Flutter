# Практическая работа №1

## Создание макетов во фреймворке Flutter

### Цель работы: перенести макеты из Figma во Flutter
### Ход работы:

Первым делом для создания макетов импортируем из Figma изображения, используемые на виджетах. Для этого, во-первых, исходным макет с правом только на просмотр нужно копировать в свои проекты Figma. Далее выделяем все элементы изображения и объединяем их в одну сцену сочетанием клавиш Ctrl+Alt+G. Нажимаем "Export".

![image](https://user-images.githubusercontent.com/98583202/192750554-b0169ca0-48ce-4fd5-a294-461c921039e7.png)
![image](https://user-images.githubusercontent.com/98583202/192751097-6da65d31-872f-4fa8-908b-487014d48d05.png)

На всех макетах в Figma используется семейство щрифтов 'Plus Jakarta Sans'. Шрифт Google, который можно бесплатно скачать с официального сайта. Создаём новый проект Flutter, в него добавляем папки assets для изображений и fonts для шрифтов.

![image](https://user-images.githubusercontent.com/98583202/192751851-4ec3279f-222c-4c2d-8be0-3214c68c9df1.png)

Теперь чтобы использовать добавленные ассеты, нужно перейти в файл конфигурации pubspec.yaml и прописать ссылку на папку assets и пользовтельское семейство шрифтов 'Plus Jakarta Sans'.

![image](https://user-images.githubusercontent.com/98583202/192753128-ee129762-1513-4e87-850d-7648f2c9b4a0.png)

В файле main.dart, откуда и запускается программа, добавил виджет домашней страницы для удобного просмотра макетов и навигации между ними.

Сама страница выглядит следующим образом:
![photo_2022-09-28_08-20-43](https://user-images.githubusercontent.com/98583202/192754560-f32b9bb7-08df-4ecc-bb4d-ce628c93a783.jpg)

Навигация реализована через маршруты Navigator. Navigator – это виджет-класс, позволяющий управлять стеком дочерних виджетов, то есть открывать, закрывать и переключать окна или страницы. Когда мы используем MaterialApp, то экземпляр класса Navigator уже создан, и его не надо объявлять с помощью слова new.

Указываем initialRoute: '/', то есть маршрут, который будет выведен на экран по умолчанию. Таким образом, будет выведен виджет в main.dart. 
Затем определяем массив routes, где указываем маршрут к макету и соответствующий виджет для вывода. Вернуться на домашнюю страницу со страницы виджета можно кнопкой "Назад" на любом смартфоне.
![image](https://user-images.githubusercontent.com/98583202/192757278-950214ff-9caa-476f-974a-7df811a75c42.png)

Обработчик нажатия кнопки для навигации реализован следующим образом:
![image](https://user-images.githubusercontent.com/98583202/192757547-26b3b69f-6736-4ba4-ad73-e682c6492e9b.png)

Обращаемся к классу Naigator, вызывем метод pushNamed и передаём в него параметры: context - описывает часть интерфейса, представленную данным виджетом, и маршрут. То есть pushNamed() добавляет в стек маршрутов именованный маршрут с заданным контекстом в виде виджета. 

Первый виджет на экране моего смартфона Redmi 8 выглядит следующим образом:
![photo_2022-09-28_08-21-05](https://user-images.githubusercontent.com/98583202/192760879-74b7ef2e-4858-467c-a982-5d3e331bb90f.jpg)

Шаблон для проигрываемой сессии вынесен в класс с параметрами title (наименование), iconColor (цвет фона иконки Play) и date (дата выхода/раннего доступа).
Список проигрываемых сессий на основе класса Session можно заполнять всё новыми и новыми экземплярами класса бесконечно. Например:
![photo_2022-09-28_14-03-33](https://user-images.githubusercontent.com/98583202/192763489-a79950c2-6a56-4aee-8d0c-14a279c15c9c.jpg)

Второй виджет выглядит следующим образом: 
![photo_2022-09-28_08-21-17](https://user-images.githubusercontent.com/98583202/192763809-06fcaa35-ef59-46a7-870b-af63a945b445.jpg)
![photo_2022-09-28_08-21-21](https://user-images.githubusercontent.com/98583202/192763835-efa35550-8336-42d9-8185-392a5d860d0d.jpg)

Здесь прокручиваемый горизонтальный ряд, содержащий жанры сессий, и таблица с предлагаемыми сессиями также реализованы через класс с шаблоном и списком экземпляров класса с изменяемыми параметрами. 

Последний макет: 
![photo_2022-09-28_08-21-24](https://user-images.githubusercontent.com/98583202/192763909-f5694f6c-5729-4af2-90a8-16c59993ea6d.jpg)

### Вывод: за время выполнения практической работы были получены навыки работы с конетйнерами и встроенными виджетами фреймворка Flutter для создания дизайна приложения.
