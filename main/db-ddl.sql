CREATE DATABASE KIHS
GO;

USE KIHS
GO;

CREATE SCHEMA HumanResources
GO;

CREATE SCHEMA Department
GO;

CREATE SCHEMA Score
GO;

CREATE TABLE [HumanResources].[Student](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    FullName NVARCHAR(50) NOT NULL,
    FatherName NVARCHAR(50) NOT NULL,
    GrandFatherName NVARCHAR(50) NOT NULL,
    Gender NVARCHAR(50) NOT NULL, CHECK(Gender in ('Male', 'Female', 'Other')),
    DOB DATE NOT NULL, CHECK(DATEDIFF(YEAR, DOB, GETDATE()) <= 35 AND DATEDIFF(YEAR, DOB, GETDATE()) >= 18),
    POB NVARCHAR(50) NOT NULL,
    NativeLanguage NVARCHAR(50) NOT NULL,
    Nationality NVARCHAR(50) NOT NULL,
    NID INT NOT NULL,
    CellPhone NVARCHAR(10) NOT NULL, CHECK(CellPhone LIKE '[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    ParentCellphone NVARCHAR(50) NOT NULL, CHECK(ParentCellphone LIKE '[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    Email NVARCHAR(50) NOT NULL, CHECK(Email LIKE '%@%.%'),
    Photo VARBINARY(MAX) NOT NULL
)

CREATE TABLE [HumanResources].[Staff](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    FullName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Gender NVARCHAR(50) NOT NULL, CHECK(Gender in ('Male', 'Female', 'Other')),
    DOB DATE NOT NULL, CHECK(DATEDIFF(YEAR, DOB, GETDATE()) >= 18 AND DATEDIFF(YEAR, DOB, GETDATE()) <= 65),
    POB NVARCHAR NOT NULL,
    NativeLanguage NVARCHAR(50) NOT NULL,
    Nationality NVARCHAR(50) NOT NULL,
    NID INT NOT NULL,
    CellPhone NVARCHAR(50) NOT NULL, CHECK (CellPhone LIKE '[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    HireDate DATE NOT NULL,
    Photo VARBINARY(MAX) NOT NULL
)

CREATE TABLE [HumanResources].[Employee](
    EmpID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Email NVARCHAR(50) NOT NULL, CHECK(Email LIKE '%@%.%')
)

CREATE TABLE [HumanResources].[Teacher](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    Email NVARCHAR(50) NOT NULL, CHECK(Email LIKE '%@%.%')
)

CREATE TABLE [HumanResources].[Health](
    ID INT PRIMARY KEY NOT NULL, FOREIGN KEY(ID) REFERENCES [HumanResources].[Student](ID),
    BloodGroup NVARCHAR(50) NOT NULL, CHECK(BloodGroup IN ('A-', 'A+', 'B-', 'B+', 'AB+', 'AB-', 'O-', 'O+')),
    HIV BINARY NOT NULL,
    HepatitisB BINARY NOT NULL,
    EyeDisease BINARY NOT NULL,
    SkinDisease BINARY NOT NULL,
    ENT BINARY NOT NULL,
    SurgeryDisease BINARY NOT NULL,
    TB BINARY NOT NULL,
    InternalDisease BINARY NOT NULL,
    NeurologicMentalDisease BINARY NOT NULL,
    Attachment VARBINARY(MAX) NOT NULL
)

CREATE TABLE [HumanResources].[Job](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    StudentID INT NOT NULL, FOREIGN KEY(StudentID) REFERENCES [HumanResources].[Student](ID),
    HireDate DATE NOT NULL,
    Office NVARCHAR(50) NOT NULL,
    Position NVARCHAR(50) NOT NULL,
    Province NVARCHAR(50) NOT NULL
)

CREATE TABLE [HumanResources].[SchoolBackground](
    ID INT PRIMARY KEY NOT NULL, FOREIGN KEY(StudentID) REFERENCES [HumanResources].[Student](ID),
    StudentID INT NOT NULL,
    SchoolName NVARCHAR(50) NOT NULL,
    SchoolLocation NVARCHAR(50) NOT NULL,
    GraduationDate DATE NOT NULL, CHECK(DATEDIFF(DAY, GraduationDate, GETDATE()) > 0),
    GraduationCertificate VARBINARY(MAX) NOT NULL,
) 

CREATE TABLE [HumanResources].[Address](
    ID INT PRIMARY KEY NOT NULL, FOREIGN KEY(ID) REFERENCES [HumanResources].[Student](ID),
    Province NVARCHAR(50) NOT NULL,
    District NVARCHAR(50) NOT NULL,
    StreetNo INT NOT NULL,
    HouseNo INT NOT NULL
) 

CREATE TABLE [Department].[Attendance](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    StudentID INT NOT NULL, FOREIGN KEY(StudentID) REFERENCES [HumanResources].[Student](ID),
    DeptCourseID INT NOT NULL,
    AttendanceDate DATE NOT NULL,
    PresentDays INT NOT NULL,
    AbsentDays INT NOT NULL,
    OffDays INT NOT NULL,
    Leave INT NOT NULL
) 

CREATE TABLE [Department].[Department](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    DeptName NVARCHAR(50) NOT NULL, CHECK(DeptName IN ('Midwifery', 'Pharmacy', 'Nursing', 'Labaratory')),
) 

CREATE TABLE [Department].[EducationalRank](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
    StaffID INT NOT NULL, FOREIGN KEY(StaffID) REFERENCES [HumanResources].[Staff](ID),
    RankName NVARCHAR(50) NOT NULL,
    RankDate DATE NOT NULL, CHECK(DATEDIFF(DAY, RankDate, GETDATE()) > 0)
) 

CREATE TABLE [Department].[Experience](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    StaffID INT NOT NULL, FOREIGN KEY(StaffID) REFERENCES [HumanResources].[Staff](ID),
    OrganizationName NVARCHAR(50) NOT NULL,
    OrganizationLocation NVARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL, CHECK(DATEDIFF(MONTH, StartDate, EndDate) > 0),
    OrganizationEmail NVARCHAR(50) NOT NULL, CHECK(OrganizationEmail LIKE '%@%.%'),
    OrganizationCell NVARCHAR(50) NOT NULL, CHECK (OrganizationCell LIKE '[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
)

CREATE TABLE [Department].[EducationalBackground](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    StaffID INT NOT NULL, FOREIGN KEY(StaffID) REFERENCES [HumanResources].[Staff](ID),
    Degree NVARCHAR(50) NOT NULL,
    CampusName NVARCHAR(50) NOT NULL,
    CampusLocation NVARCHAR(50) NOT NULL,
    GraduationDate DATE NOT NULL, CHECK(DATEDIFF(DAY, GraduationDate, GETDATE()) > 0),
    Attachment VARBINARY(MAX) NOT NULL
)

CREATE TABLE [Department].[Course](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    CourseName NVARCHAR(50) NOT NULL
)

CREATE TABLE [Department].[TimeTable](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    DeptCourseID INT NOT NULL, 
    TeacherID INT NOT NULL, FOREIGN KEY(TeacherID) REFERENCES [HumanResources].[Teacher](ID),
    PresentDay NVARCHAR(50) NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL
)

CREATE TABLE [Department].[Hostel](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    HostelType NVARCHAR(50) NOT NULL, CHECK(HostelType IN ('Male', 'Female'))
)

CREATE TABLE [Department].[HostelAttendance](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    HostelID INT NOT NULL, 
    RegistrationID INT NOT NULL, 
    AttendanceDate DATE NOT NULL, CHECK(DATEDIFF(DAY, AttendanceDate, GETDATE()) > 0),
    TotalDays INT NOT NULL,
    PresentDays INT NOT NULL,
    AbsentDays INT NOT NULL,
    OffDays INT NOT NULL,
    Leave INT NOT NULL,
    CHECK(TotalDays = (PresentDays + AbsentDays + OffDays + Leave))
)

CREATE TABLE [Department].[Tools](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Bed INT NOT NULL,
    Cupboard INT NOT NULL,
    Curtains INT NOT NULL,
    Fan INT NOT NULL,
    Heater INT NOT NULL,
    Blanket INT NOT NULL,
    Pillow INT NOT NULL,
    Carpet INT NOT NULL
)

CREATE TABLE [Department].[Room](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    HostelID INT NOT NULL, FOREIGN KEY(HostelID) REFERENCES [Department].[Hostel](ID),
    ToolsID INT NOT NULL, FOREIGN KEY(ToolsID) REFERENCES [Department].[Tools](ID),
    FloorNo INT NOT NULL
)

CREATE TABLE [Department].[HostelEmployee](
    ID INT PRIMARY KEY NOT NULL, FOREIGN KEY(ID) REFERENCES [HumanResources].[Employee](EmpID),
    HostelID INT NOT NULL, FOREIGN KEY (HostelID) REFERENCES [Department].[Hostel](ID),
)

CREATE TABLE [Department].[DeptCourse](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    DepartmentID INT NOT NULL, FOREIGN KEY(DepartmentID) REFERENCES [Department].[Department](EmpID),
    CourseID INT NOT NULL, FOREIGN KEY(CourseID) REFERENCES [Department].[Course](ID),
    SemesterNo INT NOT NULL, CHECK(SemesterNo <= 6)
)

CREATE TABLE [Department].[ExamTimeTable](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    CourseID INT NOT NULL, FOREIGN KEY(CourseID) REFERENCES [Department].[Course](ID),
    TeacherID INT NOT NULL, FOREIGN KEY(TeacherID) REFERENCES [HumanResources].[Teacher](ID),
    ExamDate DATE NOT NULL, CHECK(DATEDIFF(DAY, ExamDate, GETDATE(), ExamDate) > 0),
    ExamTime TIME NOT NULL,
)

CREATE TABLE [Score].[Score](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    StudentID INT NOT NULL, FOREIGN KEY(StudentID) REFERENCES [HumanResources].[Student](ID),
    TimeTableID INT NOT NULL, FOREIGN KEY(TimeTableID) REFERENCES [Department].[ExamTimeTable](ID),
    --Chance Max Count
    Chance INT NOT NULL, CHECK(Chance <= 2)
)

CREATE TABLE [Score].[ScoreDetails](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ScoreID INT NOT NULL, FOREIGN KEY(ScoreID) REFERENCES [Score].[Score](ID),
    ScoreType INT NOT NULL,
    ScorePercentage INT NOT NULL,
    ExamMarks INT NOT NULL
)

CREATE TABLE [Department].[HostelRegistration](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    HostelID INT NOT NULL, FOREIGN KEY(HostelID) REFERENCES [Department].[Hostel](ID),
    StudentID INT NOT NULL, FOREIGN KEY(StudentID) REFERENCES [HumanResources].[Student](ID),
    RegistrationDate INT NOT NULL,
    RoomID INT NOT NULL
)

CREATE TABLE [Department].[Clearance](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    RegistrationID INT NOT NULL, FOREIGN KEY(RegistrationID) REFERENCES [Department].[HostelRegistration](ID),
    Checked BINARY NOT NULL
)

CREATE TABLE [Department].[Group](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    StudentID INT NOT NULL, FOREIGN KEY(StudentID) REFERENCES [HumanResources].[Student](ID),
    DeptCourseID INT NOT NULL, FOREIGN KEY(DeptCourseID) REFERENCES [Department].[DeptCourse](ID),
    GroupName NVARCHAR(50) NOT NULL
)

CREATE TABLE [Department].[NightShift](
    ID INT PRIMARY KEY NOT NULL, FOREIGN KEY(ID) REFERENCES [Department].[Group](ID),
    TeacherID INT NOT NULL, FOREIGN KEY(TeacherID) REFERENCES [HumanResources].[Teacher](ID),
    NightShiftDate DATE NOT NULL
)

CREATE TABLE [Department].[Coordinator](
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    TeacherID INT NOT NULL, FOREIGN KEY(TeacherID) REFERENCES [HumanResources].[Teacher](ID),
    DepartmentID INT NOT NULL, FOREIGN KEY(DepartmentID) REFERENCES [Department].[Department](ID),
    HireDate DATE NOT NULL
)

CREATE TABLE [Department].[Enrollment](
    ID INT PRIMARY KEY NOT NULL, FOREIGN KEY(ID) REFERENCES [HumanResources].[Student](ID),
    DepartmentID INT NOT NULL, FOREIGN KEY(DepartmentID) REFERENCES [Department].[Department](ID),
    EnrollDate DATE NOT NULL
)

ALTER TABLE [HumanResources].[Staff] ADD
CONSTRAINT FK_Staff_Address 
FOREIGN KEY (ID)
REFERENCES [HumanResources].[Address](ID)

ALTER TABLE [HumanResources].[Staff] ADD
CONSTRAINT FK_Teacher_Staff
FOREIGN KEY (ID)
REFERENCES [HumanResources].[Teacher](ID)

ALTER TABLE [HumanResources].[Staff] ADD
CONSTRAINT FK_Employee_Staff
FOREIGN KEY (ID)
REFERENCES [HumanResources].[Employee](EmpID)

ALTER TABLE [Department].[DeptCourse] ADD
CONSTRAINT FK_Attendance_DeptCourse
FOREIGN KEY (ID)
REFERENCES [Department].[Attendance](ID)

ALTER TABLE [Department].[TimeTable] ADD
CONSTRAINT FK_TimeTable_DeptCourse
FOREIGN KEY (ID)
REFERENCES [Department].[DeptCourse](ID)

ALTER TABLE [Department].[HostelAttendance] ADD
CONSTRAINT FK_HostelAttendance_Hostel
FOREIGN KEY (ID)
REFERENCES [Department].[Hostel](ID)

ALTER TABLE [Department].[HostelAttendance] ADD
CONSTRAINT FK_HostelAttendance_HostelRegistration
FOREIGN KEY (ID)
REFERENCES [Department].[HostelRegistration](ID)
