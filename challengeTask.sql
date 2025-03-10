-- Top Complaint Types
SELECT complaint_type, COUNT(DISTINCT complaint_type) AS top_5_complaint
FROM nyc_311.nyc_311_service_requests
GROUP BY complaint_type
ORDER BY top_5_complaint DESC
LIMIT 5;

-- Analyze Complaints by Borough
SELECT borough, COUNT(*) AS complaints_by_borough
FROM nyc_311.nyc_311_service_requests
GROUP BY borough;

-- Filtering High-Volume Complaint Types
SELECT complaint_type, COUNT(*) AS complaint_count
FROM nyc_311.nyc_311_service_requests
GROUP BY complaint_type
HAVING complaint_count > 1000;

-- Comparison of Boroughs for a Specific Complaint Type
SELECT borough, COUNT(*) AS complaint_count
FROM nyc_311.nyc_311_service_requests
WHERE complaint_type = 'Illegal Parking'
GROUP BY borough;