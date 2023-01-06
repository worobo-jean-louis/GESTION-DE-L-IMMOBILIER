
PROMPT ******************************************* JE VOUS SOUHETE LA BIENVENUE SUR LE PROGRAMME DE GESTION DE LOCATION DE LOGEMENTS *******************************************

PROMPT*
PROMPT*                   
PROMPT*                                       **********************************************              
PROMPT*                                       **********************************************              
PROMPT*                                       *                                            *
PROMPT*                                       *    1. Compte client                        *
PROMPT*                                       *                                            *
PROMPT*                                       *    2. Compte proprietaire                  *
PROMPT*                                       *                                            *
PROMPT*                                       *    3. Compte Admin                         *  
PROMPT*                                       *                                            *
PROMPT*                                       *                                            *
PROMPT*                                       **********************************************


  accept selection prompt "Choisissez votre compte   : " 
  set term off
  set define on

column script new_value v_script

select case '&selection'
    when '1' then '@FONCTIONNALITES\FonctionnaliteClient\ConnecterClient.sql'
    when '2' then '@FONCTIONNALITES\FonctionnaliteProprietaire\ConnecterProprietaire.sql'
    when '3' then '@FONCTIONNALITES\FonctionnaliteAdmin\ConnecterAdmin.sql'
end as script
from dual;
set term on 
  @&v_script;