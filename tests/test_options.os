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
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиСумма2");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиСумма6");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиСумма14");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьНастройкиСумма526");
	
	Возврат ИменаТестов;
	
КонецФункции // ПолучитьСписокТестов()

Процедура ПередЗапускомТеста() Экспорт
	
	
КонецПроцедуры // ПередЗапускомТеста()

Процедура ПослеЗапускаТеста() Экспорт
	
	
КонецПроцедуры // ПослеЗапускаТеста()

Процедура ТестДолжен_ПроверитьНастройкиПоУмолчанию() Экспорт
	
	Настройки = Новый OptionsYaspeller;

	Утверждения.Проверить(Настройки.ПропускатьCловаСЦифрами = Ложь, "Ошибка проверки значения ПропускатьCловаСЦифрами");
	Утверждения.Проверить(Настройки.ПропускатьИнтернетАдреса = Ложь, "Ошибка проверки значения ПропускатьИнтернетАдреса");
	Утверждения.Проверить(Настройки.ПодсвечиватьПовторыСлов = Ложь, "Ошибка проверки значения ПодсвечиватьПовторыСлов");
	Утверждения.Проверить(Настройки.ИгнорироватьНеверноеУпотреблениеБукв = Ложь, "Ошибка проверки значения ИгнорироватьНеверноеУпотреблениеБукв");

	Утверждения.Проверить(Настройки.СуммаОпций() = 0, "Ошибка проверки результата значения метода СуммаОпций()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиВсеЛожь() Экспорт
	
	Настройки = Новый OptionsYaspeller(Ложь, Ложь, Ложь, Ложь);

	Утверждения.Проверить(Настройки.ПропускатьCловаСЦифрами = Ложь, "Ошибка проверки значения ПропускатьCловаСЦифрами");
	Утверждения.Проверить(Настройки.ПропускатьИнтернетАдреса = Ложь, "Ошибка проверки значения ПропускатьИнтернетАдреса");
	Утверждения.Проверить(Настройки.ПодсвечиватьПовторыСлов = Ложь, "Ошибка проверки значения ПодсвечиватьПовторыСлов");
	Утверждения.Проверить(Настройки.ИгнорироватьНеверноеУпотреблениеБукв = Ложь, "Ошибка проверки значения ИгнорироватьНеверноеУпотреблениеБукв");

	Утверждения.Проверить(Настройки.СуммаОпций() = 0, "Ошибка проверки результата значения метода СуммаОпций()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиСумма2() Экспорт
	
	Настройки = Новый OptionsYaspeller(Истина);

	Утверждения.Проверить(Настройки.ПропускатьCловаСЦифрами = Истина, "Ошибка проверки значения ПропускатьCловаСЦифрами");
	Утверждения.Проверить(Настройки.ПропускатьИнтернетАдреса = Ложь, "Ошибка проверки значения ПропускатьИнтернетАдреса");
	Утверждения.Проверить(Настройки.ПодсвечиватьПовторыСлов = Ложь, "Ошибка проверки значения ПодсвечиватьПовторыСлов");
	Утверждения.Проверить(Настройки.ИгнорироватьНеверноеУпотреблениеБукв = Ложь, "Ошибка проверки значения ИгнорироватьНеверноеУпотреблениеБукв");

	Утверждения.Проверить(Настройки.СуммаОпций() = 2, "Ошибка проверки результата значения метода СуммаОпций()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиСумма6() Экспорт
	
	Настройки = Новый OptionsYaspeller(Истина, Истина);

	Утверждения.Проверить(Настройки.ПропускатьCловаСЦифрами = Истина, "Ошибка проверки значения ПропускатьCловаСЦифрами");
	Утверждения.Проверить(Настройки.ПропускатьИнтернетАдреса = Истина, "Ошибка проверки значения ПропускатьИнтернетАдреса");
	Утверждения.Проверить(Настройки.ПодсвечиватьПовторыСлов = Ложь, "Ошибка проверки значения ПодсвечиватьПовторыСлов");
	Утверждения.Проверить(Настройки.ИгнорироватьНеверноеУпотреблениеБукв = Ложь, "Ошибка проверки значения ИгнорироватьНеверноеУпотреблениеБукв");

	Утверждения.Проверить(Настройки.СуммаОпций() = 6, "Ошибка проверки результата значения метода СуммаОпций()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиСумма14() Экспорт
	
	Настройки = Новый OptionsYaspeller(Истина, Истина, Истина);

	Утверждения.Проверить(Настройки.ПропускатьCловаСЦифрами = Истина, "Ошибка проверки значения ПропускатьCловаСЦифрами");
	Утверждения.Проверить(Настройки.ПропускатьИнтернетАдреса = Истина, "Ошибка проверки значения ПропускатьИнтернетАдреса");
	Утверждения.Проверить(Настройки.ПодсвечиватьПовторыСлов = Истина, "Ошибка проверки значения ПодсвечиватьПовторыСлов");
	Утверждения.Проверить(Настройки.ИгнорироватьНеверноеУпотреблениеБукв = Ложь, "Ошибка проверки значения ИгнорироватьНеверноеУпотреблениеБукв");

	Утверждения.Проверить(Настройки.СуммаОпций() = 14, "Ошибка проверки результата значения метода СуммаОпций()");
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНастройкиСумма526() Экспорт
	
	Настройки = Новый OptionsYaspeller(Истина, Истина, Истина, Истина);

	Утверждения.Проверить(Настройки.ПропускатьCловаСЦифрами = Истина, "Ошибка проверки значения ПропускатьCловаСЦифрами");
	Утверждения.Проверить(Настройки.ПропускатьИнтернетАдреса = Истина, "Ошибка проверки значения ПропускатьИнтернетАдреса");
	Утверждения.Проверить(Настройки.ПодсвечиватьПовторыСлов = Истина, "Ошибка проверки значения ПодсвечиватьПовторыСлов");
	Утверждения.Проверить(Настройки.ИгнорироватьНеверноеУпотреблениеБукв = Истина, "Ошибка проверки значения ИгнорироватьНеверноеУпотреблениеБукв");

	Утверждения.Проверить(Настройки.СуммаОпций() = 526, "Ошибка проверки результата значения метода СуммаОпций()");
	
КонецПроцедуры