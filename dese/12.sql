SELECT districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
JOIN staff_evaluations ON districts.id = staff_evaluations.district_id
WHERE districts.type LIKE 'Public%' AND per_pupil_expenditure >=
        (SELECT AVG (per_pupil_expenditure) FROM expenditures) AND exemplary >=
                (SELECT AVG (exemplary) FROM staff_evaluations)
ORDER BY exemplary DESC, per_pupil_expenditure DESC;



