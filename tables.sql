CREATE TABLE EMPLOYEE(
    EMP_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    EMPNAME VARCHAR(50),
    GENDER ENUM ('M','F','O'),
    GRADE_LEVEL VARCHAR(2),
    DOJ DATE,
    DESIGNATION VARCHAR(50),
    EMPTYPE ENUM('FULL-TIME','PART-TIME','CONTRACT'),
    EMPSTATUS ENUM('ACIVE','INACTIVE'),
    PROB_PERIOD INT,
    PROB_COMP_DATE DATE,
    TRAIN_PERIOD INT,
    CONTRACT_END DATE,
    SERV_PERIOD INT,
    WORK_EMAIL VARCHAR(50) UNIQUE,
    BRANCH VARCHAR(50),
    OFFICE VARCHAR(50),
    WORKSTATIONID VARCHAR(4) UNIQUE,
    EMP_ROLE VARCHAR(4),
    DEPT_ID REFERENCES DEPARTMENT(DEPT_ID),
    GRP_ID REFERENCES TEAM(GRP_ID),
    EMP_DET_ID REFERENCES EMPLOYEEDETAILS(EMP_DET_ID),
    USER_ID REFERENCES USER(USER_ID)
);

CREATE TABLE TEAM(
    GRP_ID INT PRIMARY KEY AUTO_INCREMENT,
    GM VARCHAR(50)
    DEPT_ID REFERENCES DEPARTMENT(DEPT_ID),
    PROJ_ID REFERENCES PROJECT(PROJ_ID),
)

CREATE TABLE DEPARTMENT(
    DEPT_ID INT PRIMARY KEY AUTO_INCREMENT,
    DEPARTMENT_NAME VARCHAR(30),
    HOD VARCHAR(50)
);

CREATE TABLE PROJECT(
    PROJ_ID INT PRIMARY KEY AUTO_INCREMENT,
    PM VARCHAR(50)
);

CREATE TABLE ATTENDANCE(
    EMP_ATT_ID INT PRIMARY KEY AUTO_INCREMENT,
    CL INT,
    PL INT,
    LEAVES_TAKEN INT,
    TOTAL_LEAVES INT,
    LEAVES_REM INT,
    LEAVE_DATE DATE,
    IS_APPROVED ENUM('Y','N'),
    LEAVE_INITIATED ENUM('Y','N'),
    LEAVE_REASON VARCHAR(255),
    EMP_ID INT REFERENCES EMPLOYEE(EMP_ID)
)

CREATE TABLE PAYROLL(
    PAYROLL_ID INT PRIMARY KEY AUTO_INCREMENT,
    CTC DECIMAL,
    HIKE DECIMAL,
    HIKE_DT DATE,
    EMP_ID INT REFERENCES EMPLOYEE(EMP_ID)
)

CREATE TABLE EMPLOYEEDETAILS(
    EMP_DET_ID INT PRIMARY KEY AUTO_INCREMENT ON DELETE CASCADE,
    PROFILE_PIC_DOC VARCHAR(255),
    PERMA_ADDR VARCHAR(100),
    PRIMARY_CONTACTNO VARCHAR(10),
    EMERGENCY_CONTACTNO VARCHAR(10),
    EMAIL_ID VARCHAR(30),
    DOB DATE,
    PRESENT_ADDR VARCHAR(100),
    NATIONALITY VARCHAR(20),
    BLOOD_GRP VARCHAR(3)
);

CREATE TABLE FAMILYDETAILS(
    FAMILY_ID INT PRIMARY KEY AUTOINCREMENT ON DELETE CASCADE,
    MARITAL_STAT ENUM ('SINGLE','MARRIED','DIVORCED','WIDOWED'),
    RELATION ENUM('SPOUSE', 'FATHER','MOTHER','BROTHER','SISTER','CHILD'),
    FAM_NAME VARCHAR(30),
    DOB DATE,
    OCCUPATION VARCHAR(30),
    CONTACTNO VARCHAR(10),
    EMP_ID INT REFERENCES EMPDETAILS(EMP_ID)
);

CREATE TABLE EMPLOYEEDOCUMENTS(
    EMP_DOC_ID INT PRIMARY KEY AUTO_INCREMENT ON DELETE CASCADE,
    PANCARD_DOC VARCHAR(50),
    PANCARDNO VARCHAR(10),
    ADHAAR_DOC VARCHAR(50),
    ADHAARNO VARCHAR(12),
    PASSPORT_DOC VARCHAR(50),
    PASSPORTNO VARACHAR(10),
    EMP_ID INT REFERENCES EMPDETAILS(EMP_ID)

);

CREATE TABLE QUALIFICATION_DETAILS(
    QD_ID INT PRIMARY KEY AUTO_INCREMENT ON DELETE CASCADE,
    HIGHEST_QUAL VARCHAR(50),
    HIGHEST_QUAL_DOC VARCHAR(50),
    _10TH_CERT VARCHAR(255),
    _12TH_CERT VARCHAR(255),
    EMP_ID INT REFERENCES EMPDETAILS(EMP_ID)

);

CREATE TABLE PROF_DETAILS(
    PROF_DEL_ID INT AUTO_INCREMENT ON DELETE CASCADE,
    NAME_OF_PREV_ORG VARCHAR(50),
    DESIGNATION VARCHAR(30),
    FROM_DATE DATE,
    TO_DATE DATE,
    RELEASE_LETTER_DOC VARCHAR(50),
    EMP_ID INT REFERENCES EMPDETAILS(EMP_ID)

)

CREATE TABLE USER(
    USER_ID INT PRIMARY KEY AUTO_INCREMENT,
    UNAME VARCHAR(30) UNIQUE,
    PASS VARCHAR(50),
    USER_ROLE VARCHAR(6) CHECK CONSTRAINT USER_ROLE IN ('ADMIN','USER')
)