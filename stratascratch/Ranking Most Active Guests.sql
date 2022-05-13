SELECT DENSE_RANK() OVER(ORDER BY sub.sum_n_messages DESC ) AS ranking,  
        sub.id_guest, sub.sum_n_messages
FROM  (
        SELECT id_guest, SUM(n_messages) AS sum_n_messages
        FROM airbnb_contacts
        GROUP BY id_guest
        ORDER BY sum_n_messages DESC) sub
