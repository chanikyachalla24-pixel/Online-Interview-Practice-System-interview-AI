INTERVIEWAI - FULL FIXED PROJECT

STACK
- Java 17
- Spring Boot 3.5.5
- Maven
- MySQL
- HTML/CSS/JavaScript

FEATURES
- Registration with BCrypt password hashing
- Login returns database user ID
- Login protection before interview
- 6 roles
- Technical and HR interviews
- 20 questions per role/type (240 seeded questions)
- Random 20 questions per interview
- Voice answer and text-to-speech
- Score and grade
- Interview result stores user ID, role, type, score, grade, feedback, date and time
- History filtered by logged-in user ID

SETUP

1. Create the database:
   CREATE DATABASE interviewai;

2. Open:
   backend/src/main/resources/application.properties

3. Replace:
   spring.datasource.password=YOUR_MYSQL_PASSWORD

4. Open a terminal:
   cd backend
   mvn spring-boot:run

5. Backend:
   http://localhost:8080

6. Open frontend/index.html in Chrome.
   Recommended: use VS Code Live Server for frontend.

IMPORTANT
- Do not use the old script(5).js or script(6).js.
- Use the script.js in this package.
- The frontend API is http://localhost:8080/api.
- DataInitializer inserts the 240 questions automatically on the first run.
- If questions already exist, it does not duplicate them.

NEW RECORDING FEATURES
- Camera opens inside the existing LIVE INTERVIEW page; no new tab/window is opened.
- Video + microphone recording starts automatically for each question.
- Spoken answers are converted to text and saved as the transcript.
- Each question recording is uploaded to MySQL as WebM LONGBLOB data.
- Face/eye detection uses MediaPipe Face Mesh in the same page. The UI reports face/eyes and an approximate look-at-camera status.
- Allow camera and microphone permissions in Chrome/Edge. Camera features work best from localhost or HTTPS.
- The MediaPipe browser library is loaded from jsDelivr, so internet access is needed for eye/face recognition.
- Recordings are limited to 25 MB per question by the backend.
