-- bypass_db.sql
-- Simulated Bypass System Database (For demo/educational use)

CREATE DATABASE bypass_system;
USE bypass_system;

-- Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    password_hash VARCHAR(255),
    role ENUM('admin', 'user') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bypass Logs
CREATE TABLE bypass_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(255),
    status ENUM('pending', 'success', 'failed'),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Device Info Table
CREATE TABLE devices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    os VARCHAR(50),
    browser VARCHAR(100),
    ip_address VARCHAR(45),
    is_vm BOOLEAN,
    last_seen TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- System Tasks (Fake tasks to simulate bypass operations)
CREATE TABLE system_tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(100),
    description TEXT,
    command VARCHAR(100),
    status ENUM('idle', 'running', 'completed', 'error') DEFAULT 'idle',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
