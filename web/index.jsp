<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="CSS/table.css" rel="stylesheet">
        <script src="JS/results.js"></script>  
        
        <title>COMP-5531 Warm up Project</title>
    </head>
    <body>
        <div class="content" style="margin-left: 20px;">
            <h2>COMP-5531 Warm up Project</h2>
        <!-- Tabs navs -->
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#menu3">E/R Diagram </a></li>
                <li><a data-toggle="tab" href="#menu1">Run Queries</a></li>
                <li><a data-toggle="tab" href="#menu2">Show Tables</a></li>
                <li><a data-toggle="tab" href="#menu4">Show Count</a></li>
            </ul>
        <!-- Tabs navs -->

        <!-- Tabs content -->
            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h3>Member details</h3>
                    <div>
                        <table>
                          <tr>
                            <th>Student Name</th>
                            <th>Student Id</th>
                            <th>Email</th>
                          </tr>
                          <tr>
                            <td>Anushree Anjanappa</td>
                            <td>40192958</td>
                            <td>anushreeanjanappa@gmail.com</td>
                          </tr>
                          <tr>
                            <td>Cyril Ike</td>
                            <td>40161405</td>
                            <td>cygital@gmail.com</td>
                          </tr>
                          <tr>
                            <td>Mohammad Aslam Khan</td>
                            <td>40205450</td>
                            <td>aslam.gnit@gmail.com</td>
                          </tr>
                          <tr>
                            <td>Pritam Kumar Pratihari</td>
                            <td>40205864</td>
                            <td>official.pritamkumar@gmail.com</td>
                          </tr>
                        </table>
                    </div>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <h3>Run Queries</h3>
                    <div>
                        <div class="first" style="width: 60%; float:left">
                            <table>
                                <tr>
                                    <th>S.No.</th>
                                  <th>Question</th>
                                  <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                  <td>
                                      For every facility in the system, get the province name where the facility is located, the facility name, the maximum number of employees that the facility needs to operate, and the total number of employees currently working for the facility.
                                  </td>
                                  <td><button type="button" id="q1" onclick="showResult1()">Run</button></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>
                                        For every province, give the total number of facilities for each type of facility. Results should include province name, facility type, and total number of facilities for that type. Results should be displayed in ascending order by province name, then by total number of each type of facility.
                                    </td>
                                  <td><button type="button" id="q2" onclick="showResult2()">Run</button></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>
                                        For the facility ?Hospital Maisonneuve Rosemont?, give the details of all the nurses and doctors who are currently working and got infected at least once with COVID19. Details include employee?s first-name, last-name, role (nurse or doctor), Medicare card number, telephone-number, email address, and date of infection. Results should be displayed sorted in descending order by date of infection, then ascending order by first name, then ascending order by last name.
                                    </td>
                                  <td><button type="button" id="q3" onclick="showResult3()">Run</button></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>
                                       For the facility ?Hospital Maisonneuve Rosemont?, give the details of all the employees who are currently working and have never been vaccinated and have never been infected by COVID-19. Details include employee?s first-name, lastname, role (nurse, doctor, etc.), Medicare card number, telephone-number, and email address. Results should be displayed sorted in ascending order by role, then by first name, then by last name.
                                    </td>
                                  <td><button type="button" id="q4" onclick="showResult4()">Run</button></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>
                                        Give details of employees who worked in at least two different facilities. Details include employee?s first-name, last-name, start date, end date, facility name, role (nurse, doctor, etc.), Medicare card number, telephone-number, and email address. Results should be displayed sorted in ascending order by first name, then by last name, then by start date. 
                                    </td>
                                  <td><button type="button" id="q5" onclick="showResult5()">Run</button></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>
                                        For every vaccine type, give the total number of doses taken by employees in the system. Results should be displayed sorted in descending order by total number of doses. 
                                    </td>
                                  <td><button type="button" id="q6" onclick="showResult6()">Run</button></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>
                                        For every infection type in the system, give the total number of employees infected by that type in each province. Results should be displayed sorted in ascending order by infection type, then in descending order by total number of infections. 
                                    </td>
                                  <td><button type="button" id="q7" onclick="showResult7()">Run</button></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>
                                        For every employee in the system who is currently working and got infected at least 3 times, give the employee?s first-name, last-name, start date, facility name, role (nurse, doctor, etc.), Medicare card number, telephone-number, email address, and the total number of infections. Results should be displayed sorted in descending order by total number of infections, then by first name, then by last name. 
                                    </td>
                                  <td><button type="button" id="q8" onclick="showResult8()">Run</button></td>
                                </tr>
                            </table>
                        </div>
                        <div class="second" id="result1_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 1</h4>
                                    SELECT F.Province, F.Facility_Name, F.Capacity, Count(E.Medicare_Card_Number) as Number_Of_Employee From Facilities F, Employees E, Works_At W Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and W.End_Date IS NULL Group BY F.Province,F.Facility_Name;

                                </div>
                                <div class="grid-item">
                                    <h4> RESULT </h4>
                                    <table>
                                        <tr>
                                          <th>Province</th>
                                          <th>Facility_Name</th>
                                          <th>Capacity</th>
                                          <th>Number_Of_Employee</th>
                                        </tr>
                                    <%      
                                       Class.forName("com.mysql.jdbc.Driver");
                                       Connection con = DriverManager.getConnection("jdbc:mysql://qcc5531.encs.concordia.ca/qcc55314","qcc55314","PMAI4085");
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT F.Province, F.Facility_Name, F.Capacity, Count(E.Medicare_Card_Number) as Number_Of_Employee From Facilities F, Employees E, Works_At W Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and W.End_Date IS NULL Group BY F.Province,F.Facility_Name";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getInt(3)); %> </td>
                                            <td> <% out.print(rs.getInt(4)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                    </table>
                                    
                                </div>  
                            </div>
                            <br style="clear:both;"/>
                        </div>
                        <div class="second" id="result2_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 2 </h4>
                                    SELECT Province, Type, Count(Type) as Number_Of_Facility_type From Facilities Group BY Province,Type ORDER BY Province asc, Number_Of_Facility_type asc;

                                </div>
                                <div class="grid-item">
                                    <h4>RESULT</h4>
                                    <table>
                                        <tr>
                                          <th>Province</th>
                                          <th>Type</th>
                                          <th>Number_Of_Facility_type</th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT Province, Type, Count(Type) as Number_Of_Facility_type From Facilities Group BY Province,Type ORDER BY Province asc, Number_Of_Facility_type asc";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getInt(3)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                    </table>
                                </div>   
                            </div>
                            <br style="clear:both;"/>
                        </div>
                        <div class="second" id="result3_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 3</h4>
                                    SELECT E.First_Name, E.Last_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address, I.date_of_infection From Facilities F, Employees E, Works_At W, Infections I Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and I.medicare_number = E.Medicare_Card_Number and W.End_Date IS NULL and F.Facility_Name = "Hospital Maisonneuve Rosemont" and (E.Role = 'Nurse' or E.Role = 'Doctor') ORDER BY I.date_of_infection desc, E.First_Name asc, E.Last_Name asc;

                                </div>
                                <div class="grid-item">
                                    <h4>RESULT</h4>
                                    <table>
                                        <tr>
                                          <th>First_Name</th>
                                          <th>Last_Name</th>
                                          <th>Role</th>
                                          <th>Medicare_Card_Number</th>
                                          <th>Telephone_Number</th>
                                          <th>Email Address</th>
                                          <th>date_of_infection</th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT E.First_Name, E.Last_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address, I.date_of_infection From Facilities F, Employees E, Works_At W, Infections I Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and I.medicare_number = E.Medicare_Card_Number and W.End_Date IS NULL and F.Facility_Name = 'Hospital Maisonneuve Rosemont' and (E.Role = 'Nurse' or E.Role = 'Doctor') ORDER BY I.date_of_infection desc, E.First_Name asc, E.Last_Name asc";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getString(3)); %> </td>
                                            <td> <% out.print(rs.getString(4)); %> </td>
                                            <td> <% out.print(rs.getString(5)); %> </td>
                                            <td> <% out.print(rs.getString(6)); %> </td>
                                            <td> <% out.print(rs.getDate(7)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                    </table>
                                </div>   
                            </div>
                            <br style="clear:both;"/>
                        </div> 
                        <div class="second" id="result4_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 4</h4>
                                    SELECT E.First_Name, E.Last_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address From Facilities F, Employees E, Works_At W Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and W.End_Date IS NULL and F.Facility_Name = "Hospital Maisonneuve Rosemont" and E.Medicare_Card_Number not in (SELECT medicare_number FROM Infections) and E.Medicare_Card_Number not in (SELECT Employee_Medicare_Card_Number FROM Vaccination) ORDER BY E.Role asc, E.First_Name asc, E.Last_Name asc;

                                </div>
                                <div class="grid-item">
                                    <h4>RESULT</h4>
                                    <table>
                                        <tr>
                                          <th>First_Name</th>
                                          <th>Last_Name</th>
                                          <th>Role</th>
                                          <th>Medicare_Card_Number</th>
                                          <th>Telephone_Number</th>
                                          <th>Email Address</th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT E.First_Name, E.Last_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address From Facilities F, Employees E, Works_At W Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and W.End_Date IS NULL and F.Facility_Name = 'Hospital Maisonneuve Rosemont' and E.Medicare_Card_Number not in (SELECT medicare_number FROM Infections) and E.Medicare_Card_Number not in (SELECT Employee_Medicare_Card_Number FROM Vaccination) ORDER BY E.Role asc, E.First_Name asc, E.Last_Name asc";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getString(3)); %> </td>
                                            <td> <% out.print(rs.getString(4)); %> </td>
                                            <td> <% out.print(rs.getString(5)); %> </td>
                                            <td> <% out.print(rs.getString(6)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                    </table>
                                </div>   
                            </div>
                            <br style="clear:both;"/>
                        </div> 
                        <div class="second" id="result5_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 5</h4>
                                    SELECT E.First_Name, E.Last_Name, W.Start_Date, W.End_Date, F.Facility_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address, count(W.Medicare_Card_Number) as Total_Facilities From Facilities F, Employees E, Works_At W Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number GROUP BY W.Medicare_Card_Number HAVING Total_Facilities > 1 ORDER BY E.First_Name asc, E.Last_Name asc, W.Start_Date asc;

                                </div>
                                <div class="grid-item">
                                    <h4>RESULT</h4>
                                    <table>
                                        <tr>
                                          <th>First_Name</th>
                                          <th>Last_Name</th>
                                          <th>Start_Date</th>
                                          <th>End_Date</th>
                                          <th>Facility_Name</th>
                                          <th>Role</th>
                                          <th>Medicare_Card_Number</th>
                                          <th>Telephone_Number</th>
                                          <th>Email Address</th>
                                          <th>Total_Facilities</th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT E.First_Name, E.Last_Name, W.Start_Date, W.End_Date, F.Facility_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address, count(W.Medicare_Card_Number) as Total_Facilities From Facilities F, Employees E, Works_At W Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number GROUP BY W.Medicare_Card_Number HAVING Total_Facilities > 1 ORDER BY E.First_Name asc, E.Last_Name asc, W.Start_Date asc";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getDate(3)); %> </td>
                                            <td> <% out.print(rs.getDate(4)); %> </td>
                                            <td> <% out.print(rs.getString(5)); %> </td>
                                            <td> <% out.print(rs.getString(6)); %> </td>
                                            <td> <% out.print(rs.getString(7)); %> </td>
                                            <td> <% out.print(rs.getString(8)); %> </td>
                                            <td> <% out.print(rs.getString(9)); %> </td>
                                            <td> <% out.print(rs.getInt(10)); %> </td>
                                            </tr>
                                            <%        
                                        }
                                        }
                                    %>
                                    </table>
                                </div>   
                            </div>
                            <br style="clear:both;"/>
                        </div> 
                        <div class="second" id="result6_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 6</h4>
                                    SELECT Type_of_Vaccination, sum(Dose_Number) as Total_Doses From Vaccination GROUP BY Type_of_Vaccination ORDER BY Total_Doses desc;

                                </div>
                                <div class="grid-item">
                                    <h4>RESULT</h4>
                                    <table>
                                        <tr>
                                          <th>Type_of_Vaccination</th>
                                          <th>Total_Doses</th>
                                        </tr>
                                        <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT Type_of_Vaccination, sum(Dose_Number) as Total_Doses From Vaccination GROUP BY Type_of_Vaccination ORDER BY Total_Doses desc";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getInt(2)); %> </td>
                                            </tr>
                                            <%        
                                        }
                                        }
                                    %>
                                    </table>
                                </div>
    
                            </div>
                            <br style="clear:both;"/>
                        </div> 
                        <div class="second" id="result7_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 7</h4>
                                    SELECT I.type_of_infection, E.Province, COUNT(I.medicare_number) as Total_Infections From Employees E, Infections I WHERE E.Medicare_Card_Number = I.medicare_number GROUP BY I.type_of_infection, E.Province ORDER BY I.type_of_infection asc, Total_Infections desc;

                                </div>
                                <div class="grid-item">
                                    <h4>RESULT</h4>
                                    <table>
                                        <tr>
                                          <th>type_of_infection</th>
                                          <th>Province</th>
                                          <th>Total_Infections</th>
                                        </tr>
                                        <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT I.type_of_infection, E.Province, COUNT(I.medicare_number) as Total_Infections From Employees E, Infections I WHERE E.Medicare_Card_Number = I.medicare_number GROUP BY I.type_of_infection, E.Province ORDER BY I.type_of_infection asc, Total_Infections desc";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getInt(3)); %> </td>
                                            </tr>
                                            <%        
                                        }
                                        }
                                    %>
                                    </table>
                                </div> 
                            </div>
                            <br style="clear:both;"/>
                        </div> 
                        <div class="second" id="result8_div" style="width: 40%; float:right; display:none;">
                            <div class="grid-container">
                                <div class="grid-item">
                                    <h4> SQL Query 8</h4>
                                    SELECT E.First_Name, E.Last_Name, W.Start_Date, F.Facility_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address, count(E.Medicare_Card_Number) as Total_Infections From Facilities F, Employees E, Works_At W, Infections I Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and I.medicare_number = E.Medicare_Card_Number and W.End_Date IS NULL GROUP BY E.Medicare_Card_Number HAVING Total_Infections > 2 ORDER BY Total_Infections desc, E.First_Name desc, E.Last_Name desc;

                                </div>
                                <div class="grid-item">
                                    <h4>RESULT</h4>
                                    <table>
                                        <tr>
                                          <th>First_Name</th>
                                          <th>Last_Name</th>
                                          <th>Start_Date</th>
                                          <th>Facility_Name</th>
                                          <th>Role</th>
                                          <th>Medicare_Card_Number</th>
                                          <th>Telephone_Number</th>
                                          <th>Email Address</th>
                                          <th>Total_Infections</th>
                                        </tr>
                                        <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT E.First_Name, E.Last_Name, W.Start_Date, F.Facility_Name, E.Role, E.Medicare_Card_Number, E.Telephone_Number, E.Email_Address, count(E.Medicare_Card_Number) as Total_Infections From Facilities F, Employees E, Works_At W, Infections I Where F.Facility_Name = W.Facility_Name and E.Medicare_Card_Number = W.Medicare_Card_Number and I.medicare_number = E.Medicare_Card_Number and W.End_Date IS NULL GROUP BY E.Medicare_Card_Number HAVING Total_Infections > 2 ORDER BY Total_Infections desc, E.First_Name desc, E.Last_Name desc";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getDate(3)); %> </td>
                                            <td> <% out.print(rs.getString(4)); %> </td>
                                            <td> <% out.print(rs.getString(5)); %> </td>
                                            <td> <% out.print(rs.getString(6)); %> </td>
                                            <td> <% out.print(rs.getString(7)); %> </td>
                                            <td> <% out.print(rs.getString(8)); %> </td>
                                            <td> <% out.print(rs.getInt(9)); %> </td>
                                            </tr>
                                            <%        
                                        }
                                        }
                                    %>
                                    </table>
                                </div>    
                            </div>
                            <br style="clear:both;"/>
                        </div> 
                    </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <h3>Show tables</h3>
                    <div class="grid-container">
                        <div class="grid-item">
                            <h4>Facilities Table</h4>
                                <table>
                                        <tr>
                                          <th>Facility_Name</th>
                                          <th>Address</th>
                                          <th>City</th>
                                          <th>Province</th>
                                          <th>Postal_Code</th>
                                          <th>Phone_Number</th>
                                          <th>Web_Address</th>
                                          <th>Type</th>
                                          <th>Capacity</th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT * FROM Facilities";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getString(3)); %> </td>
                                            <td> <% out.print(rs.getString(4)); %> </td>
                                            <td> <% out.print(rs.getString(5)); %> </td>
                                            <td> <% out.print(rs.getString(6)); %> </td>
                                            <td> <% out.print(rs.getString(7)); %> </td>
                                            <td> <% out.print(rs.getString(8)); %> </td>
                                            <td> <% out.print(rs.getInt(9)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                </table>
                        </div>
                        <div class="grid-item">
                            <h4>Employees Table</h4>
                                <table>
                                        <tr>
                                          <th>Medicare_Card_Number</th>
                                          <th>First_Name</th>
                                          <th>Last_Name </th>
                                          <th>Date_of_Birth </th>
                                          <th>Telephone_Number </th>
                                          <th>Address </th>
                                          <th>City </th>
                                          <th>Province </th>
                                          <th>Postal_Code </th>
                                          <th>Citizenship  </th>
                                          <th>Email_Address  </th>
                                          <th>Role </th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT * FROM Employees";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getString(3)); %> </td>
                                            <td> <% out.print(rs.getDate(4)); %> </td>
                                            <td> <% out.print(rs.getString(5)); %> </td>
                                            <td> <% out.print(rs.getString(6)); %> </td>
                                            <td> <% out.print(rs.getString(7)); %> </td>
                                            <td> <% out.print(rs.getString(8)); %> </td>
                                            <td> <% out.print(rs.getString(9)); %> </td>
                                            <td> <% out.print(rs.getString(10)); %> </td>
                                            <td> <% out.print(rs.getString(11)); %> </td>
                                            <td> <% out.print(rs.getString(12)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                </table>
                        </div>
                        <div class="grid-item">
                            <h4>Works_At Table</h4>
                                <table>
                                        <tr>
                                          <th>Medicare_Card_Number </th>
                                          <th>Facility_Name </th>
                                          <th>Start_Date </th>
                                          <th>End_Date </th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT * FROM Works_At";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getDate(3)); %> </td>
                                            <td> <% out.print(rs.getDate(4)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                </table>
                        </div>
                        <div class="grid-item">
                            <h4>Infections  Table</h4>
                                <table>
                                        <tr>
                                          <th>infection_id </th>
                                          <th>medicare_number </th>
                                          <th>date_of_infection </th>
                                          <th>type_of_infection </th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT * FROM Infections";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getInt(1)); %> </td>
                                            <td> <% out.print(rs.getString(2)); %> </td>
                                            <td> <% out.print(rs.getDate(3)); %> </td>
                                            <td> <% out.print(rs.getString(4)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                </table>
                        </div>
                        <div class="grid-item">
                            <h4>Vaccination Table</h4>
                                <table>
                                        <tr>
                                          <th>Employee_Medicare_Card_Number </th>
                                          <th>Vaccination_Date </th>
                                          <th>Type_of_Vaccination </th>
                                          <th>Dose_Number </th>
                                        </tr>
                                    <%      
                                       try (Statement stmt = con.createStatement()) {
                                            String query = "SELECT * FROM Vaccination";
                                            ResultSet rs = stmt.executeQuery(query);
                                            while(rs.next()) { %>
                                            <tr>
                                            <td> <% out.print(rs.getString(1)); %> </td>
                                            <td> <% out.print(rs.getDate(2)); %> </td>
                                            <td> <% out.print(rs.getString(3)); %> </td>
                                            <td> <% out.print(rs.getInt(4)); %> </td>
                                            </tr>
                                    <%        
                                        }
                                        }
                                    %>
                                </table>
                        </div>
                    </div>
                </div>
                                
                <div id="menu3" class="tab-pane fade">
                    <h3>E/R Diagram</h3>
                    <img src="res/ERDiagram.JPG" width="90%" height="90%"/>
                </div>
                                
                <div id="menu4" class="tab-pane fade">
                    <h3>COUNT</h3>
                    <div class="grid-container">
                        <div class="grid-item">
                            <h4>1. Facilities Table</h4>
                            <h4>SELECT COUNT(*) FROM Facilities</h4>
                            <%      
                                try (Statement stmt = con.createStatement()) {
                                String query = "SELECT COUNT(*) FROM Facilities";
                                ResultSet rs = stmt.executeQuery(query);
                                while(rs.next()) { %>
                                <h5> <% out.println(rs.getInt(1));%></h5>
                            <%        
                                    }
                                }
                            %>
                        </div>
                        <div class="grid-item">
                            <h4>2. Employees Table</h4>
                            <h4>SELECT COUNT(*) FROM Employees</h4>
                            <%      
                                try (Statement stmt = con.createStatement()) {
                                String query = "SELECT COUNT(*) FROM Employees";
                                ResultSet rs = stmt.executeQuery(query);
                                while(rs.next()) { %>
                                <h5> <% out.println(rs.getInt(1));%></h5>
                            <%        
                                    }
                                }
                            %>
                        </div>
                        <div class="grid-item">
                            <h4>3. Works_At Table</h4>
                            <h4>SELECT COUNT(*) FROM Works_At</h4>
                            <%      
                                try (Statement stmt = con.createStatement()) {
                                String query = "SELECT COUNT(*) FROM Works_At";
                                ResultSet rs = stmt.executeQuery(query);
                                while(rs.next()) { %>
                                <h5> <% out.println(rs.getInt(1));%></h5>
                            <%        
                                    }
                                }
                            %>
                        </div>
                        <div class="grid-item">
                            <h4>4. Infections Table</h4>
                            <h4>SELECT COUNT(*) FROM Infections</h4>
                            <%      
                                try (Statement stmt = con.createStatement()) {
                                String query = "SELECT COUNT(*) FROM Infections";
                                ResultSet rs = stmt.executeQuery(query);
                                while(rs.next()) { %>
                                <h5> <% out.println(rs.getInt(1));%></h5>
                            <%        
                                    }
                                }
                            %>
                        </div>
                        <div class="grid-item">
                            <h4>5. Vaccination Table</h4>
                            <h4>SELECT COUNT(*) FROM Vaccination</h4>
                            <%      
                                try (Statement stmt = con.createStatement()) {
                                String query = "SELECT COUNT(*) FROM Vaccination";
                                ResultSet rs = stmt.executeQuery(query);
                                while(rs.next()) { %>
                                <h5> <% out.println(rs.getInt(1));%></h5>
                            <%        
                                    }
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        <!-- Tabs content -->
        </div>
    </body>
</html>
