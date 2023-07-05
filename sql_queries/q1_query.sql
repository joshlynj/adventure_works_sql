SELECT
    CONCAT(p.firstname, ' ', p.lastname) AS employee_name,
    e.jobtitle,
    ea.emailaddress,
    e.vacationhours AS accrued_vacation_hours
FROM
    humanresources.employee AS e
JOIN
    person.person AS p ON e.businessentityid = p.businessentityid
JOIN
    person.emailaddress AS ea ON e.businessentityid = ea.businessentityid
WHERE
    e.vacationhours > 40;