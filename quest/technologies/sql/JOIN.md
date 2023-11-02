# テーブルを結合できる

## 1. 内部結合

部署マネージャーテーブルに、従業員テーブルのデータを内部結合させた全データを取得してください。

```sql
mysql> SELECT * FROM dept_manager INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;
```

## 2. 列の選択

部署ごとに、部署番号、歴代のマネージャーの従業員番号、マネージャーのファーストネーム、マネージャーのラストネームを取得してください。

```sql
mysql> SELECT dept_manager.dept_no, employees.emp_no, employees.first_name, employees.last_name FROM dept_manager INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;
```

## 3. 複数の内部結合

部署ごとに、部署番号、部署名、歴代のマネージャーの従業員番号、マネージャーのファーストネーム、マネージャーのラストネームを取得してください。

```sql
mysql> SELECT departments.dept_no, departments.dept_name, dept_manager.dept_no, employees.first_name, employees.last_name FROM departments INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no INNER JOIN employees ON dept_manager.emp_no = employees.emp_no ORDER BY departments.dept_no ASC;
```

## 4. 絞り込み

部署ごとに、部署番号、部署名、現在のマネージャーの従業員番号、マネージャーのファーストネーム、マネージャーのラストネームを取得してください。

```sql
mysql> SELECT departments.dept_no, departments.dept_name, dept_manager.dept_no, employees.first_name, employees.last_name, dept_manager.to_date FROM departments INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no INNER JOIN employees ON dept_manager.emp_no = employees.emp_no WHERE dept_manager.to_date = "9999-01-01" ORDER BY departments.dept_no ASC;
```

## 5. 給与

従業員番号10001から10010の従業員ごとに、ファーストネーム、ラストネーム、いつからいつまで給与がいくらだったかを取得してください。

```sql
mysql> SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.from_date, salaries.to_date, salaries.salary FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no WHERE employees.emp_no BETWEEN "10001" AND "10010";
```

## 6. 内部結合と外部結合の違い

INNER JOIN と OUTER JOIN の違いについて、SQL 初心者にわかるように説明してください。またどのように使い分けるのかも合わせて説明してください。

```
どちらも２つ以上のテーブルを特定のカラムの値が一致するデータを結合させる。
内部結合は一致するデータのみを取り出す。外部結合は一致していないデータも取り出すことができる。
例えば、顧客情報と注文情報のテーブルを結合させる際、内部結合だと、注文した顧客しか取り出せないが、外部結合なら注文していない顧客の情報もすべて取り出すことができる。
内部結合の方が処理が速いため、内部結合で良い場合は内部結合を選択する。
```
