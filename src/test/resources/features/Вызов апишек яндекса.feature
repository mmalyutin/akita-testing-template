#language:ru

Функционал: Вызов api яндекс переводчика

  Сценарий: Вызываем api яндекс переводчика и перевод hello world!

    Когда выполнен POST запрос на URL "https://translate.yandex.net/api/v1.5/tr.json/translate" с headers и parameters из таблицы. Полученный ответ сохранен в переменную "responseBody"
      |type      |name           |value                                                                                |
      |header    |Content-Type   |application/x-www-form-urlencoded                                                    |
      |header    |Accept         |*/*                                                                                  |
      |parameter |key            |INSERT YOUR YANDEX TRANSLATE TOKEN HERE!                                             |
      |parameter |text           |Hello World!                                                                         |
      |parameter |lang           |en-ru                                                                                |
      |parameter |format         |plain                                                                                |
      |parameter |options        |1                                                                                    |
    Тогда в json строке "responseBody" значения, найденные по jsonpath, равны значениям из таблицы
      |text|["Всем Привет!"]|