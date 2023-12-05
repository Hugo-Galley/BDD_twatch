CREATE USER 'Allan'@'localhost' IDENTIFIED WITH mysql_native_password BY 'babyfoot';
GRANT INSERT, UPDATE, SELECT, RELOAD ON *.* TO 'Allan'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit