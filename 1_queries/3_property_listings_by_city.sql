SELECT properties.*,(SELECT AVG(rating) as average_rating
FROM property_reviews
WHERE rating>=4)
FROM properties
WHERE city = 'Vancouver'
ORDER BY cost_per_night ASC
LIMIT 10;

