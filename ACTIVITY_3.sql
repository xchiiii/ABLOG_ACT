

SELECT CONCAT(fname, " ", lname) AS Fullname, sschedule.client_ID, trainor.name, payment.amout, reports.total_amount
FROM ((((client
INNER JOIN sschedule ON client.client_ID = sschedule.client_ID)
INNER JOIN trainor ON sschedule.client_ID = trainor.trainor_ID)
INNER JOIN payment ON client.client_ID = payment.client_ID)
INNER JOIN reports ON client.client_ID = reports.client_ID);



SELECT sschedule.sched_ID, trainor.name, client.lname, sschedule.session, sschedule.time_start, sschedule.time_end
FROM ((sschedule
INNER JOIN trainor ON sschedule.trainor_ID = trainor.trainor_ID)
INNER JOIN client ON sschedule.client_ID = client.client_ID);
