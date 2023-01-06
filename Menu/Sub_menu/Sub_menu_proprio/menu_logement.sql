PROMPT*                     *****************************************************
PROMPT*                     *****************************************************
PROMPT*                     *                                                   *
PROMPT*                     *     1.  Afficher la liste de ces logements        *
PROMPT*                     *                                                   *
PROMPT*                     *     2. Ajouter un logement                        *
PROMPT*                     *                                                   *
PROMPT*                     *     3. Modifier un logement                       *
PROMPT*                     *                                                   *
PROMPT*                     *     4. Supprimer un logement                      *
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
    when '1' then '@FONCTIONNALITES\FonctionnaliteProprietaire\ConsulterListeLogement.sql'
    when '2' then '@FONCTIONNALITES\FonctionnaliteProprietaire\CreationLogement.sql'
    when '3' then '@FONCTIONNALITES\FonctionnaliteProprietaire\EdtiterLogement.sql'
    when '4' then '@FONCTIONNALITES\FonctionnaliteProprietaire\SupprimerLogement.sql'
    when '5' then '@Menu\Menu_principal_proprio.sql'
end as script
from dual;
set term on 
  @&v_script;