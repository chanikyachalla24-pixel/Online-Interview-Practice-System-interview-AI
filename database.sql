CREATE DATABASE IF NOT EXISTS interviewai;
USE interviewai;

-- Spring Boot will create/update users, questions and interviews automatically.
-- No manual CREATE TABLE is required when spring.jpa.hibernate.ddl-auto=update.

-- Automatic interview recording support
CREATE TABLE IF NOT EXISTS interview_recordings (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  session_id VARCHAR(64) NOT NULL,
  user_id BIGINT NOT NULL,
  question_number INT NOT NULL,
  question_text TEXT,
  transcript TEXT,
  face_detected BOOLEAN NOT NULL DEFAULT FALSE,
  eyes_detected BOOLEAN NOT NULL DEFAULT FALSE,
  looking_at_camera BOOLEAN NOT NULL DEFAULT FALSE,
  video_data LONGBLOB,
  audio_data LONGBLOB,
  video_content_type VARCHAR(100),
  record_date DATE,
  record_time TIME,
  INDEX idx_recording_user (user_id),
  INDEX idx_recording_session (session_id)
);
