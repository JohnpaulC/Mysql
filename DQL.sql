#获取一个表中的单个字段的数据
#语法规则:
#select 字段名称 from 表名;
	
SELECT last_name FROM employees;
SELECT first_name FROM employees;
SELECT email FROM employees;

#查询多个字段的数据
 SELECT last_name,first_name,email FROM employees;
 #查询所有字段