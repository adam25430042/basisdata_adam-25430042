-- p01_lingkungan_25430042.sql
-- NIM: 25430042
-- Tema: Organisasi Klinik BUNDA SEHAT
-- Database proyek: klinik_042
-- User proyek: mhs_042 & tamu_042
-- Password sengaja diganti placeholder.
-- JANGAN commit password asli.

-- 1. Database latihan / umum (opsional atau basis data pendukung)
CREATE DATABASE IF NOT EXISTS klinik_042
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'mhs_042'@'localhost'
  IDENTIFIED BY '<password_kerja>';

GRANT ALL PRIVILEGES ON klinik_042.* TO 'mhs_042'@'localhost';

-- 2. Database proyek utama (Klinik BUNDA SEHAT)
CREATE DATABASE IF NOT EXISTS klinik_042
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'tamu_042'@'localhost'
  IDENTIFIED BY '<password_kerja>';

GRANT SELECT ON klinik_042.* TO 'tamu_042'@'localhost';

-- 3. Terapkan perubahan hak akses
FLUSH PRIVILEGES;