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
3\. Поиск при неправильной раскладке клавиатуры\.

| Пример | Поисковый запрос | Результат |
| ------ | ---------------- | --------- |
| 1 | арматура мотки | арматура мотки |
| 2 | fhvfnehf | арматура |

#mdstop

Дано я перехожу на страницу "Главная"
Когда я ввожу "<Поисковый запрос>" в поле "Поле поиска"
Тогда есть текст "<Результат>"

Примеры:
| Название примера |Поисковый запрос |Результат|
| положительный    |  арматура мотки |арматура 10 мотки|
| раскладка        |fhvfnehf         |арматура|