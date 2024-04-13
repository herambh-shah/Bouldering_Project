# Exercise 2

## Business Process Description
Fact Table -
ClimbingClassRegistrations: This is the central table that records every instance of a customer registering for a climbing class.

Dimension Tables -
 DimDateTimeSlot: Combines date and time into one table, detailing when classes are scheduled. DimCustomer: Contains demographic and contact information for customers, along with their climbing experience level. 
 DimClassType: Describes the different types of climbing classes available, including the difficulty level and what the class entails. 
 DimInstructor: Lists the instructors, their qualifications, and any other relevant information that identifies who is teaching the class. 
 DimMembershipType: Outlines the various membership options available at the gym, detailing the benefits and terms of each type. 
 DimPaymentMethod: Describes the different methods of payment that customers can use to pay for classes, such as credit cards, cash, or online payments.

## Fact Table

| Column Name           |    Type        | Description                                   |
|RegistrationID	        |    INT         | Unique identifier for each registration       |
|DateTimeSlotKey	    |    INT         | Foreign key to the DateTimeSlot dimension     |
|CustomerKey            |    INT         | Foreign key to the Customer dimension         |
|ClassTypeKey           |    INT         | Foreign key to the ClassType dimension        |
|InstructorKey          |    INT         | Foreign key to the Instructor dimension       |
|MembershipTypeKey      |    INT         | Foreign key to the MembershipType dimension   |
|PaymentKey             |    INT         | Foreign key to the PaymentMethod dimension    |
|RegistrationFee	    | DECIMAL(10,2)  | Fee charged for the class registration        |
|EquipmentRentalIncluded|     BIT	     | Indicates if equipment rental is included     |

| Column Name | Type | Description |
| --- | --- | --- |
| a | b | c |

## Dimension
| Column Name | Type | Description |
| --- | --- | --- |
| example | varchar | some text here |
