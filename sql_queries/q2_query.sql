
SELECT COUNT(*) as total_affected

FROM
    humanresources.employee as e

WHERE
    e.vacationhours > 40;