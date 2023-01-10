
-- DELETE p1 FROM Person p1 JOIN Person p2 ON p1.email = p2.email
-- WHERe p1.Id > p2.Id

DELETE p1 FROM Person p1 JOIN Person p2 ON P1.EMAIL = P2.EMAIL
WHERE
    p1.Id > p2.Id