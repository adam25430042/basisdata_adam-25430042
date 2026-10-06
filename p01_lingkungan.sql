-- Modul 1: Lingkungan Kerja MariaDB dan Git
-- NIM: 25430042 (042)

-- 1. Buat database klinik jika belum ada
CREATE DATABASE IF NOT EXISTS klinik_042 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 2. Buat user admin/mahasiswa dan berikan hak akses penuh
CREATE USER IF NOT EXISTS 'mhs_042'@'localhost' IDENTIFIED BY 'PasswordKerja';
GRANT ALL PRIVILEGES ON klinik_042.* TO 'mhs_042'@'localhost';

-- 3. Buat user tamu dan berikan hak akses terbatas (SELECT saja)
CREATE USER IF NOT EXISTS 'tamu_042'@'localhost' IDENTIFIED BY 'PasswordKerja';
GRANT SELECT ON klinik_042.* TO 'tamu_042'@'localhost';

-- 4. Terapkan perubahan hak akses
FLUSH PRIVILEGES;