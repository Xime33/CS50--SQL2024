SELECT districts.city,schools.name,schools.type FROM districts
JOIN schools ON districts.id = schools.district_id
JOIN graduation_rates ON schools.id = graduation_rates.school_id
ORDER BY excluded ASC LIMIT 10;
