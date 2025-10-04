Setup database and run the Banking Management System

1) Create the database and tables
- Save `db/init.sql` (already provided).
- Run the SQL using the MySQL client (PowerShell):

  mysql -u root -p < db\init.sql

2) Run the Java application (PowerShell)
- Compile sources:

  javac -d out src\BankingManagementSystem\*.java

- Run with the connector JAR (adjust path if different):

  java -cp "out;.idea\libraries\mysql-connector-j-9.4.0.jar" BankingManagementSystem.BankingApp

Notes:
- Ensure your MySQL server is running.
- If you used different credentials, update `username` and `password` in `src/BankingManagementSystem/BankingApp.java`.
- The `db/init.sql` file creates `User` and `Accounts` tables used by the app.