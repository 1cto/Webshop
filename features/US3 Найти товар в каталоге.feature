# encoding: utf-8
# language: ru
#parent ua:
@UA2_Найти_товар
#parent uf:
@UF2_Заказать_товар

#type:us
Функция: US3 Поисковые подсказки
Я как Покупатель ввожу хочу видеть посковые подсказки, чтобы найти товар и купить его


@desktop @checkushka @production @skiptestmode
Структура сценария:  US3 Поисковые подсказки
1\. Поиск по названию товара
2\. Поиск по артикулу товара
3\. Поиск при неправильной раскладке клавиатуры\.

| Пример | Поисковый запрос | Результат |
| ------ | ---------------- | --------- |
| 1 | арматура мотки | арматура 10(мотки) |
| 2 | fhvfnehf | арматура 10 |
| 3 | бумага | К сожалению, на ваш поисковый запрос ничего не найдено. |
#mdstop

Дано я перехожу на страницу "Главная"
Когда я ввожу "<Поисковый запрос>" в поле "Поле поиска"
Тогда есть текст "<Результат>"

Примеры:
| Название примера |Поисковый запрос |Результат|
| положительный    |  арматура мотки |арматура 10 мотки|
| отрицательный    |бумага           |К сожалению, на ваш поисковый запрос ничего не найдено.|
| раскладка        |fhvfnehf         |арматура 10|


