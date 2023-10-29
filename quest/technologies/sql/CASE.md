# 条件分岐ができる

## 1. CASE

従業員番号10100から10200の従業員に対して、最終在籍日に応じて在籍中か離職済みかを出し分けたいです。従業員番号、最終在籍日 (to_date)、在職状況(employed/unemployed) を、CASE 式を使用して表示してください。

```mysql
mysql>  
SELECT emp_no, to_date,
              CASE to_date
                  WHEN '9999-01-01' THEN 'employed'
                  ELSE 'unemployed'
              END AS '在職状況'
FROM salaries WHERE emp_no BETWEEN '10100' AND '10200';
```

## 2. 年代

従業員番号が10001から10050の従業員を対象に、従業員番号、誕生日、年代を表示してください。なお年代は、誕生日が1950年代の場合「50s」、誕生日が1960年代の場合「60s」と表記してください。

```mysql
mysql>
SELECT emp_no, birth_date,
        CASE
        WHEN birth_date BETWEEN '1950-01-01' AND '1959-12-31' THEN '50s'
        WHEN birth_date BETWEEN '1960-01-01' AND '1969-12-31' THEN '60s'
        END AS '年代'
FROM employees WHERE emp_no BETWEEN '10001' AND '10050';
```

## 3. 年代ごとの最大給与

年代ごとの最大給与を取得してください。なお年代は、誕生日が1950年代の場合「50s」、誕生日が1960年代の場合「60s」と表記してください。

```mysql
mysql>
SELECT MAX(salary),
        CASE
        WHEN birth_date BETWEEN '1950-01-01' AND '1959-12-31' THEN '50s'
        WHEN birth_date BETWEEN '1960-01-01' AND '1969-12-31' THEN '60s'
        END AS 年代
FROM salaries INNER JOIN employees ON salaries.emp_no = employees.emp_no WHERE salaries.emp_no BETWEEN '10001' AND '10050' GROUP BY 年代;
```
