DB_HW1_README

Below are the assumption made for STEM_ORG in my DB design
1. The relationship between students and enrollment is made optional. Because initially at least when the student join the institution they might not have selected classes. In that case the relationship can be optional at least in the beginning
2. A project should be compulsorily supervised by only one professor. A project can be part of many Project groups.
3. The same coding class can be handled by different instructors, who refers their own textbooks.(i.e the different sections of same coding class can be handled by different instructors. E.g. In DB 585 the DBMS Design part is taught by one prof, SQL is handled by another prof. This makes DBMS 585 handled by many instructors)
4. A student can be a part of many projects.

Design choices that I have made for this ERD:
1. The students can enrolls for multiple classes and the classes can be have multiple students. To handle this M:N relationship I have introduced an associate entity COURSE_ENROLL and PROJECT_ENROLL(with two  1:M relations) just to get students enroll for classes and projects. Students pay a single flat fee for the entire curriculum, so that exists as a 1:1 relationship with FEE_PAYMENT
2. Since the relationship between classes, instructors and textbooks is M:N, an associate entity COURSE_DETAILS is created to establish a relationship between students, instructors and textbooks with 1:M relation individually.
3. Projects are done in project groups of 4 students. So in the PROJECT_GRP entity composite key (STUDENT_ID and PROJECT_GRP_ID)is used to have a unique entry in the table for project groups. This Project grp entity also contains the TABLE_ID column which contains the ID of each table every project group is seated. Because of the assumption 2, the relationship between instructor and the project is made mandatory.
4. A project group is given a box of components and this COMPONENT_BOX table is in relation with COMPONENTS_TRACKER  and INVENTORY table in a strong relationship. Since components box has several parts, whose final condition should be checked, I have used COMPONENTS_TRACKER table to track the status and all parts details and quantity in stock are entered in INVENTORY table.
5. The order for parts are done by checking the INVENTORY for parts availability. The  relationship between parts and vendors is M:N, so a bridge entity ORDERS is used to make an entry for individual part and vendor.
6. The CODING_CLASS and ROOMS table are in M:N relationship, so a SCHEDULE bride entity is created to manage that in a 1:M relation.
7. STUDENTS borrow BOOKS and they are in 1:M relation.