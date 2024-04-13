# Exercise 2

## Business Process Description
Customers at a climbing gym register for climbing classes, choosing from various types and levels. The registration captures essential details like the class type, schedule, instructor, and payment, along with any membership benefits that apply. The gym records each transaction, including fees and payment methods.

Star Schema for OLAP
A star schema has been created for the climbing gym OLAP system, centered around the ClimbingClassRegistrations table, which records class registration transactions. It's surrounded by dimensions for time slots, customer details, class types, instructors, membership types, and payment methods, enabling multidimensional analysis.


## Fact Table
Fact Table - ClimbingClassRegistration
| Column Name | Type | Description |
| --- | --- | --- |
| RegistrationId | Int | Unique identifier for each registartion (Primary key) |
| DateKey | Int | Foreign key to the DateTimeSlot dimension |
| CustomerId | Int | Foreign key to the Customer dimension |
| ClassTypeKey | Int | Foreign key to the ClassType dimension |
| InstructorID | Int | Foreign key to the Instructor dimension |
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
| CustomerId | varchar | Unique identifier for customer(primary key) |
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

Instructor
| Column Name | Type | Description |
| --- | --- | --- |
| InstructorID | int | Primary key |
| Name | varchar | Full Name |
| Qualifications | String | Certifications and qualifications of instructor |

MembershipType
| Column Name | Type | Description |
| --- | --- | --- |
| MembershipTypeKey | int | Primary key |
| TypeName | varchar | name of membership type |
| Description | varchar | benefits and desciption of membership |

MembershipType
| Column Name | Type | Description |
| --- | --- | --- |
| MembershipTypeKey | int | Primary key |
| TypeName | varchar | name of membership type |
| Description | varchar | benefits and desciption of membership |

PaymentMethod
| Column Name | Type | Description |
| --- | --- | --- |
| Paymentkey | Int | Primary key |
| Method | varchar | Card method(credit, Debit, Zelle) |



