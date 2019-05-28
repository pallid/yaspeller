#Использовать "../src"
#Использовать asserts

Перем ЮнитТест;
Перем ТокенАвторизации;
Перем МассивВременныхФайлов;
Перем РаботаетПоискФайлов;

Функция ПолучитьСписокТестов(Знач Тестирование) Экспорт
	
	ЮнитТест = Тестирование;	
	
	ИменаТестов = Новый Массив;
	ИменаТестов.Добавить("ТестДолжен_ПроверитьФорматТекстБезРазметки");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьФорматHTMLТекст");
	
	Возврат ИменаТестов;
	
КонецФункции // ПолучитьСписокТестов()

Процедура ПередЗапускомТеста() Экспорт
	
	
КонецПроцедуры // ПередЗапускомТеста()

Процедура ПослеЗапускаТеста() Экспорт
	
	
КонецПроцедуры // ПослеЗапускаТеста()

Процедура ТестДолжен_ПроверитьФорматТекстБезРазметки() Экспорт
	
	Результат = FormatYaspeller.ТекстБезРазметки;
	Эталон = "plain";
	Утверждения.Проверить(Результат = Эталон, "Ошибка проверки типа возвращаемых данных ТекстБезРазметки");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьФорматHTMLТекст() Экспорт
	
	Результат = FormatYaspeller.HTMLТекст;
	Эталон = "html";
	Утверждения.Проверить(Результат = Эталон, "Ошибка проверки типа возвращаемых данных HTMLТекст");
	
КонецПроцедуры
