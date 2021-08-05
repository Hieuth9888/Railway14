 -- 2. Lấy ra tất cả các phòng ban 
 SELECT *FROM Department;
 
 -- 3. lấy ra id phòng ban sale
 SELECT DepartmentID FROM Department 
 WHERE DepartmentName = 'Sale';
 
 -- 4. lấy ra 1 account có full name dài nhất
SELECT * FROM `Account` 
WHERE length(FullName) = (SELECT MAX(length(FullName)) FROM `Account`)
ORDER BY FullName DESC;
-- 5
WITH cte_dep3 AS
(
SELECT 		* 
FROM 		`Account` 
WHERE DepartmentId = 3
)
SELECT 		* 
FROM 	cte_dep3 
WHERE 		LENGTH(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM cte_dep3)
ORDER BY 	Fullname DESC;
-- Question 6: lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT 		GroupName 
FROM 		`Group` 
WHERE 		CreateDate < '2019-12-20';

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời

SELECT 		QuestionID, COUNT(QuestionID) AS 'SL'
FROM 		Answer
GROUP BY 	QuestionID
HAVING 		COUNT(QuestionID) >= 4;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT 		`Code` 
FROM 		Exam
WHERE 		Duration >= 60 AND CreateDate < '2019-12-20';

-- Question 9: Lấy ra 5 group được tạo gần đây nhất
SELECT 		* 
FROM 		`Group`
ORDER BY 	CreateDate DESC 
LIMIT 5;

-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT  	 DepartmentId,COUNT(AccountID) AS 'SO NHAN VIEN' 
FROM 		`Account`
WHERE 		DepartmentID = 2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT 		Fullname 
FROM 		`Account`
WHERE 		(SUBSTRING_INDEX(FullName, ' ', -1)) LIKE 'D%o' ;

-- Question 12: xóa tất cả các exam được tạo trước ngày 20/12/2019
SET FOREIGN_KEY_CHECKS=0;
DELETE 
FROM 		Exam  
WHERE 		CreateDate < '2019-12-20';

-- Question 13: xóa tất cả các Account có FullName bắt đầu bằng 2 từ "Nguyễn Hải"
DELETE 
FROM 		`Account`
WHERE 		(SUBSTRING_INDEX(FullName,' ',2)) = 'Nguyễn Hải';

-- Question 14: update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE 		`Account` 
SET 		Fullname 	= 	N'Nguyễn Bá Lộc', 
			Email 		= 	'loc.nguyenba@vti.com.vn'
WHERE 		AccountID = 5;


-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE 		`GroupAccount` 
SET 		AccountID = 5 
WHERE 		GroupID = 4;