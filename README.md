# bank-4-all

#Introduction

#The database used in this project consists of the approval of a lease design for Internet ordering. The approval system depends on certain factors, such as employment, bank #savings, income, and a personal profile. Each transaction will have access to these factors and to the online activity which shows the item for which the lease is requested.
#
#Entities 

#The person entity is the heart of the database where a single person can enter confidential information such as social security number, bank account, address name, etc. Each #person will get an individual ID online ID that will be used for purchase and validation.

#Profile 

#The profile entity will also be created after the person entity. This entity collects various information about the user and the online activities allowed by the user. Some include education, criminal history, credit score, and others.This entity helps data analytics to associate customers who are most likely to pay on time.

#Online activity

#The online activity creates the entity that allows the purchase if approved. Here the IP source, date and price are collected before being sent to the approval entity. It requires an ID online and also create a purchase order ID number. 

#Transaction Credit Issued

#The transaction entity will have access to bank entity and employer entity, as well as user information and payment history, this is where the approval factors will be decisive.
#
#ER Model 
![image](https://user-images.githubusercontent.com/20079511/119564541-e888c480-bd76-11eb-8d31-55d8cf8f4850.png)

#Constrains And Relations

#Person: 

	 Online_id: not null, unique key,
	 Ssn: primary key, not null,
	 Fname: not null,  
	 name: not null.
#Pofile:

	 P_ssn: primary key, not null, foreign key,                   Reference: ssn in person Table
	 P_online_id: foreign key restriction on update and delete,   Reference: online_id in person Table
	 Credit_score: not null,
	 Criminal_record: not null. 
   
#Onlineactivity:

    purchased_order_id: primary key, not null, auto increment, 
    activity_online_id: foreign key, cascade on update, restrict deletion,    Reference: p_online_id in profile Table 
    url: not null.

#employment:

     employer_id: primary key, not null,
     emp_ssn: primary key, not null, foreign key restriction on update and delete.    Reference: ssn in person Table


#bank:
     
     b_account_number: primary key, not null, unique key,
     b_ssn: not null, foreign key.       Reference: ssn in person Table


#transaction_credit_issued:

    t_person_ssn: primary key, not null, 
    t_purchased_ord: foreign key restriction on update and delete,    Reference: purchased_order_id in Transaction_credit_issue Table
    t_person_ssn: foreingkey key restriction on update and delete,    Reference: t_person_ssn in employment Table
    t_person_online: foreign key restriction on update and delete.    Reference: p_online in person Table
#
# Person's Table 
![image](https://user-images.githubusercontent.com/20079511/119573053-b16be080-bd81-11eb-92ab-eee96a914f34.png)
![image](https://user-images.githubusercontent.com/20079511/119572890-75388000-bd81-11eb-9693-a895adb3eca8.png)
#
#More queries are found on the code section feel free to download and try!!
