SELECT player_name, state,
      CASE WHEN state = 'CA' THEN 'yes'
      ELSE 'no' END AS california
  FROM benn.college_football_players
  ORDER BY california DESC;
