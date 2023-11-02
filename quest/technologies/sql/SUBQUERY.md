# サブクエリを使うことができる

## 1. サブクエリ

従業員番号が10001から10010のうち、全給与レコードの平均給与より給与が大きいレコードの従業員番号と給与を、サブクエリを使用して取得してください。

```sql
mysql> SELECT emp_no, salary FROM salaries WHERE emp_no BETWEEN "10001" AND "10010" AND salary >= (SELECT AVG(salary) FROM salaries);
```

## 2. 重複なし

平均の2倍以上の給与をもらっている従業員の従業員番号を重複なく取得してください。

```sql
mysql> SELECT emp_no FROM salaries WHERE salary >= (SELECT AVG(salary) FROM salaries) * 2 GROUP BY emp_no;
```

## ３. 最大給与

従業員番号が10001から10010のうち、全給与レコードの平均給与より給与が大きい従業員の従業員番号と最大給与を取得してください。

```sql
mysql> SELECT emp_no, MAX(salary) FROM salaries WHERE emp_no BETWEEN "10001" AND "10010" AND salary >= (SELECT AVG(salary) FROM salaries) GROUP BY emp_no;
```

## 4. 相関サブクエリ

従業員のうち、性別ごとに最高年齢の従業員の性別、従業員番号、誕生日を、相関サブクエリを使用して取得してください。

```sql
# 最高年齢の従業員の性別、従業員番号、誕生日を取得する場合、サブクエリで取得できる。
mysql> SELECT emp_no, birth_date FROM employees WHERE birth_date = (SELECT MIN(birth_date) FROM employees);

# 性別ごとに上記を取得する場合は、相関サブクエリが有効（ただし時間がかかる全レコードを1件ずつ条件に一致するかを探すため）
mysql> SELECT gender, emp_no, birth_date FROM employees AS E1 WHERE birth_date = (SELECT MIN(birth_date) FROM employees AS E2 WHERE E1.gender = E2.gender);

# 以下のように男女別々で取得して、UNIONで結合させる方が速い。
SELECT gender, emp_no, birth_date FROM employees WHERE gender = "M" AND birth_date = (SELECT MIN(birth_date) FROM employees WHERE gender = "M")
UNION
SELECT gender, emp_no, birth_date FROM employees WHERE gender = "F" AND birth_date = (SELECT MIN(birth_date) FROM employees WHERE gender = "F");
```

## 5. 一番若い従業員

従業員番号10100から10200の従業員の中で、それぞれの性別で最も若い年齢の人の性別、誕生日、従業員番号、ファーストネーム、ラストネームを取得してください。

```sql
# すべての従業員の中で一番若い人を取得
mysql> SELECT gender, birth_date, emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN "10100" AND "10200" AND birth_date = (SELECT MIN(birth_date) FROM employees WHERE emp_no BETWEEN "10100" AND "10200");

# 男女別に一番若い人を取得
mysql> SELECT gender, birth_date, emp_no, first_name, last_name FROM employees AS E1 WHERE emp_no BETWEEN "10100" AND "10200" AND birth_date = (SELECT MIN(birth_date) FROM employees AS E2 WHERE emp_no BETWEEN "10100" AND "10200" AND E1.gender = E2.gender);
```
