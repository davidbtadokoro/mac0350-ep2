-- 2.1) Quem são os amigos de Bob?

SELECT f.id, f.first_name, f.last_name
FROM person AS p, person AS f, personfriend
WHERE p.id = person_id AND
	  f.id = friend_id AND
	  p.first_name = 'Bob'
ORDER BY f.first_name;
	  
-- 2.2) Quem tem amizade com Bob?

SELECT p.id, p.first_name, p.last_name
FROM person AS p, person AS f, personfriend
WHERE p.id = person_id AND
	  f.id = friend_id AND
	  f.first_name = 'Bob'
ORDER BY p.first_name;
	  
	  
-- 2.3) Quem são os amigos dos amigos de Alice?

SELECT ff.id, ff.first_name, ff.last_name
FROM person AS p, person AS f, person AS ff, personfriend AS pf1, personfriend AS pf2
WHERE p.id = pf1.person_id AND f.id = pf1.friend_id AND p.first_name='Alice' AND
	  f.id = pf2.person_id AND ff.id = pf2.friend_id
ORDER BY ff.first_name;
