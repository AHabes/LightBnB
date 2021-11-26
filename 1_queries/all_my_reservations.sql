SELECT properties.*, r.*, avg(rating) as average_rating
FROM properties
         JOIN reservations r on properties.id = r.property_id
         JOIN property_reviews pr on properties.id = pr.property_id
WHERE r.guest_id = 1
GROUP BY properties.id, r.id
ORDER BY start_date;