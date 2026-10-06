-- Modul 1: Lingkungan Kerja MariaDB dan Git
-- NIM: 042

CREATE DATABASE IF NOT EXISTS kopma_042 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'mhs_042'@'localhost' IDENTIFIED BY 'PasswordKerja';

GRANT ALL PRIVILEGES ON kopma_042.* TO 'mhs_062'@'localhost';

FLUSH PRIVILEGES;


CREATE USER IF NOT EXISTS 'tamu_042'@'localhost' IDENTIFIED BY 'PasswordKerja';

GRANT ALL PRIVILEGES ON kopma_062.* TO 'tamu_042'@'localhost';

FLUSH PRIVILEGES;