create database  BloodBank;
use BloodBank;

create table BloodDonars (
    EmployeeID int primary key auto_increment,
    FullName varchar (250),
    MobileNumber char (15),
    EmailID varchar(20),
    Gender varchar (10),
    Age int (10),
    BloodGroup varchar(50),
    Address varchar (250),
    PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status int(5));
    
    
    create table BloodGroup (
        Empid int primary key	auto_increment,
         BloodGroup varchar (250),
         PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP);
         
  INSERT INTO blooddonars (`Employeeid`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`,`PostingDate`, `status`) 
                 VALUES (1, 'Anuj Kumar', '9999857868', 'anuj@gmail.com', 'Male', 27, 'O+', ' Bangalore', '2017-06-30 20:14:16', 1),
						(2, 'dasdasd', '41241241241', 'dasdasd@dfdsf.com', 'Male', 34, 'AB-', ' Ranchi ','2017-06-30 20:48:11', 1),
                        (3, 'Ami', '99352352352', 'rah.s098@gmail.com', 'Male', 23, 'A+', NULL, '2017-07-01 07:21:21', 1),
                        (4, 'Raj', '99345435345', 'rah.s7788@gmail.com', 'Female', 26, 'B+', NULL,'2017-07-01 07:21:42', 1),
                        (5, 'Nit esh Kumart', '9269855244', 'niiii@test.com', 'Male', 32, 'A-', 'Kolkata','2017-07-01 09:00:18', 1),
                        (6, 'Anuj Kumar', '9999857868', 'anuj@gmail.com', 'Male', 27, 'O+', ' Delhi', '2017-06-30 20:14:16', 1),
						(7, 'Dada', '99241241241','dasdasd@dfdsf.com', 'Male', 34, 'AB-', 'pune','2017-06-30 20:48:11', 1),
                        (8, 'Amit', '98352352352','akku@gmail.com', 'Male', 23, 'A+', NULL,  '2017-07-01 07:21:21', 1),
						(9, 'Rahul sinha', '92345435345','alok12@gmail.com', 'Female', 26, 'B+', NULL,'2017-07-01 07:21:42', 1),
						(10, 'Pranjal', '9969855244','akku58@test.com', 'Male', 32, 'B+', NULL,'2017-07-01 09:00:18', 1);
                        
                        
      INSERT INTO bloodgroup
					 VALUES  (1, 'A-', '2017-06-30 20:33:50'),
			                 (2, 'AB-', '2017-06-25 20:34:00'),
			                 (3, 'O+', '2017-06-24 20:34:05'),
                             (4, 'A-', '2017-06-22 20:34:10'),
                             (5, 'A+', '2017-06-15 20:34:13'),
		                     (6, 'AB+', '2017-06-12 20:34:18'),
                             (7, 'B+', '2017-06-02 20:33:50'),
			                 (8, 'AB-', '2017-06-20 20:34:00'),
			                 (9, 'O-', '2017-06-18 20:34:05'),
                             (10, 'A+', '2017-06-30 20:34:10');
   

          
          alter table bloodbank.blooddonars 
          add constraint FK_Users_EmployeeID
          foreign key(EmployeeID) references bloodgroup(EmpID);

		
          
          ALTER TABLE bloodbank.bloodgroup
		  MODIFY Empid int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
          
          set sql_safe_updates = 0;
          
          update bloodbank.blooddonars
          set EmailID = 'rah.s098@gmail.com'
		  where EmployeeID = 9;


          update bloodbank.blooddonars
          set Gender = 'Male'
		  where EmployeeID = 9;
          
          
          
          SELECT BloodGroup
          FROM bloodbank.blooddonars;
          
          SELECT 
          DISTINCT bloodgroup 
          FROM bloodbank.blooddonars;
          
          # Display the list of bloodbank which start A
            select FullName
            from bloodbank.blooddonars
            where fullname like 'a%';
            
		# Display the list of gender Male.
            SELECT BloodGroup,Gender
            FROM bloodbank.blooddonars
            WHERE  Gender ='Male';
        
        # Display Top 5 Male Bloodgroup list    
           select fullname,BloodGroup
           from bloodbank.blooddonars
		   where Gender = 'male'
		   order by fullname desc
           limit 5;
            

         # Sort by Highest to lowest bloodgroup and then by fullname asc
		   Select BloodGroup,FullName
           from bloodbank.blooddonars
           Order by BloodGroup desc,FullName asc ;
           
           
           # Display all Text fullname at the top,then alphanumeric fullname,then numeric fullname
		   # and then sort by fullname again in same group
             Select fullname
			 from bloodbank.blooddonars
			 Order by case
             when fullname not regexp '[0-9]' then 1
             when fullname regexp '[A-Z]' then 2
             else 3
             end asc,fullname asc;

          #  Display the list of bloodgroup o+
               select BloodGroup,fullname
               from bloodbank.blooddonars
               where BloodGroup = 'o+';
               
               
		 #   Display the list of age lessthan bloodgroup
             select Age,BloodGroup
             from bloodbank.blooddonars
             where age < 30  and BloodGroup = 'a+';
             
             
         #  Display the list of age < 30
            select Age,BloodGroup
            from bloodbank.blooddonars
            where age < 30;
               
               
         
         


