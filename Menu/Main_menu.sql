
PROMPT ******************************************* JE VOUS SOUHETE LA BIENVENUE SUR LE PROGRAMME DE GESTION DE LOCATION DE LOGEMENTS *******************************************

PROMPT*
PROMPT*                   
PROMPT*                                       **********************************************              
PROMPT*                                       **********************************************              
PROMPT*                                       **********************************************              
PROMPT*                                       **********************************************              
PROMPT*                                       *                                            *
PROMPT*                                       *    1. S'inscrire   
PROMPT*                                       *                                            *
PROMPT*                                       *    2. Se connecter                         *
PROMPT*                                       *                                            *
PROMPT*                                       *                                            *
PROMPT*                                       **********************************************
PROMPT*                                       **********************************************
PROMPT*                                       **********************************************
PROMPT*                                       **********************************************


  accept selection prompt "Choisissez une option : " 
  set term off
  set define on

column script new_value v_script

select case '&selection'
    when '1' then '@Menu/Sub_menu/Choix_compte.sql'
    when '2' then '@FONCTIONNALITES/FonctionnaliteClient/ConnecterClient.sql'
end as script
from dual;
set term on 
  @&v_script;
