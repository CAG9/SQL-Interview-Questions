SELECT DISTINCT p.* 
FROM facebook_posts p 
JOIN facebook_reactions r 
ON p.post_id = r.post_id AND reaction ILIKE 'heart' ;
