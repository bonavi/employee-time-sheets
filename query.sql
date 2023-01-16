-- Дата начала отчета
DECLARE @tmpDate DATE = '2021-08-01'

-- Дата окончания отчета
DECLARE @endDate DATE = '2021-09-01'

-- Переменная, в которой будет подготавливаться запрос
DECLARE @query AS nvarchar(max);

-- Задаем первую строку
SET @query = 'SELECT t.EmployeeID';

-- Проходимся циклом, пока не дойдем до даты окончания отчета
WHILE @tmpDate < @endDate
BEGIN
    -- На каждую итерацию делаем проверку соответствия даты в таблице с датой в столбце табеля и записываем в столбец единицу или NULL
    SET @query = @query + ', SUM(CASE WHEN dateDiff(day, t.StartPeriod, ''' + CONVERT(varchar, @tmpDate, 126) + ''') = 0 THEN 1 END) AS ''' + CONVERT(varchar, @tmpDate, 126) + ''''
 
    -- Инкрементируем дату, с которой будем сравнивать дату из таблицы
    SET @tmpDate = DATEADD(day, 1, @tmpDate)
END;

-- Задаем последнюю строку
SET @query = @query + ' FROM timework t GROUP BY t.EmployeeID'

-- Запускаем запрос
EXECUTE(@query);