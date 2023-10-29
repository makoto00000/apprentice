# データをグルーピングできる

## 1. グルーピング

給与情報(salaries テーブル)から、従業員ごとに salary が何レコード登録されているかを取得し、従業員番号と登録レコード数を10件表示してください。


```mysql
mysql> SELECT emp_no, COUNT(salary) FROM salaries GROUP BY emp_no LIMIT 10;
```

## 2. グルーピングと集計関数

従業員番号10001から10010の従業員ごとの最小給与と最大給与を取得してください。

```mysql
mysql> SELECT emp_no, MIN(salary), MAX(salary) FROM salaries WHERE emp_no BETWEEN "10001" AND "10010" GROUP BY emp_no;
```

## 3. グルーピングと集計関数2

従業員番号10001から10010の従業員ごとの勤務開始日と勤務終了日を取得してください。なお勤務中の場合、勤務終了日は 9999-01-01 となります。

```mysql
最新の勤務日という意味なら...
mysql> SELECT emp_no, MAX(from_date), MAX(to_date) FROM salaries WHERE emp_no BETWEEN "10001" AND "10010" GROUP BY emp_no;

すべての勤務開始日と勤務終了日を取得するなら、
mysql> SELECT emp_no, from_date, to_date FROM salaries WHERE emp_no BETWEEN "10001" AND "10010";
```

## 4. 絞り込み

従業員ごとの最大給与を求め、そのうち最大給与が140,000を超えている従業員の従業員番号と最大給与を取得してください。

```mysql
mysql> SELECT emp_no, max(salary) FROM salaries WHERE salary > 140000 GROUP BY emp_no;
```

## 5. 最小給与

従業員番号10001から10100の従業員のうち、最小給与が40,000を下回っている従業員の従業員番号とその最小給与を取得してください。

```mysql
mysql> SELECT emp_no, MIN(salary) FROM salaries WHERE emp_no BETWEEN "10001" AND "10100" AND salary < 40000 GROUP BY emp_no;
```

## 6. 最終勤務日

従業員番号10001から10100の従業員のうち、勤務が終了している従業員の従業員番号と最後の勤務終了日を取得してください。なお勤務中の場合、勤務終了日は 9999-01-01 となります。

```mysql
mysql> SELECT emp_no, MAX(to_date) FROM salaries WHERE emp_no BETWEEN "10001" AND "10100" AND NOT to_date = "9999-01-01" GROUP BY emp_no; 
```
