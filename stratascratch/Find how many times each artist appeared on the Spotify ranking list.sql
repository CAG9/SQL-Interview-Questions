SELECT  artist, COUNT(*) as ocurrences
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist;
