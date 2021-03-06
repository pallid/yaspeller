#Использовать "../src"
#Использовать asserts

Перем ЮнитТест;
Перем ТокенАвторизации;
Перем МассивВременныхФайлов;
Перем РаботаетПоискФайлов;

Функция ПолучитьСписокТестов(Знач Тестирование) Экспорт
	
	ЮнитТест = Тестирование;	
	
	ИменаТестов = Новый Массив;
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиПоУмолчанию");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиВсеЛожь");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиRU");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиUK");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиEN");
	
	Возврат ИменаТестов;
	
КонецФункции // ПолучитьСписокТестов()

Процедура ПередЗапускомТеста() Экспорт
	
	
КонецПроцедуры // ПередЗапускомТеста()

Процедура ПослеЗапускаТеста() Экспорт
	
	
КонецПроцедуры // ПослеЗапускаТеста()

Процедура ТестДолжен_ПроверитьНастройкиПоУмолчанию() Экспорт
	
	Языки = Новый LanguageYaspeller;

	Утверждения.Проверить(Языки.Русский = Истина, "Ошибка проверки значения Русский");
	Утверждения.Проверить(Языки.Украинский = Ложь, "Ошибка проверки значения Украинский");
	Утверждения.Проверить(Языки.Английский = Истина, "Ошибка проверки значения Английский");

	Утверждения.Проверить(Языки.ПолучитьНастройки() = "ru,en", "Ошибка проверки результата значения метода ПолучитьНастройки()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиВсеЛожь() Экспорт
	
	Языки = Новый LanguageYaspeller(Ложь,Ложь,Ложь);

	Утверждения.Проверить(Языки.Русский = Ложь, "Ошибка проверки значения Русский");
	Утверждения.Проверить(Языки.Украинский = Ложь, "Ошибка проверки значения Украинский");
	Утверждения.Проверить(Языки.Английский = Ложь, "Ошибка проверки значения Английский");

	Утверждения.Проверить(Языки.ПолучитьНастройки() = "", "Ошибка проверки результата значения метода ПолучитьНастройки()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиRU() Экспорт
	
	Языки = Новый LanguageYaspeller(Истина,Ложь,Ложь);

	Утверждения.Проверить(Языки.Русский = Истина, "Ошибка проверки значения Русский");
	Утверждения.Проверить(Языки.Украинский = Ложь, "Ошибка проверки значения Украинский");
	Утверждения.Проверить(Языки.Английский = Ложь, "Ошибка проверки значения Английский");

	Утверждения.Проверить(Языки.ПолучитьНастройки() = "ru", "Ошибка проверки результата значения метода ПолучитьНастройки()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиUK() Экспорт
	
	Языки = Новый LanguageYaspeller(Ложь,Истина,Ложь);

	Утверждения.Проверить(Языки.Русский = Ложь, "Ошибка проверки значения Русский");
	Утверждения.Проверить(Языки.Украинский = Истина, "Ошибка проверки значения Украинский");
	Утверждения.Проверить(Языки.Английский = Ложь, "Ошибка проверки значения Английский");

	Утверждения.Проверить(Языки.ПолучитьНастройки() = "uk", "Ошибка проверки результата значения метода ПолучитьНастройки()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиEN() Экспорт
	
	Языки = Новый LanguageYaspeller(Ложь,Ложь,Истина);

	Утверждения.Проверить(Языки.Русский = Ложь, "Ошибка проверки значения Русский");
	Утверждения.Проверить(Языки.Украинский = Ложь, "Ошибка проверки значения Украинский");
	Утверждения.Проверить(Языки.Английский = Истина, "Ошибка проверки значения Английский");

	Утверждения.Проверить(Языки.ПолучитьНастройки() = "en", "Ошибка проверки результата значения метода ПолучитьНастройки()");
	
КонецПроцедуры
