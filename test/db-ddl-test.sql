INSERT INTO [Department].[Hostel] (HostelType)
VALUES ('Male');
INSERT INTO [Department].[Hostel] (HostelType)
VALUES ('Female');
INSERT INTO [Department].[Hostel] (HostelType)
VALUES ('MF12');

INSERT INTO [Department].[Tools] (Bed, Cupboard,  Curtains, Fan, Heater, Blanket, Pillow, Carpet)
VALUES 
(4, 5, 6,5, 3, 2, 4, 6),
(42, 45, 56,85, 37, 62, 5, 23),
(4, 52, 46, 35, 31, 22, 4, 236),
(42, 45, 56,85, 37, 62, 5, 23),
(23, 53, 333,533, 333, 23, 43, 63),
(12, 45, 56,85, 37, 62, 53, 23),
(56, 52, 46, 35, 31, 22, 4, 236),
(718, 213, 526,435, 33, 632, 52, 33),
(8, 23, 46,45, 33, 2, 2, 3),
(4, 533, 633,353, 33, 23, 43, 6),
(42, 45, 56,85, 37, 62, 5, 23),
(4, 52, 46, 35, 31, 22, 4, 236),
(42, 45, 56,85, 37, 62, 5, 23),
(23, 505, 6, 85, 3, 82, 423, 66),
(12, 45, 56,85, 37, 62, 5, 23),
(56, 52, 46, 35, 31, 22, 4, 236),
(78, 23, 5346,845, 373, 622, 52, 223),
(56, 52, 46, 35, 31, 22, 4, 236),
(78, 23, 5346,845, 373, 622, 52, 223),
(8, 23, 46,45, 33, 2, 2, 3);

INSERT INTO [Department].[Room] (HostelID, ToolsID, FloorNo)
VALUES 
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 2),
(1, 7, 2),
(1, 8, 2),
(1, 9, 2),
(1, 10, 2),
(2, 11, 1),
(2, 12, 1),
(2, 13, 1),
(2, 14, 1),
(2, 15, 1),
(2, 16, 2),
(2, 17, 2),
(2, 18, 2),
(2, 19, 2),
(2, 20, 2);
SELECT * FROM [Department].[Room];

INSERT INTO [Department].[HostelEmployee] (HostelID)
VALUES 
(4, 1),
(5, 2), 
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(2, 2),
(1, 1),
(3, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 2),
(14, 2);

INSERT INTO [Department].[HostelAttendance] (HostelID, RegistrationID, AttendanceDate, AttendanceDate, TotalDays, PresentDays, AbsentDays, OffDays, Leave)
VALUES
(1, 1, '2019-01-13', 30, 12, 15, 3, 0),
(1, 2, '2019-01-13', 30, 18, 9, 3, 0),
(1, 3, '2019-01-13', 30, 17, 10, 3, 0),
(1, 4, '2019-01-13', 30, 8, 15, 3, 4),
(1, 5, '2019-01-13', 30, 12, 15, 3, 0),
(1, 6, '2019-01-13', 30, 12, 15, 3, 0),
(1, 7, '2019-01-13', 30, 12, 15, 3, 0),
(1, 8, '2019-01-13', 30, 12, 13, 3, 2),
(1, 9, '2019-01-13', 30, 12, 9, 3, 6),
(1, 10, '2019-01-13', 30, 12, 8, 3, 7),
(2, 12, '2019-01-13', 30, 12, 15, 3, 0),
(2, 13, '2019-01-13', 30, 12, 3, 3, 12),
(2, 14, '2019-01-13', 30, 12, 9, 3, 6),
(2, 15, '2019-01-13', 30, 12, 15, 3, 0),
(2, 16, '2019-01-13', 30, 12, 15, 3, 0),
(2, 17, '2019-01-13', 30, 12, 15, 3, 0),
(2, 18, '2019-01-13', 30, 12, 14, 3, 1),
(2, 19, '2019-01-13', 30, 12, 13, 3, 2),
(2, 20, '2019-01-13', 30, 12, 12, 3, 3);

INSERT INTO [Department].[Clearance] (RegistrationID, Checked)
VALUES 
(1, 1),
(2, 0),
(3,1),
(4, 1),
(5, 0),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 0),
(14, 0),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 0),
(20, 0);

INSERT INTO [Department].[HostelRegistration] (HostelID, StudentID, RegistrationDate, RoomID)
VALUES 
(1, 1, '2018-07-23', 1),
(1, 2, '2018-07-23', 2),
(1, 2, '2018-08-23', 2),
(1, 3, '2018-0-23', 2),
(1, 2, '2018-09-23', 3),
(1, 4, '2018-07-23', 4),
(1, 5, '2018-07-23', 5),
(1, 6, '2018-07-23', 3),
(1, 6, '2018-08-23', 2),
(1, 7, '2018-07-23', 3),
(1, 2, '2018-10-23', 4),
(2, 1, '2018-03-23', 3),
(2, 5, '2018-02-23', 13),
(2, 6, '2018-02-23', 12),
(2, 7, '2018-02-23', 14),
(2, 8, '2018-02-23', 6),
(2, 19, '2018-07-23', 6),
(2, 20, '2018-07-23', 5),
(2, 10, '2018-07-23', 5),
(2, 12, '2018-07-23', 5),
(2, 11, '2018-07-23', 20),
(2, 19, '2018-11-23', 19);

INSERT INTO [Department].[course] VALUES ('pharmacy')
INSERT INTO[Department].[course] VALUES ('laboratory')
INSERT INTO[Department].[Course] VALUES ('nursing')
INSERT INTO[Department].[course] VALUES ('midwifery')
INSERT INTO[Department].[course] VALUES ('Math')
INSERT INTO[Department].[course] VALUES ('saqafat')
INSERT INTO[Department].[course] VALUES ('computer')
INSERT INTO[Department].[Course] VALUES ('English')
INSERT INTO[Department].[course] VALUES ('psychology')
INSERT INTO[Department].[course] VALUES ('Network')

INSERT INTO [Department].[NightShift] VALUES (1,3,'2019-3-4')
INSERT INTO [Department].[NightShift] VALUES(1,6,'2019-3-22')
INSERT INTO [Department].[NightShift] VALUES(1,8,'2019-4-2')
INSERT INTO [Department].[NightShift] VALUES(1,9,'2019-4-20')
INSERT INTO [Department].[NightShift] VALUES(2,2,'2019-4-30')
INSERT INTO [Department].[NightShift] VALUES(2,4,'2019-5-4')
INSERT INTO [Department].[NightShift] VALUES(2,7,'2019-5-23')
INSERT INTO [Department].[NightShift] VALUES(2,6,'2019-6-1')
INSERT INTO [Department].[NightShift] VALUES(3,5,'2019-6-15')
INSERT INTO [Department].[NightShift] VALUES(3,9,'2019-6-25')
INSERT INTO [Department].[NightShift] VALUES(3,2,'2019-7-3')
INSERT INTO [Department].[NightShift] VALUES(4,1,'2019-7-17')
INSERT INTO [Department].[NightShift] VALUES(4,35,'2019-7-26')

INSERT INTO [Score].[ScoreDetails] VALUES (1,3,7,20)
INSERT INTO [Score].[ScoreDetails] VALUES (1,5,4,15)
INSERT INTO [Score].[ScoreDetails] VALUES (1,6,6,3)
INSERT INTO [Score].[ScoreDetails] VALUES (1,7,7,13)
INSERT INTO [Score].[ScoreDetails] VALUES (2,4,6,15)
INSERT INTO [Score].[ScoreDetails] VALUES (2,7,7,20)
INSERT INTO [Score].[ScoreDetails] VALUES (2,8,8,16)
INSERT INTO [Score].[ScoreDetails] VALUES (2,9,6,13)
INSERT INTO [Score].[ScoreDetails] VALUES (2,6,7,18)
INSERT INTO [Score].[ScoreDetails] VALUES (3,8,6,8)
INSERT INTO [Score].[ScoreDetails] VALUES (4,4,5,20)
INSERT INTO [Score].[ScoreDetails] VALUES (4,3,6,17)
INSERT INTO [Score].[ScoreDetails] VALUES (5,2,7,13)
INSERT INTO [Score].[ScoreDetails] VALUES (6,1,6,11)
INSERT INTO [Score].[ScoreDetails] VALUES (7,9,8,12)
INSERT INTO [Score].[ScoreDetails] VALUES (7,8,7,20)

INSERT INTO [Department].[Coordinator] VALUES(10,5,'2017-2-1')
INSERT INTO [Department].[Coordinator] VALUES(10,7,'2016-1-13')
INSERT INTO [Department].[Coordinator] VALUES(10,8,'2018-5-8')
INSERT INTO [Department].[Coordinator] VALUES(11,9,'2019-6-19')
INSERT INTO [Department].[Coordinator] VALUES(19,2,'2015-8-16')
INSERT INTO [Department].[Coordinator] VALUES(11,1,'2016-9-14')
INSERT INTO [Department].[Coordinator] VALUES(12,4,'2014-6-15')
INSERT INTO [Department].[Coordinator] VALUES(13,3,'2019-4-17')
INSERT INTO [Department].[Coordinator] VALUES(14,6,'2015-1-18')
INSERT INTO [Department].[Coordinator] VALUES (3,4,'2015-1-18')
INSERT INTO [Department].[Coordinator] VALUES(16,8,'2017-11-5')
INSERT INTO [Department].[Coordinator] VALUES(17,4,'2019-3-4')
INSERT INTO [Department].[Coordinator] VALUES(18,7,'2016-10-9')
INSERT INTO [Department].[Coordinator] VALUES(19,6,'2018-5-6')
INSERT INTO [Department].[Coordinator] VALUES(20,3,'2013-8-2')

INSERT INTO [Department].[Group] VALUES (2,1,'Mgroup')
INSERT INTO [Department].[Group] VALUES  (3,4,'Ngroup')
INSERT INTO [Department].[Group] VALUES  (4,3,'Bgroup')
INSERT INTO [Department].[Group] VALUES  (5,2,'Fgroup')
INSERT INTO [Department].[Group] VALUES  (6,3,'Wgroup')
INSERT INTO [Department].[Group] VALUES  (7,4,'Agroup')
INSERT INTO [Department].[Group] VALUES  (8,2,'Cgroup')
INSERT INTO [Department].[Group] VALUES  (9,1,'Hgroup')
INSERT INTO [Department].[Group] VALUES  (10,2,'Tgroup')
INSERT INTO [Department].[Group] VALUES  (4,4,'Lgroup')
INSERT INTO [Department].[Group] VALUES  (6,3,'Xgroup')
INSERT INTO [Department].[Group] VALUES  (8,1,'Zgroup')
INSERT INTO [Department].[Group] VALUES  (9,2,'Qgroup')
INSERT INTO [Department].[Group] VALUES  (1,3,'Dgroup')
INSERT INTO [Department].[Group] VALUES  (3,4,'Ugroup')
INSERT INTO [Department].[Group] VALUES  (2,1,'Pgroup')

