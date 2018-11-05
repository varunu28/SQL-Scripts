# Write your MySQL query statement below
SELECT Name 
FROM Candidate 
WHERE id = (SELECT CandidateId 
            FROM Vote 
            GROUP BY CandidateId 
            ORDER BY COUNT(*) DESC 
            LIMIT 1);
