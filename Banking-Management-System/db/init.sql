-- Initialize banking_system database and required tables
CREATE DATABASE IF NOT EXISTS banking_system;
USE banking_system;

CREATE TABLE IF NOT EXISTS `User` (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `Accounts` (
  account_number BIGINT PRIMARY KEY,
  full_name VARCHAR(255),
  email VARCHAR(255),
  balance DOUBLE,
  security_pin VARCHAR(20),
  INDEX (email)
);

-- Optional: sample data
-- INSERT INTO `User` (full_name, email, password) VALUES ('Test User', 'test@example.com', 'secret');
-- INSERT INTO `Accounts` (account_number, full_name, email, balance, security_pin) VALUES (10000100, 'Test User', 'test@example.com', 1000.0, '1234');
