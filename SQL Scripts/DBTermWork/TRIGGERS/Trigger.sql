--Триггер (PreventDropTable) предотвращает удаление таблиц из БД:

CREATE TRIGGER PreventDropTable
ON DATABASE FOR DROP_TABLE
AS
	RAISERROR(N'Попытка удаления таблицы', 10, 1);
	ROLLBACK;