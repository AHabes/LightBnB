SELECT city,
       count(reservations) as total_reservations
FROM reservations
         JOIN properties p on reservations.property_id = p.id
GROUP BY city
ORDER BY total_reservations DESC;