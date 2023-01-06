PROMPT*                     *****************************************************
PROMPT*                     *****************************************************
PROMPT*                     *                                                   *
PROMPT*                     *     1.  Afficher la liste de ces publications     *
PROMPT*                     *                                                   *
PROMPT*                     *     2. Ajouter une publication                    *
PROMPT*                     *                                                   *
PROMPT*                     *     3. Modifier une publication                   *
PROMPT*                     *                                                   *
PROMPT*                     *     4. Supprimer un publication                   *
PROMPT*                     *                                                   *
PROMPT*                     *     5. Sortir                                     *
PROMPT*                     *                                                   *
PROMPT*                     *****************************************************
PROMPT*                     *****************************************************
PROMPT*                     *****************************************************

  accept selection prompt "Choisissez votre compte   : " 
  set term off
  set define on

column script new_value v_script

select case '&selection'
    when '1' then '@FONCTIONNALITES\FonctionnaliteProprietaire\ConsulterListePublication.sql'
    when '2' then '@FONCTIONNALITES\FonctionnaliteProprietaire\CreationPublication.sql'
    when '3' then '@FONCTIONNALITES\FonctionnaliteProprietaire\CreationPublication.sql'
    when '4' then '@FONCTIONNALITES\FonctionnaliteProprietaire\SupprimerPublcation.sql'
    when '5' then '@Menu\Menu_principal_proprio.sql'
end as script
from dual;
set term on 
  @&v_script;