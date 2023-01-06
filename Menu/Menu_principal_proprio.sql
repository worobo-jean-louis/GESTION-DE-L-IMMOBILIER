PROMPT ******************************************* JE VOUS SOUHETE LA BIENVENUE SUR LE PROGRAMME DE GESTION DE LOCATION DE LOGEMENTS *******************************************

PROMPT*
PROMPT*                   
PROMPT*                                             **********************************************              
PROMPT*                                             **********************************************              
PROMPT*                                             **********************************************              
PROMPT*                                             **********************************************              
PROMPT*                                             *                                            *
PROMPT*                                             *    1. Gerer vos publications               *
PROMPT*                                             *                                            *
PROMPT*                                             *    2. Gerer vos logements                  *
PROMPT*                                             *                                            *
PROMPT*                                             *    3. Sortir                               *
PROMPT*                                             *                                            *
PROMPT*                                             **********************************************
PROMPT*                                             **********************************************
PROMPT*                                             **********************************************
PROMPT*                                             **********************************************

  accept selection prompt "Choisissez votre compte   : " 
  set term off
  set define on

column script new_value v_script

select case '&selection'
    when '1' then '@Menu\Sub_menu\Sub_menu_proprio\Menu_publication.sql'
    when '2' then '@Menu\Sub_menu\Sub_menu_proprio\menu_logement.sql'
    when '3' then '@Menu\Main_menu.sql'
end as script
from dual;
set term on 
  @&v_script;