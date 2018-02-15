DELETE p FROM Person p, Person q
WHERE p.id>q.id AND p.Email=q.Email;
