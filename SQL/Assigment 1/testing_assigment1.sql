DROP DATABASE IF EXISTS TestingSystem;
CREATE DATABASE TestingSystem;
USE TestingSystem;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
	DepartmentID 			INT,
    DepartmentName 			VARCHAR(50)
);


DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position`(
	PositionID				INT,
    PositionName			VARCHAR(50)
);

DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account`(
	AccountID				INT,
    Email					VARCHAR(50),
    Username				VARCHAR(50),
    FullName				CHAR(50),
    DepartmentID 			INT,
    PositionID				INT,
    CreateDATE				DATE
);

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group`(
	GroupID					INT,
    GroupName				VARCHAR(50),
    CreatorID				INT,
    CreateDATE				DATE
);

DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount(
	GroupID					INT,
    AccountID				VARCHAR(50),
    JoinDATE				DATE
);

DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion (
    TypeID 		INT,
    TypeName 	VARCHAR(50)
);

DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion(
    CategoryID				INT,
    CategoryName			VARCHAR(50) 
);

DROP TABLE IF EXISTS Question;
CREATE TABLE Question(
    QuestionID				INT,
    Content					VARCHAR(50) ,
    CategoryID				INT,
    TypeID					INT,
    CreatorID				INT,
    CreateDATE				DATE
);

DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
    Answers					INT,
    Content					VARCHAR(50),
    QuestionID				INT,
    isCorrect				BIT 
);

DROP TABLE IF EXISTS Exam;
CREATE TABLE Exam(
    ExamID					INT,
    Code					VARCHAR(10),
    Title					VARCHAR(50),
    CategoryID				INT,
    Duration				INT,
    CreatorID				INT,
    CreateDATE				DATE
);

DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion(
    ExamID				INT,
	QuestionID			INT
);





