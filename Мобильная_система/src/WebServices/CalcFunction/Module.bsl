Функция Десериализовать(XMLСтруктураСериализованногоОбъекта) 
	ЧтениеXMLДанных = Новый ЧтениеXML; 
	ЧтениеXMLДанных.УстановитьСтроку(XMLСтруктураСериализованногоОбъекта); 
	ТЗ = СериализаторXDTO.ПрочитатьXML(ЧтениеXMLДанных); 
	ЧтениеXMLДанных.Закрыть(); 
	Возврат ТЗ; 
КонецФункции

Функция ПолучитьСреднее(СтруктураДанных, СериализованнаяСтруктураДанных)
	Возврат "Хо-хо";
	Если ЗначениеЗаполнено(СтруктураДанных) Тогда 
		Структура = СтруктураДанных.Проверить(); 
	Иначе Структура = Десериализовать(СериализованнаяСтруктураДанных); 
	КонецЕсли; 
	Сумма = 0; 
	Для каждого ЭлМассива Из Структура.МассивЧисел Цикл 
		Сумма = Сумма + ЭлМассива; 
	КонецЦикла; 
	Возврат Сумма/Структура.КоличествоЭлементовВМассиве; 
КонецФункции
