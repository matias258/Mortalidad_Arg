create or replace table defunciones (id NUMBER, PROVRES NUMBER, SEXO NUMBER, CAUSA VARCHAR, MUERTE_MATERNA CHAR, GRUPEDAD VARCHAR(1), CUENTA NUMBER );
select * 
from 'datasets/defweb05.csv'
