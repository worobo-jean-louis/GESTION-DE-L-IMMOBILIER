  PROMPT ******************************************* JE VOUS SOUHETE LA BIENVENUE SUR LE PROGRAMME DE GESTION DE LOCATION DE LOGEMENTS *******************************************

PROMPT*
PROMPT*                   
PROMPT*                                       *************************************************              
PROMPT*                                       *************************************************              
PROMPT*                                       *************************************************              
PROMPT*                                       *************************************************              
PROMPT*                                       *                                               *
PROMPT*                                       *    1. Ajouter un quartier                     *
PROMPT*                                       *                                               *
PROMPT*                                       *    2. Ajouter une ville                       *
PROMPT*                                       *                                               *
PROMPT*                                       *    3. Desactiver un compte                    *
PROMPT*                                       *                                               *
PROMPT*                                       *    4. Aciver un compte                        *                                  
PROMPT*                                       *                                               *
PROMPT*                                       *    5. Supprimer un logement                   *                                      
PROMPT*                                       *                                               *
PROMPT*                                       *    6. Programmer un rendez vous               *
PROMPT*                                       *                                               *
PROMPT*                                       *    7. Editer un rendez vous                   *
PROMPT*                                       *                                               *
PROMPT*                                       *    8. Annuler un rendez vous                  *
PROMPT*                                       *                                               *
PROMPT*                                       *    9. Sortir                                  *
PROMPT*                                       *                                               *
PROMPT*                                       *************************************************
PROMPT*                                       *************************************************
PROMPT*                                       *************************************************
PROMPT*                                       *************************************************


accept selection prompt "Choisissez une option : " 
  set term off
  set define on

column script new_value v_script

select case '&selection'
    when '1' then '@FONCTIONNALITES\FonctionnaliteAdmin\InsertionQuartier.sql'
    when '2' then '@FONCTIONNALITES\FonctionnaliteAdmin\InsertionVille.sql'
    when '3' then '@FONCTIONNALITES\FonctionnaliteAdmin\DesactiverCompte.sql'
    when '4' then '@FONCTIONNALITES\FonctionnaliteAdmin\AciverCompte.sql'
    when '5' then '@FONCTIONNALITES\FonctionnaliteAdmin\SupprimerLogement.sql'
    when '6' then '@FONCTIONNALITES\FonctionnaliteAdmin\ProgrammerRDV.sql'
    when '7' then '@FONCTIONNALITES\FonctionnaliteAdmin\EditerRendez-vous.sql'
    when '8' then '@FONCTIONNALITES\FonctionnaliteAdmin\SupprimerLogement.sql'
    when '9' then '@Menu\Main_menu.sql'
end as script
from dual;
set term on 
  @&v_script;