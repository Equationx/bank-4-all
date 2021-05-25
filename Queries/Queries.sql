-- all customers savings and checink balance.
select p.Fname, p.Lname, b.checking, b.savings
from paymentone.person p, paymentone.bank b
where ssn = b_ssn and p.bank_account_id = b.b_account_number
order by  savings desc;



-- same but decinding checking and  limited  to 3
select p.Fname, p.Lname, b.checking, b.savings
from paymentone.person p, paymentone.bank b
where ssn = b_ssn and p.bank_account_id = b.b_account_number
order by  checking desc
limit 3;



-- the avarege savings of all employees 
select avg(savings)
from bank;

-- total amount of money requested as credit and amount of customers
select sum(price) as "Total Credit Queries", count(distinct activity_online_id) as "Total custumers"
from onlineactivity;


-- customers with credit approval rating A. 
select p.Fname as "First Name", p.Lname as "Last Name"
from person p
where ssn in (
select p1.p_ssn
from profile1 p1 
where p1.credit_score > 700);


-- Customers with salary greater than 400 an hour will get approved.
select if(e.salary >= 300, "approved", "not approved") as "Salary Approvel", p.Fname, p.ssn, salary as "Hourly pay"
	from paymentone.employment e, paymentone.person p
	where e.emp_ssn = p.ssn 
	and e.employer_id = p.employer_id;


-- all customers that have 0 days missed at work
select p.Fname, p.Lname
from paymentone.person p
where p.ssn in (
		select e.emp_ssn
        from paymentone.employment e
		where e.total_hours_missed > 0);
       
       
-- loan qualification 
select p.Fname as "name", p.Lname as "last name", p.ssn, f.p_ssn, f.p_online_id,p.online_id, o.purchased_oder_id, o.price as "loan amount",
b.savings as "50 percents of account balance\nneeds to be greater than loan balance\nCurrent account balance",
if(savings * 50 > price, "Yes", "no") as "Does account balance qualify ",
if(p.bank_account_id = b.b_account_number,"yes", "no") as "does bank id and personal id match", 
if(f.credit_score >=500, "approve", "not approved") as "does customer's credit qualify",
p.bank_account_id as "personal Bank id",
b.b_account_number as "bank id"
from paymentone.person p, paymentone.onlineactivity o, paymentone.bank b, paymentone.profile1 f
where ssn = 111111111     and b_ssn = 111111111 and p_ssn = 111111111
and purchased_oder_id = 1 and online_id = 3     and p_online_id = 3
and savings * .50 >= price;


