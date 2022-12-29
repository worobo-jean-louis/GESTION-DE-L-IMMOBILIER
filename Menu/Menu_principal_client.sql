PROMPT ******************************************* JE VOUS SOUHETE LA BIENVENUE SUR LE PROGRAMME DE GESTION DE LOCATION DE LOGEMENTS *******************************************

PROMPT*
PROMPT*                   
PROMPT*                                       *************************************************              
PROMPT*                                       *************************************************              
PROMPT*                                       *************************************************              
PROMPT*                                       *************************************************              
PROMPT*                                       *                                               *
PROMPT*                                       *    1. Rechercher un logement                  *
PROMPT*                                       *                                               *
PROMPT*                                       *    2. Consulter les quartiers d une ville     *
PROMPT*                                       *                                               *
PROMPT*                                       *    3. Consulter la liste des villes           *
PROMPT*                                       *                                               *
PROMPT*                                       *    4. Consulter les details d un logements     *                                  
PROMPT*                                       *                                               *
PROMPT*                                       *    5. Enregistrer son interets a un logement  *                                      
PROMPT*                                       *                                               *
PROMPT*                                       *    6. Accepter un rendez-vous                 *
PROMPT*                                       *                                               *
PROMPT*                                       *    7. Refuser un rendez-vous                  *
PROMPT*                                       *                                               *
PROMPT*                                       *    8. Sortir                                  *
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
    when '1' then '@FONCTIONNALITES\FonctionnaliteClient\RechercherLogement.sql'
    when '2' then '@FONCTIONNALITES\FonctionnaliteClient\ConsulterQuartier.sql'
    when '3' then '@FONCTIONNALITES\FonctionnaliteClient\ConsulterListeVille.sql'
    when '4' then '@FONCTIONNALITES\FonctionnaliteClient\ConsulterDetailLogement.sql'
    when '5' then '@FONCTIONNALITES\FonctionnaliteClient\EnregistrerInteret.sql'
    when '6' then '@FONCTIONNALITES\FonctionnaliteClient\EnregistrerInteret.sql'
end as script
from dual;
set term on 
  @&v_script;