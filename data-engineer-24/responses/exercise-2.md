# Exercise 2

## Business Process Description
Fact Table -
ClimbingClassRegistrations: This is the central table that records every instance of a customer registering for a climbing class.

Dimension Tables -
 DateTimeSlot: Combines date and time into one table, detailing when classes are scheduled. 
 
 Customer: Contains demographic and contact information for customers, along with their climbing experience level. 
 
 ClassType: Describes the different types of climbing classes available, including the difficulty level and what the class entails. 
 
 Instructor: Lists the instructors, their qualifications, and any other relevant information that identifies who is teaching the class. 
 
 MembershipType: Outlines the various membership options available at the gym, detailing the benefits and terms of each type. 
 
 PaymentMethod: Describes the different methods of payment that customers can use to pay for classes, such as credit cards, cash, or online payments.

## Fact Table
Fact Table - ClimbingClassRegistration
| Column Name | Type | Description |
| --- | --- | --- |
| RegistrationId | Int | Unique identifier for each registartion (Primary key) |
| DateKey | Int | Foreign key to the DateTimeSlot dimension |
| CustomerKey | Int | Foreign key to the Customer dimension |
| ClassTypeKey | Int | Foreign key to the ClassType dimension |
| InstructorKey | Int | Foreign key to the Instructor dimension |
| MembershipTypeKey | Int | Foreign key to the MembershipType dimension |
| PaymentKey | Int | Foreign key to the PaymentMethod dimension |
| RegistrationFee | DECIMAL(10,2) | Fee charged |
| EquipmentRentalIncluded | Bit | Boolean for checking if equipment is used |



## Dimension
DateTimeSlot
| Column Name | Type | Description |
| --- | --- | --- |
| DateKey | Int | Unique identifier for datetime table (Primary key) |
| Date | Date | Full Date of Class |
| StartTime | Int | Capture start time of class |
| EndTime | Int | Capture end time of class |

Customer
| Column Name | Type | Description |
| --- | --- | --- |
| CustomerKey | Int | Unique identifier for Customer table (Primary key) |
| CustomerId | varchar | Unique identifier for customer |
| Name | varchar | Customer's Name |
| Contact | varchar | Customer's Mobile Number |
| Experience level  | Enum | Climbing Experience |

ClassType
| Column Name | Type | Description |
| --- | --- | --- |
| ClassTypeKey | Int | Unique identifier for Classtype table (Primary key) |
| ClassName | varchar | Name of Class |
| ClassLevel | varchar | Difficulty of class |
| ClassDescription | String | Description of class |



