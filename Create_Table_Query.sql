CREATE TABLE Complaints(
Date_Received DATE,
Product VARCHAR (100),
Sub_Product VARCHAR (100),
Issue VARCHAR (100),
Sub_Issue VARCHAR (100),
Consumer_complaint_Narrative Text,
Company_public_response VARCHAR (250),
Company VARCHAR (100),
State Char(2),
Zip_code char(5),
Tags VARCHAR (100),
Consumer_consent_provided VARCHAR (100),
Submitted_via VARCHAR (50),
Date_sent_to_company DATE,
Company_response_to_Consumer VARCHAR (250),
Timely_response VARCHAR (25),
Consumer_Disputed VARCHAR (100),
Complaint_ID VARCHAR (10)

)