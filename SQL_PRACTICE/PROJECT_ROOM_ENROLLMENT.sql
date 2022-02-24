-- DB software used: MYSQL Workbench.
-- NAME: Meghana Putta Swamy
-- USC ID : 6565038173
-- NETID: mswamy

CREATE TABLE PROJECT_ROOM_BOOKINGS(
ROOM_NUM INTEGER NOT NULL,
START_TIME INTEGER NOT NULL,
END_TIME INTEGER NOT NULL,
GROUP_NAME CHAR(10) NOT NULL,
PRIMARY KEY (ROOM_NUM, START_TIME),
CONSTRAINT CHECK_TIME CHECK (START_TIME<END_TIME));

delimiter //
CREATE TRIGGER ROOM_CHECKING BEFORE INSERT ON PROJECT_ROOM_BOOKINGS 
       FOR EACH ROW
       BEGIN
       DECLARE COUNT_ROOM_BOOKING INTEGER DEFAULT 0;
       BEGIN
			SELECT COUNT(*) INTO COUNT_ROOM_BOOKING FROM PROJECT_ROOM_BOOKINGS
			WHERE NEW.ROOM_NUM=ROOM_NUM AND NOT(NEW.START_TIME>=END_TIME OR NEW.END_TIME<=START_TIME);
       
           IF COUNT_ROOM_BOOKING > 0 THEN
           SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERROR IN ENTRY';      
           END IF;
	    END;
       END;//
delimiter ;

delimiter //
CREATE TRIGGER ROOM_CHECKING_UPDATE BEFORE UPDATE ON PROJECT_ROOM_BOOKINGS 
       FOR EACH ROW
       BEGIN
       DECLARE COUNT_ROOM_BOOKING INTEGER DEFAULT 0;
       BEGIN
			SELECT COUNT(*) INTO COUNT_ROOM_BOOKING FROM PROJECT_ROOM_BOOKINGS
			WHERE NEW.ROOM_NUM=ROOM_NUM AND NOT(NEW.START_TIME>=END_TIME OR NEW.END_TIME<=START_TIME);
       
           IF COUNT_ROOM_BOOKING > 0 THEN
           SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERROR IN ENTRY';      
           END IF;
	    END;
       END;//
delimiter ;

INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (12001, 12, 15, 'A');
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (12001, 14, 17, 'B');
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (12001, 1, 5, 'D');
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (20001, 4, 9, 'C');
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (20001, 9, 12, 'C'); 
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (12001, 9, 12, 'C');
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (1, 9, 10, 'B');
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (1, 9, 10, 'C');
INSERT INTO PROJECT_ROOM_BOOKINGS VALUES (1, 12, 10, 'C');

SELECT * 
FROM PROJECT_ROOM_BOOKINGS;

-- I am using TRIGGER BEFORE INSERT to check my insert values. I have a variable COUNT ROOM BOOKING to check if a intering room is already booked or not.alter
-- So the logic is, I am gonna check if the inserting start time is less than end time alreay present for the given room number, if yes then I am incrementing the count, if the count is greater than zero it returns error.
-- I also have a CHECK constraint to check if my end time < start time in create table code 