#获取一个表中的单个字段的数据
#语法规则:
#select 字段名称 from 表名;
	
SELECT last_name FROM employees;
SELECT first_name FROM employees;
SELECT email FROM employees;

#查询多个字段的数据
 SELECT last_name,first_name,email FROM employees;
 #查询所有字段
 
 #查询表达式
 SELECT 100*9
 
 #为字段起别名
 SELECT 100%98 AS 结果;
SELECT last_name AS 姓,first_name AS 名 FROM employees; 
 
 #方式二 默认格式
SELECT last_name 姓,first_name 名 FROM employees; 

#如果遇到特殊符号或者关键字时用双引号或者单引号


SELECT last_name AS "out put" FROM employees;
 
#8.去重distinct(DISTINCT)
SELECT department_id FROM employees; 
 SELECT DISTINCT department_id FROM employees;

/* #9.+号的作用
	CONCAT()函数可连接多个字段中间用','隔开
		Tips：如果有字段位null，则整个拼接的字段全为null，可用IFNULL()函数解决
	
*/	
	SELECT 100+99;#两者都为数值型做运算
 
	SELECT CONCAT(
		last_name,first_name
			)
	FROM employees;
	
	DESC departments;#显示表结构
	
/*
#10.IFNULL(当字段位null时可使用该方法替换，第一个参数位字段名，第二个参数
	为想要替换的标识)
*/
	
	SELECT commission_pct FROM employees;
	
	SELECT IFNULL(`commission_pct`,0) jiangjing FROM employees;
	
SELECT
  CONCAT(
    `first_name`,",",
    `last_name`,",",
    `email`,",",
    `phone_number`,",",
    `job_id`,",",
    `salary`,",",
    IFNULL(`commission_pct`,0)
  ) AS "out"
FROM
  employees;

