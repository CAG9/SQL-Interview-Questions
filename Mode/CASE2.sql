SELECT player_name,
  CASE WHEN height > 70 THEN 'tall'
   WHEN height < 70 AND height > 50 THEN  '50-70'
   WHEN height < 50 AND height > 40 THEN '40-50'
  ELSE 'short' END AS HeightRank
FROM benn.college_football_players;
