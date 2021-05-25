-- update a record value can do same logic for different values 
update paymentone.profile1
set social_media = "n"
where p_ssn = '111111117';

-- update two rows
update paymentone.profile1
	set gamble = y
		where p_ssn in ('111111117', '111111116');
			
-- deleting date

delete from profile1
where p_ssn = '111111117';







select *
from  profile1;