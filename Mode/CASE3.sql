SELECT *,
  CASE WHEN year IN ('JR', 'SR') then player_name
  ELSE NULL END AS seniorityorjunior
FROM benn.college_football_players;
