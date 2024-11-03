

SELECT * FROM Registration;

SELECT * FROM Login;

SELECT r.FirstName, r.LastName, l.LastLogin
FROM Login l
JOIN Registration r ON l.UserID = r.UserID
WHERE l.Username = 'alice_guo' AND l.PasswordHash = 'hashed_password';

UPDATE Login
SET LastLogin = GETDATE()
WHERE Username = 'alice_guo';
