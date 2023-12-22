use practoapp1;
-- Create the User table
CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
	age VARCHAR(10),user
    contact_number VARCHAR(20),
    gender VARCHAR(10)
    -- Add other user-specific fields as needed
);

-- Create the Patient table
CREATE TABLE patient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(255) NOT NULL,
    age VARCHAR(10),
    contact_number VARCHAR(20),
    gender VARCHAR(10),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

-- Create the LabTest table for booking lab tests
CREATE TABLE lab_test (
    id INT AUTO_INCREMENT PRIMARY KEY,
    test_name VARCHAR(255) NOT NULL,
    user_id INT default null,
    description varchar(255)
);
CREATE TABLE appointment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    labtest_id INT,
    appointment_date TIMESTAMP, -- Include the appointment date/time
    -- Add other appointment-specific fields as needed
    FOREIGN KEY (user_id) REFERENCES users (id), -- Reference the user
    FOREIGN KEY (labtest_id) REFERENCES lab_test (id)-- Reference the lab test

);
CREATE TABLE testresult (
    testresult_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(70) NOT NULL,
    result text NOT NULL,
    test_name VARCHAR(50) NOT NULL
);


