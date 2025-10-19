INSERT INTO public.account(account_firstname, account_lastname, account_email, account_password)VALUES('Tony','Stark', 'tony@starknet.com', 'Iam1ronM@n');

UPDATE public.account SET account_type = 'Admin' WHERE account_firstname = 'Tony';

DELETE FROM public.account WHERE account_firstname = 'Tony'; 

UPDATE public.inventory
SET inv_description = REPLACE(inv_description,'the small interiors','a huge interior')
WHERE
	inv_make = 'GM'; 


SELECT 
	inv_make, 
	inv_model,
	classification_name
FROM
	public.inventory
INNER JOIN public.classification
	ON public.inventory.classification_id = public.classification.classification_id
WHERE classification_name = 'Sport'; 

UPDATE
	public.inventory
SET
	inv_image = REPLACE(inv_image,'/mages','/images/vehicles'), 
	inv_thumbnail = REPLACE(inv_thumbnail, '/images','/images/vehicles');
