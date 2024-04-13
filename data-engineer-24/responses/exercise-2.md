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


| Column Name | Type | Description |
| --- | --- | --- |
| a | b | c |

## Dimension
| Column Name | Type | Description |
| --- | --- | --- |
| example | varchar | some text here |
