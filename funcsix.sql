use coursework;

SELECT reviews.reviewText, reviews.gPlusUserId, users.jobs
FROM reviews
INNER JOIN users ON users.gPlusUserId = reviews.gPlusUserId
WHERE jobs = 'IT Specialist'

;


