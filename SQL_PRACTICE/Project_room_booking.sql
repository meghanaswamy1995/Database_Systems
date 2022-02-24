-- INSERT INTO ProjectRoomBookings
-- (roomNum, startTime,endTime, groupName)
-- VALUES
-- (1,7,10,'AR'),
-- (1,10,13,'RB'),
-- (1,13,16,'RO'),
-- (1,16,18,'SV');

UPDATE ProjectRoomBookings
SET roomNum=2, startTime=10 ,endTime=7, groupName='AQ'
WHERE startTime<PendTime;