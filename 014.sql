CREATE PROCEDURE testCheck()
    SELECT id, IF (given_answer IS NULL, 'no answer', IF (STRCMP(correct_answer, given_answer), 'incorrect', 'correct')) AS checks
    FROM answers
    ORDER BY id;
