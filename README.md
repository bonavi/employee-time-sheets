## Необходимо реализовать средствами SQL вывод табеля рабочего времени
сотрудников организации за месяц
рабочие смены сотрудников представлены в таблице timework

![alt text](https://gitlab.com/my-test-assignments1/time-sheet/-/blob/main/TimeworkTable.png)

Табель рабочего времени должен быть представлен в следующем виде

![alt text](https://gitlab.com/my-test-assignments1/time-sheet/-/blob/main/TimeSheet.png)


Структура таблицы:

```sql
CREATE TABLE timework
(
     ID int,
     EmployeeID int,
     StartPeriod datetime,
     EndPeriod datetime
)
```

Пример данных таблицы timework

```sql
INSERT INTO timework (ID, EmployeeID, StartPeriod, EndPeriod)
VALUES  (1, 1, N'2021-08-11 12:00:00.000', N'2021-08-11 18:00:00.000'),
        (2, 1, N'2021-08-12 12:00:00.000', N'2021-08-12 18:00:00.000'),
        (3, 1, N'2021-08-16 12:00:00.000', N'2021-08-16 18:00:00.000'),
        (4, 2, N'2021-08-11 12:00:00.000', N'2021-08-11 18:00:00.000'),
        (5, 2, N'2021-08-14 12:00:00.000', N'2021-08-14 18:00:00.000');
```