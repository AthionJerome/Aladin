                                                                                                                                                       
ALTER TABLE fonction_log OWNER TO jeromeathion;                                                                                                        
                                                                                                                                                       
--                                                                                                                                                     
-- Name: TABLE fonction_log; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                        
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON TABLE fonction_log IS 'Gère les fonctions de l''application (pour la gestion des droits)';                                                  
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN fonction_log.fol_niveau; Type: COMMENT; Schema: public; Owner: jeromeathion                                                            
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN fonction_log.fol_niveau IS '1=Niveau catégorie, 2=Niveau fonction';                                                                  
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: forme_juridique; Type: TABLE; Schema: public; Owner: jeromeathion                                                                             
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE forme_juridique (                                                                                                                         
    foj_idforme_juridique bigint NOT NULL,                                                                                                             
    foj_libelle character varying(30) NOT NULL,                                                                                                        
    foj_lib_rech character varying(30),                                                                                                                
    foj_iactif integer                                                                                                                                 
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE forme_juridique OWNER TO jeromeathion;                                                                                                     
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fournisseur; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                 
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE fournisseur (                                                                                                                             
    fou_idfournisseur bigint NOT NULL,                                                                                                                 
    fou_identite bigint NOT NULL,                                                                                                                      
    fou_idcategorie bigint,                                                                                                                            
    fou_commentaire text                                                                                                                               
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE fournisseur OWNER TO jeromeathion;                                                                                                         
                                                                                                                                                       
--                                                                                                                                                     
-- Name: ligne_produit; Type: TABLE; Schema: public; Owner: jeromeathion                                                                               
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE ligne_produit (                                                                                                                           
    lip_idligne_produit bigint NOT NULL,                                                                                                               
    lip_idpiece bigint NOT NULL,                                                                                                                       
    lip_idproduit bigint,                                                                                                                              
    lip_prix_unitaire numeric,                                                                                                                         
    lip_quantite numeric,                                                                                                                              
    lip_tot_ht numeric,                                                                                                                                
    lip_tot_tva numeric,                                                                                                                               
    lip_tot_ttc numeric,                                                                                                                               
    lip_taux_tva numeric,                                                                                                                              
    lip_reference character varying(30),                                                                                                               
    lip_designation character varying(80),                                                                                                             
    lip_position integer,                                                                                                                              
    lip_idmise_page bigint                                                                                                                             
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE ligne_produit OWNER TO jeromeathion;                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN ligne_produit.lip_idproduit; Type: COMMENT; Schema: public; Owner: jeromeathion                                                        
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN ligne_produit.lip_idproduit IS 'Si vide = commentaire';                                                                              
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN ligne_produit.lip_reference; Type: COMMENT; Schema: public; Owner: jeromeathion                                                        
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN ligne_produit.lip_reference IS '$ si commentaire, sinon référence produit';                                                          
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN ligne_produit.lip_designation; Type: COMMENT; Schema: public; Owner: jeromeathion                                                      
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN ligne_produit.lip_designation IS 'Désignation du produit ou texte du commentaire';                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN ligne_produit.lip_position; Type: COMMENT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN ligne_produit.lip_position IS 'Position du produit dans la liste des produits de la pièce comptable (N° ordre)';                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: mise_en_page; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE mise_en_page (                                                                                                                            
    mep_idmise_en_page bigint NOT NULL,                                                                                                                
    mep_libelle character varying(40),                                                                                                                 
    mep_police character varying(50),                                                                                                                  
    mep_taille integer,                                                                                                                                
    mep_couleur integer,                                                                                                                               
    mep_gras integer,                                                                                                                                  
    mep_italique integer,                                                                                                                              
    mep_souligne integer,                                                                                                                              
    mep_barre integer,                                                                                                                                 
    mep_aligne integer,                                                                                                                                
    mep_defaut integer,                                                                                                                                
    mep_actif integer                                                                                                                                  
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE mise_en_page OWNER TO jeromeathion;                                                                                                        
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN mise_en_page.mep_defaut; Type: COMMENT; Schema: public; Owner: jeromeathion                                                            
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN mise_en_page.mep_defaut IS '1:mise en page par défaut pour les produits                                                              
                                                                                                                                                       
2:mise en page par défaut pour les commentaires                                                                                                        
                                                                                                                                                       
3: mise en page par défaut pour les produits et commentaires';                                                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN mise_en_page.mep_actif; Type: COMMENT; Schema: public; Owner: jeromeathion                                                             
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN mise_en_page.mep_actif IS '0: la mise en page n''est plus active                                                                     
                                                                                                                                                       
1: mise en page active';                                                                                                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: mode_reglement; Type: TABLE; Schema: public; Owner: jeromeathion                                                                              
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE mode_reglement (                                                                                                                          
    mdr_idmode_reglement bigint NOT NULL,                                                                                                              
    mdr_libelle character varying(80),                                                                                                                 
    mdr_actif integer,                                                                                                                                 
    mdr_num_rglt integer,                                                                                                                              
    mdr_banque integer,                                                                                                                                
    mdr_tpmode integer                                                                                                                                 
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE mode_reglement OWNER TO jeromeathion;                                                                                                      
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN mode_reglement.mdr_tpmode; Type: COMMENT; Schema: public; Owner: jeromeathion                                                          
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN mode_reglement.mdr_tpmode IS '1: espèces                                                                                             
                                                                                                                                                       
2: chèque                                                                                                                                              
                                                                                                                                                       
3: CB                                                                                                                                                  
                                                                                                                                                       
4: chèque de banque';                                                                                                                                  
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: mode_transmission; Type: TABLE; Schema: public; Owner: jeromeathion                                                                           
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE mode_transmission (                                                                                                                       
    mtr_idmode_trans bigint NOT NULL,                                                                                                                  
    mtr_libelle character varying(50) NOT NULL,                                                                                                        
    mtr_libmaj character varying(50),                                                                                                                  
    mtr_actif integer,                                                                                                                                 
    mtr_defaut integer                                                                                                                                 
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE mode_transmission OWNER TO jeromeathion;                                                                                                   
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN mode_transmission.mtr_defaut; Type: COMMENT; Schema: public; Owner: jeromeathion                                                       
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN mode_transmission.mtr_defaut IS '1 = mode de transmision par défaut';                                                                
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: motif; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                       
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE motif (                                                                                                                                   
    mot_idmotif bigint NOT NULL,                                                                                                                       
    mot_libelle character varying(50) NOT NULL,                                                                                                        
    mot_libmaj character varying(50),                                                                                                                  
    mot_tpmotif integer,                                                                                                                               
    mot_actif integer                                                                                                                                  
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE motif OWNER TO jeromeathion;                                                                                                               
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN motif.mot_tpmotif; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN motif.mot_tpmotif IS '1=Motif annulation pièce comptable, 2=Motif refus pièce comptable';                                            
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: num_sequence; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE num_sequence (                                                                                                                            
    seq_idsequence bigint NOT NULL,                                                                                                                    
    seq_numsequence bigint,                                                                                                                            
    seq_tpseq integer,                                                                                                                                 
    seq_initmois integer,                                                                                                                              
    seq_initannee integer                                                                                                                              
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE num_sequence OWNER TO jeromeathion;                                                                                                        
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN num_sequence.seq_tpseq; Type: COMMENT; Schema: public; Owner: jeromeathion                                                             
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN num_sequence.seq_tpseq IS '1=Code client, 2=Code fournisseur, 3=Code produit, 4=N° proforma, 5=N° Facture';                          
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: para; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                        
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE para (                                                                                                                                    
    par_idpara bigint NOT NULL,                                                                                                                        
    par_separateurprenom character(1),                                                                                                                 
    par_nom_entite character varying(80),                                                                                                              
    par_abrev_entite character varying(15),                                                                                                            
    par_logo bytea,                                                                                                                                    
    par_extension_logo character varying(5),                                                                                                           
    par_idforme bigint,                                                                                                                                
    par_siret character varying(20),                                                                                                                   
    par_capital numeric,                                                                                                                               
    par_immatriculation character varying(20),                                                                                                         
    par_naf character varying(5),                                                                                                                      
    par_tppied_page integer,                                                                                                                           
    par_img_piedpage bytea,                                                                                                                            
    par_extension_piedpage character varying(5),                                                                                                       
    par_tpformatadr integer,                                                                                                                           
    par_methode_arrondi integer,                                                                                                                       
    par_actualise_remise integer,                                                                                                                      
    par_lib_banque character varying(150),                                                                                                             
    par_iddomicialiation bigint,                                                                                                                       
    par_numcompte character varying(15),                                                                                                               
    par_code_guichet character varying(5),                                                                                                             
    par_code_banque character varying(5),                                                                                                              
    par_cle_rib integer,                                                                                                                               
    par_iban character(27),                                                                                                                            
    par_bic character varying(11),                                                                                                                     
    par_rcs character varying(50),                                                                                                                     
    par_tvaintracom character varying(11),                                                                                                             
    par_coulent integer,                                                                                                                               
    par_modele_recu integer                                                                                                                            
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE para OWNER TO jeromeathion;                                                                                                                
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN para.par_tppied_page; Type: COMMENT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN para.par_tppied_page IS 'Forme du pied de page :                                                                                     
                                                                                                                                                       
1=Image                                                                                                                                                
                                                                                                                                                       
2=Raison sociale + Adresse + Téléphone                                                                                                                 
                                                                                                                                                       
3=Raison sociale + Téléphone + Adresse + Capital + SIRET + APE';                                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN para.par_tpformatadr; Type: COMMENT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN para.par_tpformatadr IS '1:Adresse détaillée (N°Voie, NomVoie,Ligne4, Ligne5,...)                                                    
                                                                                                                                                       
2:Adresse non détaillée';                                                                                                                              
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN para.par_methode_arrondi; Type: COMMENT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN para.par_methode_arrondi IS '1=Arrondi sur total TTC facture                                                                         
                                                                                                                                                       
2=Arrondi sur chaque ligne produit, taux TVA et total TTC facture';                                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN para.par_actualise_remise; Type: COMMENT; Schema: public; Owner: jeromeathion                                                          
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN para.par_actualise_remise IS 'Comment actualiser la remise sur une pièce comptable ? --> 1=Acutalise le taux de remise, 2=Actualise l
e montant de la remise';                                                                                                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN para.par_modele_recu; Type: COMMENT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN para.par_modele_recu IS 'Modèle de reçu par défaut : 1=Modèle 1, 2=Modèle 2';                                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: pays; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                        
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE pays (                                                                                                                                    
    pay_idpays bigint NOT NULL,                                                                                                                        
    pay_code_insee character(5) NOT NULL,                                                                                                              
    pay_nom_maj character varying(50) NOT NULL,                                                                                                        
    pay_nationalite character varying(50),                                                                                                             
    pay_membre_ce integer,                                                                                                                             
    pay_nom_min character varying(50),                                                                                                                 
    pay_nom_rech character varying(50),                                                                                                                
    pay_code_iso character(2)                                                                                                                          
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE pays OWNER TO jeromeathion;                                                                                                                
                                                                                                                                                       
--                                                                                                                                                     
-- Name: personne; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                    
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE personne (                                                                                                                                
    per_idpersonne bigint NOT NULL,                                                                                                                    
    per_titre integer,                                                                                                                                 
    per_tpaffichenom integer,                                                                                                                          
    per_photo bytea,                                                                                                                                   
    per_sexe integer NOT NULL,                                                                                                                         
    per_nomfamille character varying(80) NOT NULL,                                                                                                     
    per_nommaj character varying(80),                                                                                                                  
    per_deuxieme_nom character varying(80),                                                                                                            
    per_deuxieme_nommaj character varying(80),                                                                                                         
    per_prenoms character varying(100),                                                                                                                
    per_prenommaj character varying(100),                                                                                                              
    per_clefphonetique character varying(100),                                                                                                         
    per_prenomphon character varying(100),                                                                                                             
    per_dnaissance date,                                                                                                                               
    per_moisannaiss integer,                                                                                                                           
    per_clefidentite character varying(200),                                                                                                           
    per_inaissfrance integer,                                                                                                                          
    per_idcommunenais bigint,                                                                                                                          
    per_idvilleet_nais bigint,                                                                                                                         
    per_ivivante integer,                                                                                                                              
    per_ddeces date,                                                                                                                                   
    per_code_personne character varying(12)                                                                                                            
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE personne OWNER TO jeromeathion;                                                                                                            
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN personne.per_titre; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN personne.per_titre IS '1=M., 2=Mme, 3=Mlle';                                                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN personne.per_sexe; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN personne.per_sexe IS '1=M, 2=F';                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN personne.per_moisannaiss; Type: COMMENT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN personne.per_moisannaiss IS '1=Date complète, 2=Mois+Année, 3=Année';                                                                
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN personne.per_inaissfrance; Type: COMMENT; Schema: public; Owner: jeromeathion                                                          
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN personne.per_inaissfrance IS '1= Né en france, 0= Né à l''etranger';                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN personne.per_ivivante; Type: COMMENT; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN personne.per_ivivante IS '1=Vivante, 0=Décédée';                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: piece_comptable; Type: TABLE; Schema: public; Owner: jeromeathion                                                                             
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE piece_comptable (                                                                                                                         
    pco_idpiece_comptable bigint NOT NULL,                                                                                                             
    pco_num_piece character varying(15) NOT NULL,                                                                                                      
    pco_dtpiece date NOT NULL,                                                                                                                         
    pco_idclient bigint,                                                                                                                               
    pco_etat_piece integer,                                                                                                                            
    pco_dtedition date,                                                                                                                                
    pco_dttransmission date,                                                                                                                           
    pco_dtannulation date,                                                                                                                             
    pco_total_ht numeric,                                                                                                                              
    pco_total_tva numeric,                                                                                                                             
    pco_total_ttc numeric,                                                                                                                             
    pco_taux_remise numeric,                                                                                                                           
    pco_tppiece integer,                                                                                                                               
    pco_tpduree integer,                                                                                                                               
    pco_nbduree integer,                                                                                                                               
    pco_dtcommande date,                                                                                                                               
    pco_num_commande character varying(15),                                                                                                            
    pco_idmotif_annule bigint,                                                                                                                         
    pco_idutilisateur_cree bigint,                                                                                                                     
    pco_idutilisateur_trans bigint,                                                                                                                    
    pco_idmode_transmission bigint,                                                                                                                    
    pco_mtremise numeric,                                                                                                                              
    pco_dtecheance date,                                                                                                                               
    pco_cond_rglt integer,                                                                                                                             
    pco_tpdelai_rglt integer,                                                                                                                          
    pco_notes text,                                                                                                                                    
    pco_idpiece_pere bigint,                                                                                                                           
    pco_objet character varying(150),                                                                                                                  
    pco_idutilisateur_annule bigint,                                                                                                                   
    pco_idutilisateur_modif bigint,                                                                                                                    
    pco_dtmodification date,                                                                                                                           
    pco_dtreglement date,                                                                                                                              
    pco_reference_rgl character varying(50),                                                                                                           
    pco_dtrefus date,                                                                                                                                  
    pco_idmotif_refus bigint,                                                                                                                          
    pco_iduser_refus bigint,                                                                                                                           
    pco_montant_regle numeric                                                                                                                          
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE piece_comptable OWNER TO jeromeathion;                                                                                                     
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN piece_comptable.pco_etat_piece; Type: COMMENT; Schema: public; Owner: jeromeathion                                                     
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN piece_comptable.pco_etat_piece IS '1=En création                                                                                     
                                                                                                                                                       
2=En cours / En attente de règlement                                                                                                                   
                                                                                                                                                       
3=Accepté /                                                                                                                                            
                                                                                                                                                       
4=Facturé / Réglé                                                                                                                                      
                                                                                                                                                       
5=Refusé / Impayé                                                                                                                                      
                                                                                                                                                       
6=Annulé';                                                                                                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN piece_comptable.pco_tppiece; Type: COMMENT; Schema: public; Owner: jeromeathion                                                        
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN piece_comptable.pco_tppiece IS '1=Devis/Proforma, 2=Facture';                                                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN piece_comptable.pco_tpduree; Type: COMMENT; Schema: public; Owner: jeromeathion                                                        
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN piece_comptable.pco_tpduree IS '1=Jour, 2=Semaine, 3=Mois';                                                                          
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN piece_comptable.pco_idutilisateur_cree; Type: COMMENT; Schema: public; Owner: jeromeathion                                             
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN piece_comptable.pco_idutilisateur_cree IS 'Affaire suivie par';                                                                      
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN piece_comptable.pco_dtecheance; Type: COMMENT; Schema: public; Owner: jeromeathion                                                     
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN piece_comptable.pco_dtecheance IS 'Si facture=date échéance, si devis=date validité';                                                
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN piece_comptable.pco_cond_rglt; Type: COMMENT; Schema: public; Owner: jeromeathion                                                      
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN piece_comptable.pco_cond_rglt IS 'Condition règlement pour calcul de la date d''échéance : 1=Paiement comptant, 2=Paiement à réceptio
n 3=Avec délai';                                                                                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN piece_comptable.pco_tpdelai_rglt; Type: COMMENT; Schema: public; Owner: jeromeathion                                                   
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN piece_comptable.pco_tpdelai_rglt IS 'Calcul de la date d''échéance de la facture : 1=A partir de l''émission facture, 2=A partir de l
a fin de mois';                                                                                                                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: prod_four; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                   
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE prod_four (                                                                                                                               
    pfo_idprod_four bigint NOT NULL,                                                                                                                   
    pfo_idproduit bigint NOT NULL,                                                                                                                     
    pfo_idfournisseur bigint NOT NULL,                                                                                                                 
    pfo_note text                                                                                                                                      
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE prod_four OWNER TO jeromeathion;                                                                                                           
                                                                                                                                                       
--                                                                                                                                                     
-- Name: produit; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                     
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE produit (                                                                                                                                 
    pro_idproduit bigint NOT NULL,                                                                                                                     
    pro_libelle character varying(80) NOT NULL,                                                                                                        
    pro_lib_rech character varying(80),                                                                                                                
    pro_reference character varying(15),                                                                                                               
    pro_description text,                                                                                                                              
    pro_idfamille bigint,                                                                                                                              
    pro_pxvente_ht numeric,                                                                                                                            
    pro_idtva bigint,                                                                                                                                  
    pro_iactif integer                                                                                                                                 
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE produit OWNER TO jeromeathion;                                                                                                             
                                                                                                                                                       
--                                                                                                                                                     
-- Name: regl_fact; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                   
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE regl_fact (                                                                                                                               
    rfa_idregl_fact bigint NOT NULL,                                                                                                                   
    rfa_idreglement bigint NOT NULL,                                                                                                                   
    rfa_idpiece bigint NOT NULL,                                                                                                                       
    rfa_montant numeric                                                                                                                                
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE regl_fact OWNER TO jeromeathion;                                                                                                           
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN regl_fact.rfa_montant; Type: COMMENT; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN regl_fact.rfa_montant IS 'Montant réglé (sans le rendu)';                                                                            
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: reglement; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                   
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE reglement (                                                                                                                               
    reg_idreglement bigint NOT NULL,                                                                                                                   
    reg_dtreglement date,                                                                                                                              
    reg_montant numeric,                                                                                                                               
    reg_idmode_reglement bigint,                                                                                                                       
    reg_numreglement character varying(30),                                                                                                            
    reg_idpayeur bigint,                                                                                                                               
    reg_tppayeur integer,                                                                                                                              
    reg_ident_payeur character varying(100),                                                                                                           
    reg_mtrendu numeric,                                                                                                                               
    reg_num_quittance character varying(15),                                                                                                           
    reg_idutilisateur bigint                                                                                                                           
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE reglement OWNER TO jeromeathion;                                                                                                           
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN reglement.reg_montant; Type: COMMENT; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN reglement.reg_montant IS 'Montant encaissé (Montant facture+Rendu)';                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: suivi_modif; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                 
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE suivi_modif (                                                                                                                             
    smo_idsuivi_modif bigint NOT NULL,                                                                                                                 
    smo_idlien bigint NOT NULL,                                                                                                                        
    smo_tplien integer,                                                                                                                                
    smo_idutilisateur bigint NOT NULL,                                                                                                                 
    smo_dtmodif date,                                                                                                                                  
    smo_hmodif time without time zone,                                                                                                                 
    smo_tpevt integer,                                                                                                                                 
    smo_poste character varying(120),                                                                                                                  
    smo_session character varying(120),                                                                                                                
    smo_remarque text,                                                                                                                                 
    smo_adr_ip character varying(150)                                                                                                                  
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE suivi_modif OWNER TO jeromeathion;                                                                                                         
                                                                                                                                                       
--                                                                                                                                                     
-- Name: TABLE suivi_modif; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON TABLE suivi_modif IS 'Permet de suivre les modifications effectués par les utilisateurs';                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN suivi_modif.smo_idlien; Type: COMMENT; Schema: public; Owner: jeromeathion                                                             
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN suivi_modif.smo_idlien IS 'Identifiant de l''élément selon tplien';                                                                  
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN suivi_modif.smo_tplien; Type: COMMENT; Schema: public; Owner: jeromeathion                                                             
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN suivi_modif.smo_tplien IS '1=Pièce comptable                                                                                         
                                                                                                                                                       
2=suivi des connexions';                                                                                                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN suivi_modif.smo_tpevt; Type: COMMENT; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN suivi_modif.smo_tpevt IS '1=Création, 2=Modification, 3=Suppression, 4=Connexion(tplien 2), 5=déconnexion (tplien = 2)';             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN suivi_modif.smo_poste; Type: COMMENT; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN suivi_modif.smo_poste IS 'Nom du poste de travail';                                                                                  
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN suivi_modif.smo_session; Type: COMMENT; Schema: public; Owner: jeromeathion                                                            
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN suivi_modif.smo_session IS 'Nom de la session Windows';                                                                              
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: tva; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                         
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE tva (                                                                                                                                     
    tva_idtva bigint NOT NULL,                                                                                                                         
    tva_code integer,                                                                                                                                  
    tva_np integer,                                                                                                                                    
    tva_pourcentage numeric(6,2),                                                                                                                      
    tva_libelle character varying(50),                                                                                                                 
    tva_tpgestion integer                                                                                                                              
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE tva OWNER TO jeromeathion;                                                                                                                 
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN tva.tva_np; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN tva.tva_np IS '1=TVA non perçue';                                                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN tva.tva_tpgestion; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN tva.tva_tpgestion IS '1=TVA de base --> suppression impossible, 2=TVA ajoutée --> suppression possible';                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: tva_exception; Type: TABLE; Schema: public; Owner: jeromeathion                                                                               
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE tva_exception (                                                                                                                           
    tex_idtva_exception bigint NOT NULL,                                                                                                               
    tex_idtva bigint,                                                                                                                                  
    tex_iddepartement bigint,                                                                                                                          
    tex_taux numeric                                                                                                                                   
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE tva_exception OWNER TO jeromeathion;                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: unite; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                       
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE unite (                                                                                                                                   
    uni_idunite bigint NOT NULL,                                                                                                                       
    uni_libelle character varying(20),                                                                                                                 
    uni_abreviation character varying(5),                                                                                                              
    uni_actif integer                                                                                                                                  
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE unite OWNER TO jeromeathion;                                                                                                               
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN unite.uni_actif; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                    
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN unite.uni_actif IS '0: inactif                                                                                                       
                                                                                                                                                       
1: actif';                                                                                                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: utilisateur; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                 
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE utilisateur (                                                                                                                             
    uti_idutilisateur bigint NOT NULL,                                                                                                                 
    uti_login character varying(30) NOT NULL,                                                                                                          
    uti_motdepasse character varying(20) NOT NULL,                                                                                                     
    uti_administrateur integer,                                                                                                                        
    uti_actif integer,                                                                                                                                 
    uti_nbduree numeric,                                                                                                                               
    uti_dtmaj_mdp date,                                                                                                                                
    uti_initiale character varying(3),                                                                                                                 
    uti_nom character varying(150),                                                                                                                    
    uti_prenoms character varying(250),                                                                                                                
    uti_identite character varying(300),                                                                                                               
    uti_sexe integer,                                                                                                                                  
    uti_idpersonnel bigint,                                                                                                                            
    uti_signature bytea,                                                                                                                               
    uti_extension character varying(8)                                                                                                                 
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE utilisateur OWNER TO jeromeathion;                                                                                                         
                                                                                                                                                       
--                                                                                                                                                     
-- Name: TABLE utilisateur; Type: COMMENT; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON TABLE utilisateur IS 'Permet de gérer les utilisateurs';                                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN utilisateur.uti_administrateur; Type: COMMENT; Schema: public; Owner: jeromeathion                                                     
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN utilisateur.uti_administrateur IS '1=Administrateur';                                                                                
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: COLUMN utilisateur.uti_actif; Type: COMMENT; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
COMMENT ON COLUMN utilisateur.uti_actif IS '1=Actif';                                                                                                  
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: ville_etrangere; Type: TABLE; Schema: public; Owner: jeromeathion                                                                             
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE ville_etrangere (                                                                                                                         
    vet_idville_etrangere bigint NOT NULL,                                                                                                             
    vet_dt_modif date,                                                                                                                                 
    vet_nom_min character varying(80),                                                                                                                 
    vet_nom_maj character varying(80) NOT NULL,                                                                                                        
    vet_idpays bigint NOT NULL,                                                                                                                        
    vet_nom_rech character varying(80)                                                                                                                 
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE ville_etrangere OWNER TO jeromeathion;                                                                                                     
                                                                                                                                                       
--                                                                                                                                                     
-- Name: voie; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                        
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE voie (                                                                                                                                    
    voi_idvoie bigint NOT NULL,                                                                                                                        
    voi_dt_modif timestamp without time zone,                                                                                                          
    voi_voie_commune integer,                                                                                                                          
    voi_nom_voie character varying(80),                                                                                                                
    voi_maj_nomvoie character varying(80),                                                                                                             
    voi_idtp_voie bigint,                                                                                                                              
    voi_idtp_prefixe bigint,                                                                                                                           
    voi_idcommune bigint,                                                                                                                              
    voi_active integer,                                                                                                                                
    voi_nummin bigint,                                                                                                                                 
    voi_nummax bigint,                                                                                                                                 
    voi_nom_rech character varying(80),                                                                                                                
    voi_actuel integer,                                                                                                                                
    voi_numerote integer,                                                                                                                              
    voi_code_rivoli bigint,                                                                                                                            
    voi_numvoie numeric                                                                                                                                
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE voie OWNER TO jeromeathion;                                                                                                                
                                                                                                                                                       
--                                                                                                                                                     
-- Name: zone; Type: TABLE; Schema: public; Owner: jeromeathion                                                                                        
--                                                                                                                                                     
                                                                                                                                                       
CREATE TABLE zone (                                                                                                                                    
    zon_idzone bigint NOT NULL,                                                                                                                        
    zon_tpzone integer,                                                                                                                                
    zon_taille integer,                                                                                                                                
    zon_valeur character varying(20),                                                                                                                  
    zon_position integer,                                                                                                                              
    zon_initzone character varying(50),                                                                                                                
    zon_idsequence bigint NOT NULL                                                                                                                     
);                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
ALTER TABLE zone OWNER TO jeromeathion;                                                                                                                
                                                                                                                                                       
--                                                                                                                                                     
-- Name: SQ_ID; Type: SEQUENCE SET; Schema: public; Owner: jeromeathion                                                                                
--                                                                                                                                                     
                                                                                                                                                       
SELECT pg_catalog.setval('"SQ_ID"', 1000000000000000, false);                                                                                          
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                       
--                                                                                                                                                     
                                                                                                                                                       
COPY adresse (adr_idadresse, adr_num_voie, adr_cpl_adresse, adr_tp_adresse, adr_idcpl_numvoie, adr_idcommune, adr_idville_etrangere, adr_complete, adr_
ligne2, adr_ligne3, adr_ligne5, adr_icedex, adr_num_cedex, adr_lib_cedex, adr_idcedex, adr_tpville, adr_libvoie) FROM stdin;                           
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
COPY categorie (cat_idcategorie, cat_tpcategorie, cat_libelle, cat_lib_rech, cat_iactif) FROM stdin;                                                   
1       1       Client  Test    1                                                                                                                      
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                        
--                                                                                                                                                     
                                                                                                                                                       
COPY client (cli_idclient, cli_idlien, cli_tplien, cli_idcategorie, cli_commentaires) FROM stdin;                                                      
1       1       1       1                                                                                                                              
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: co_coordonnee; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
COPY co_coordonnee (co_idco_coordonnee, co_dtmodif, co_idlien, co_tplien, co_adrinternet) FROM stdin;                                                  
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: co_lst_adresse; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                
--                                                                                                                                                     
                                                                                                                                                       
COPY co_lst_adresse (lsta_idco_lst_adr, lsta_idadresse, lsta_idco_tp_indicateur, lsta_idco_coordonnee, lsta_coord_defaut) FROM stdin;                  
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: co_lst_mail; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY co_lst_mail (lstm_idco_lst_mail, lstm_mail, lstm_idco_tp_indicateur, lstm_idco_coordonnee) FROM stdin;                                            
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: co_lst_tel; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                    
--                                                                                                                                                     
                                                                                                                                                       
COPY co_lst_tel (lstt_idco_lst_tel, lstt_numero, lstt_idco_tp_indicateur, lstt_idco_coordonnee, lstt_coord_defaut) FROM stdin;                         
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: co_tp_indicateur; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
COPY co_tp_indicateur (idco_tp_indicateur, tpi_libelle, tpi_indicateur, tpi_professionnel, tpi_personnel, tpi_utilisat) FROM stdin;                    
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: commune; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                       
--                                                                                                                                                     
                                                                                                                                                       
COPY commune (com_idcommune, com_dt_modif, com_initiale, com_code_insee, com_code_postal, com_nom_maj, com_nom_min, com_lieudit, com_iddepartement, com
_nom_rech) FROM stdin;                                                                                                                                 
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: cpl_numvoie; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY cpl_numvoie (cpl_idcpl_numvoie, cpl_dt_modif, cpl_lib_complement) FROM stdin;                                                                     
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: departement; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY departement (dep_iddepartement, dep_dt_modif, dep_initial, dep_code_dept, dep_nom_maj, dep_nom_min, dep_lien_article, dep_nom_rech) FROM stdin;   
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: doc_edition; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY doc_edition (ded_iddoc_edition, ded_iddoc_modele, ded_iddemandeur, ded_idmotif, ded_idagent, ded_dt_edition, ded_idpers_doc, ded_idtp_requerant, d
ed_tplien, ded_idlien, ded_idperiode) FROM stdin;                                                                                                      
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: doc_modele; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                    
--                                                                                                                                                     
                                                                                                                                                       
COPY doc_modele (dmo_iddoc_modele, dmo_tplien, dmo_libelle, dmo_description, dmo_actif, dmo_localisation, dmo_tpformat, dmo_document, dmo_extension, dm
o_idtpdocument, dmo_rechdoc, dmo_numordre, dmo_numdoc, dmo_oblavancement, dmo_tpdocument, dmo_tpoccurence, dmo_tpedit) FROM stdin;                     
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: doc_tpdocument; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                
--                                                                                                                                                     
                                                                                                                                                       
COPY doc_tpdocument (dtd_idtpdocument, dtd_libdocument, dtd_actif, dtd_affcourrier, dtd_tpdocument, dtd_numordre, dtd_rechgroupe, dtd_idtreeview) FROM 
stdin;                                                                                                                                                 
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: droits_user; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY droits_user (dur_iddroits_user, dur_idfonction_log, dur_actif, dur_idutilisateur) FROM stdin;                                                     
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: entite; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                        
--                                                                                                                                                     
                                                                                                                                                       
COPY entite (ent_identite, ent_raison_sociale, ent_raison_rech, ent_siret, ent_code_entite, ent_idforme, ent_lib_contact, ent_abreviation, ent_clefphon
etique) FROM stdin;                                                                                                                                    
1       Saint-Pierre    Test    0121247859      E101010 1       Mr Test STP                                                                            
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: famille; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                       
--                                                                                                                                                     
                                                                                                                                                       
COPY famille (fam_idfamille, fam_libelle, fam_lib_rech, fam_iactif) FROM stdin;                                                                        
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: fonction_log; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
COPY fonction_log (fol_idfonction_log, fol_lib_fonctionlog, fol_niveau, fol_categorie, fol_numfonction, fol_module) FROM stdin;                        
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: forme_juridique; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
COPY forme_juridique (foj_idforme_juridique, foj_libelle, foj_lib_rech, foj_iactif) FROM stdin;                                                        
1       SARL    Test    1                                                                                                                              
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY fournisseur (fou_idfournisseur, fou_identite, fou_idcategorie, fou_commentaire) FROM stdin;                                                       
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: ligne_produit; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
COPY ligne_produit (lip_idligne_produit, lip_idpiece, lip_idproduit, lip_prix_unitaire, lip_quantite, lip_tot_ht, lip_tot_tva, lip_tot_ttc, lip_taux_tv
a, lip_reference, lip_designation, lip_position, lip_idmise_page) FROM stdin;                                                                          
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: mise_en_page; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
COPY mise_en_page (mep_idmise_en_page, mep_libelle, mep_police, mep_taille, mep_couleur, mep_gras, mep_italique, mep_souligne, mep_barre, mep_aligne, m
ep_defaut, mep_actif) FROM stdin;                                                                                                                      
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: mode_reglement; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                
--                                                                                                                                                     
                                                                                                                                                       
COPY mode_reglement (mdr_idmode_reglement, mdr_libelle, mdr_actif, mdr_num_rglt, mdr_banque, mdr_tpmode) FROM stdin;                                   
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: mode_transmission; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                             
--                                                                                                                                                     
                                                                                                                                                       
COPY mode_transmission (mtr_idmode_trans, mtr_libelle, mtr_libmaj, mtr_actif, mtr_defaut) FROM stdin;                                                  
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: motif; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
COPY motif (mot_idmotif, mot_libelle, mot_libmaj, mot_tpmotif, mot_actif) FROM stdin;                                                                  
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: num_sequence; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
COPY num_sequence (seq_idsequence, seq_numsequence, seq_tpseq, seq_initmois, seq_initannee) FROM stdin;                                                
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: para; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
COPY para (par_idpara, par_separateurprenom, par_nom_entite, par_abrev_entite, par_logo, par_extension_logo, par_idforme, par_siret, par_capital, par_i
mmatriculation, par_naf, par_tppied_page, par_img_piedpage, par_extension_piedpage, par_tpformatadr, par_methode_arrondi, par_actualise_remise, par_lib
_banque, par_iddomicialiation, par_numcompte, par_code_guichet, par_code_banque, par_cle_rib, par_iban, par_bic, par_rcs, par_tvaintracom, par_coulent,
 par_modele_recu) FROM stdin;                                                                                                                          
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: pays; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
COPY pays (pay_idpays, pay_code_insee, pay_nom_maj, pay_nationalite, pay_membre_ce, pay_nom_min, pay_nom_rech, pay_code_iso) FROM stdin;               
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: personne; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                      
--                                                                                                                                                     
                                                                                                                                                       
COPY personne (per_idpersonne, per_titre, per_tpaffichenom, per_photo, per_sexe, per_nomfamille, per_nommaj, per_deuxieme_nom, per_deuxieme_nommaj, per
_prenoms, per_prenommaj, per_clefphonetique, per_prenomphon, per_dnaissance, per_moisannaiss, per_clefidentite, per_inaissfrance, per_idcommunenais, pe
r_idvilleet_nais, per_ivivante, per_ddeces, per_code_personne) FROM stdin;                                                                             
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: piece_comptable; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
COPY piece_comptable (pco_idpiece_comptable, pco_num_piece, pco_dtpiece, pco_idclient, pco_etat_piece, pco_dtedition, pco_dttransmission, pco_dtannulat
ion, pco_total_ht, pco_total_tva, pco_total_ttc, pco_taux_remise, pco_tppiece, pco_tpduree, pco_nbduree, pco_dtcommande, pco_num_commande, pco_idmotif_
annule, pco_idutilisateur_cree, pco_idutilisateur_trans, pco_idmode_transmission, pco_mtremise, pco_dtecheance, pco_cond_rglt, pco_tpdelai_rglt, pco_no
tes, pco_idpiece_pere, pco_objet, pco_idutilisateur_annule, pco_idutilisateur_modif, pco_dtmodification, pco_dtreglement, pco_reference_rgl, pco_dtrefu
s, pco_idmotif_refus, pco_iduser_refus, pco_montant_regle) FROM stdin;                                                                                 
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: prod_four; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
COPY prod_four (pfo_idprod_four, pfo_idproduit, pfo_idfournisseur, pfo_note) FROM stdin;                                                               
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                       
--                                                                                                                                                     
                                                                                                                                                       
COPY produit (pro_idproduit, pro_libelle, pro_lib_rech, pro_reference, pro_description, pro_idfamille, pro_pxvente_ht, pro_idtva, pro_iactif) FROM stdi
n;                                                                                                                                                     
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: regl_fact; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
COPY regl_fact (rfa_idregl_fact, rfa_idreglement, rfa_idpiece, rfa_montant) FROM stdin;                                                                
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: reglement; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
COPY reglement (reg_idreglement, reg_dtreglement, reg_montant, reg_idmode_reglement, reg_numreglement, reg_idpayeur, reg_tppayeur, reg_ident_payeur, re
g_mtrendu, reg_num_quittance, reg_idutilisateur) FROM stdin;                                                                                           
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: suivi_modif; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY suivi_modif (smo_idsuivi_modif, smo_idlien, smo_tplien, smo_idutilisateur, smo_dtmodif, smo_hmodif, smo_tpevt, smo_poste, smo_session, smo_remarqu
e, smo_adr_ip) FROM stdin;                                                                                                                             
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: tva; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                           
--                                                                                                                                                     
                                                                                                                                                       
COPY tva (tva_idtva, tva_code, tva_np, tva_pourcentage, tva_libelle, tva_tpgestion) FROM stdin;                                                        
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: tva_exception; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
COPY tva_exception (tex_idtva_exception, tex_idtva, tex_iddepartement, tex_taux) FROM stdin;                                                           
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: unite; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
COPY unite (uni_idunite, uni_libelle, uni_abreviation, uni_actif) FROM stdin;                                                                          
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
COPY utilisateur (uti_idutilisateur, uti_login, uti_motdepasse, uti_administrateur, uti_actif, uti_nbduree, uti_dtmaj_mdp, uti_initiale, uti_nom, uti_p
renoms, uti_identite, uti_sexe, uti_idpersonnel, uti_signature, uti_extension) FROM stdin;                                                             
1       TEST    TEST    1       1       1       2017-04-05                                      1       1       \\x                                    
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: ville_etrangere; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
COPY ville_etrangere (vet_idville_etrangere, vet_dt_modif, vet_nom_min, vet_nom_maj, vet_idpays, vet_nom_rech) FROM stdin;                             
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: voie; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
COPY voie (voi_idvoie, voi_dt_modif, voi_voie_commune, voi_nom_voie, voi_maj_nomvoie, voi_idtp_voie, voi_idtp_prefixe, voi_idcommune, voi_active, voi_n
ummin, voi_nummax, voi_nom_rech, voi_actuel, voi_numerote, voi_code_rivoli, voi_numvoie) FROM stdin;                                                   
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Data for Name: zone; Type: TABLE DATA; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
COPY zone (zon_idzone, zon_tpzone, zon_taille, zon_valeur, zon_position, zon_initzone, zon_idsequence) FROM stdin;                                     
\.                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: adresse adresse_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY adresse                                                                                                                               
    ADD CONSTRAINT adresse_pkey PRIMARY KEY (adr_idadresse);                                                                                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_coordonnee co_coordonnee_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                       
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_coordonnee                                                                                                                         
    ADD CONSTRAINT co_coordonnee_pkey PRIMARY KEY (co_idco_coordonnee);                                                                                
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_mail co_lst_mail_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_mail                                                                                                                           
    ADD CONSTRAINT co_lst_mail_pkey PRIMARY KEY (lstm_idco_lst_mail);                                                                                  
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_tel co_lst_tel_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                             
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_tel                                                                                                                            
    ADD CONSTRAINT co_lst_tel_pkey PRIMARY KEY (lstt_idco_lst_tel);                                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_tp_indicateur co_tp_indicateur_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_tp_indicateur                                                                                                                      
    ADD CONSTRAINT co_tp_indicateur_pkey PRIMARY KEY (idco_tp_indicateur);                                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: commune commune_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY commune                                                                                                                               
    ADD CONSTRAINT commune_pkey PRIMARY KEY (com_idcommune);                                                                                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: cpl_numvoie cpl_numvoie_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY cpl_numvoie                                                                                                                           
    ADD CONSTRAINT cpl_numvoie_pkey PRIMARY KEY (cpl_idcpl_numvoie);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: departement departement_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY departement                                                                                                                           
    ADD CONSTRAINT departement_pkey PRIMARY KEY (dep_iddepartement);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fonction_log fk_idfonction_log; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY fonction_log                                                                                                                          
    ADD CONSTRAINT fk_idfonction_log PRIMARY KEY (fol_idfonction_log);                                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: mise_en_page mep_idmise_en_page_pk; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                     
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY mise_en_page                                                                                                                          
    ADD CONSTRAINT mep_idmise_en_page_pk PRIMARY KEY (mep_idmise_en_page);                                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: num_sequence num_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY num_sequence                                                                                                                          
    ADD CONSTRAINT num_sequence_pkey PRIMARY KEY (seq_idsequence);                                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: pays pays_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY pays                                                                                                                                  
    ADD CONSTRAINT pays_pkey PRIMARY KEY (pay_idpays);                                                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: personne personne_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY personne                                                                                                                              
    ADD CONSTRAINT personne_pkey PRIMARY KEY (per_idpersonne);                                                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: categorie pk_cat_idcategorie; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY categorie                                                                                                                             
    ADD CONSTRAINT pk_cat_idcategorie PRIMARY KEY (cat_idcategorie);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: client pk_cli_idclient; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY client                                                                                                                                
    ADD CONSTRAINT pk_cli_idclient PRIMARY KEY (cli_idclient);                                                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: doc_modele pk_doc_modele; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY doc_modele                                                                                                                            
    ADD CONSTRAINT pk_doc_modele PRIMARY KEY (dmo_iddoc_modele);                                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: doc_tpdocument pk_doc_tpdocument; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                       
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY doc_tpdocument                                                                                                                        
    ADD CONSTRAINT pk_doc_tpdocument PRIMARY KEY (dtd_idtpdocument);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: entite pk_ent_identite; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY entite                                                                                                                                
    ADD CONSTRAINT pk_ent_identite PRIMARY KEY (ent_identite);                                                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: famille pk_fam_idfamille; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY famille                                                                                                                               
    ADD CONSTRAINT pk_fam_idfamille PRIMARY KEY (fam_idfamille);                                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fournisseur pk_fou_idfournisseur; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                       
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY fournisseur                                                                                                                           
    ADD CONSTRAINT pk_fou_idfournisseur PRIMARY KEY (fou_idfournisseur);                                                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_adresse pk_idco_lst_adr; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_adresse                                                                                                                        
    ADD CONSTRAINT pk_idco_lst_adr PRIMARY KEY (lsta_idco_lst_adr);                                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: doc_edition pk_iddoc_edition; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY doc_edition                                                                                                                           
    ADD CONSTRAINT pk_iddoc_edition PRIMARY KEY (ded_iddoc_edition);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: droits_user pk_iddroits_user; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY droits_user                                                                                                                           
    ADD CONSTRAINT pk_iddroits_user PRIMARY KEY (dur_iddroits_user);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: regl_fact pk_idregl_fact; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY regl_fact                                                                                                                             
    ADD CONSTRAINT pk_idregl_fact PRIMARY KEY (rfa_idregl_fact);                                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: utilisateur pk_idutilisateur; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY utilisateur                                                                                                                           
    ADD CONSTRAINT pk_idutilisateur PRIMARY KEY (uti_idutilisateur);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: ligne_produit pk_lip_idligne_produit; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY ligne_produit                                                                                                                         
    ADD CONSTRAINT pk_lip_idligne_produit PRIMARY KEY (lip_idligne_produit);                                                                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: mode_reglement pk_mdr_idmode_reglement; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY mode_reglement                                                                                                                        
    ADD CONSTRAINT pk_mdr_idmode_reglement PRIMARY KEY (mdr_idmode_reglement);                                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: motif pk_mot_idmotif; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY motif                                                                                                                                 
    ADD CONSTRAINT pk_mot_idmotif PRIMARY KEY (mot_idmotif);                                                                                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: mode_transmission pk_mtr_idmode_trans; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                  
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY mode_transmission                                                                                                                     
    ADD CONSTRAINT pk_mtr_idmode_trans PRIMARY KEY (mtr_idmode_trans);                                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: para pk_par_idpara; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY para                                                                                                                                  
    ADD CONSTRAINT pk_par_idpara PRIMARY KEY (par_idpara);                                                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: piece_comptable pk_pco_idpiece_comptable; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                               
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY piece_comptable                                                                                                                       
    ADD CONSTRAINT pk_pco_idpiece_comptable PRIMARY KEY (pco_idpiece_comptable);                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: prod_four pk_pfo_idprod_four; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY prod_four                                                                                                                             
    ADD CONSTRAINT pk_pfo_idprod_four PRIMARY KEY (pfo_idprod_four);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: produit pk_pro_idproduit; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY produit                                                                                                                               
    ADD CONSTRAINT pk_pro_idproduit PRIMARY KEY (pro_idproduit);                                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: reglement pk_reg_idreglement; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY reglement                                                                                                                             
    ADD CONSTRAINT pk_reg_idreglement PRIMARY KEY (reg_idreglement);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: suivi_modif pk_smo_idsuivi_modif; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                       
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY suivi_modif                                                                                                                           
    ADD CONSTRAINT pk_smo_idsuivi_modif PRIMARY KEY (smo_idsuivi_modif);                                                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: tva_exception pk_tex_idtva_exception; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY tva_exception                                                                                                                         
    ADD CONSTRAINT pk_tex_idtva_exception PRIMARY KEY (tex_idtva_exception);                                                                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: forme_juridique pkfoj_idforme_juridique; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY forme_juridique                                                                                                                       
    ADD CONSTRAINT pkfoj_idforme_juridique PRIMARY KEY (foj_idforme_juridique);                                                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: tva tva_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY tva                                                                                                                                   
    ADD CONSTRAINT tva_pkey PRIMARY KEY (tva_idtva);                                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: unite uni_idunite_pk; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY unite                                                                                                                                 
    ADD CONSTRAINT uni_idunite_pk PRIMARY KEY (uni_idunite);                                                                                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: ville_etrangere ville_etrangere_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY ville_etrangere                                                                                                                       
    ADD CONSTRAINT ville_etrangere_pkey PRIMARY KEY (vet_idville_etrangere);                                                                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: voie voie_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY voie                                                                                                                                  
    ADD CONSTRAINT voie_pkey PRIMARY KEY (voi_idvoie);                                                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: zone zone_pkey; Type: CONSTRAINT; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY zone                                                                                                                                  
    ADD CONSTRAINT zone_pkey PRIMARY KEY (zon_idzone);                                                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fki_ZON_IDSEQUENCE; Type: INDEX; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX "fki_ZON_IDSEQUENCE" ON zone USING btree (zon_idsequence);                                                                                
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fki_dmo_dtd_idtpdocument; Type: INDEX; Schema: public; Owner: jeromeathion                                                                    
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX fki_dmo_dtd_idtpdocument ON doc_modele USING btree (dmo_idtpdocument);                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fki_uti_idpersonnel; Type: INDEX; Schema: public; Owner: jeromeathion                                                                         
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX fki_uti_idpersonnel ON utilisateur USING btree (uti_idpersonnel);                                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_adr_idcommune; Type: INDEX; Schema: public; Owner: jeromeathion                                                                           
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_adr_idcommune ON adresse USING btree (adr_idcommune);                                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_co_idlien; Type: INDEX; Schema: public; Owner: jeromeathion                                                                               
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_co_idlien ON co_coordonnee USING btree (co_idlien);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_co_lst_mail_lstm_idco_coordonnee; Type: INDEX; Schema: public; Owner: jeromeathion                                                        
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_co_lst_mail_lstm_idco_coordonnee ON co_lst_mail USING btree (lstm_idco_coordonnee);                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_co_lst_mail_lstm_idco_tp_indicateur; Type: INDEX; Schema: public; Owner: jeromeathion                                                     
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_co_lst_mail_lstm_idco_tp_indicateur ON co_lst_mail USING btree (lstm_idco_tp_indicateur);                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_co_lst_tel_lstt_idco_coordonnee; Type: INDEX; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_co_lst_tel_lstt_idco_coordonnee ON co_lst_tel USING btree (lstt_idco_coordonnee);                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_co_lst_tel_lstt_idco_tp_indicateur; Type: INDEX; Schema: public; Owner: jeromeathion                                                      
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_co_lst_tel_lstt_idco_tp_indicateur ON co_lst_tel USING btree (lstt_idco_tp_indicateur);                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_commune_com_code_insee; Type: INDEX; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_commune_com_code_insee ON commune USING btree (com_code_insee);                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_commune_com_code_postal; Type: INDEX; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_commune_com_code_postal ON commune USING btree (com_code_postal);                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_commune_com_iddepartement; Type: INDEX; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_commune_com_iddepartement ON commune USING btree (com_iddepartement);                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_commune_com_nom_maj; Type: INDEX; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_commune_com_nom_maj ON commune USING btree (com_nom_maj);                                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_departement_dep_code_dept; Type: INDEX; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_departement_dep_code_dept ON departement USING btree (dep_code_dept);                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_departement_dep_nom_maj; Type: INDEX; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_departement_dep_nom_maj ON departement USING btree (dep_nom_maj);                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_idco_lst_adr; Type: INDEX; Schema: public; Owner: jeromeathion                                                                            
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_idco_lst_adr ON co_lst_adresse USING btree (lsta_idco_lst_adr);                                                                       
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_lsta_idadresse; Type: INDEX; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_lsta_idadresse ON co_lst_adresse USING btree (lsta_idadresse);                                                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_lsta_idco_coordonnee; Type: INDEX; Schema: public; Owner: jeromeathion                                                                    
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_lsta_idco_coordonnee ON co_lst_adresse USING btree (lsta_idco_coordonnee);                                                            
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_pays_pay_code_insee; Type: INDEX; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_pays_pay_code_insee ON pays USING btree (pay_code_insee);                                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_pays_pay_nom_maj; Type: INDEX; Schema: public; Owner: jeromeathion                                                                        
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_pays_pay_nom_maj ON pays USING btree (pay_nom_maj);                                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_per_deuxiemenom_maj; Type: INDEX; Schema: public; Owner: jeromeathion                                                                     
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_per_deuxiemenom_maj ON personne USING btree (per_deuxieme_nommaj);                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_per_dnaissance; Type: INDEX; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_per_dnaissance ON personne USING btree (per_dnaissance);                                                                              
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_per_idcommune; Type: INDEX; Schema: public; Owner: jeromeathion                                                                           
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_per_idcommune ON personne USING btree (per_idcommunenais);                                                                            
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_per_idville_etrangere; Type: INDEX; Schema: public; Owner: jeromeathion                                                                   
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_per_idville_etrangere ON personne USING btree (per_idvilleet_nais);                                                                   
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_per_nommaj; Type: INDEX; Schema: public; Owner: jeromeathion                                                                              
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_per_nommaj ON personne USING btree (per_nommaj);                                                                                      
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_per_prenomphon; Type: INDEX; Schema: public; Owner: jeromeathion                                                                          
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_per_prenomphon ON personne USING btree (per_prenomphon);                                                                              
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_prenommaj; Type: INDEX; Schema: public; Owner: jeromeathion                                                                               
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_prenommaj ON personne USING btree (per_prenommaj);                                                                                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_ville_etrangere_vet_idpays; Type: INDEX; Schema: public; Owner: jeromeathion                                                              
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_ville_etrangere_vet_idpays ON ville_etrangere USING btree (vet_idpays);                                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_ville_etrangere_vet_nom_maj; Type: INDEX; Schema: public; Owner: jeromeathion                                                             
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_ville_etrangere_vet_nom_maj ON ville_etrangere USING btree (vet_nom_maj);                                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: idx_voie_voi_idcommune; Type: INDEX; Schema: public; Owner: jeromeathion                                                                      
--                                                                                                                                                     
                                                                                                                                                       
CREATE INDEX idx_voie_voi_idcommune ON voie USING btree (voi_idcommune);                                                                               
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: commune COM_IDDEPARTEMENT; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY commune                                                                                                                               
    ADD CONSTRAINT "COM_IDDEPARTEMENT" FOREIGN KEY (com_iddepartement) REFERENCES departement(dep_iddepartement);                                      
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_mail LSTM_IDCO_COORDONNEE; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                    
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_mail                                                                                                                           
    ADD CONSTRAINT "LSTM_IDCO_COORDONNEE" FOREIGN KEY (lstm_idco_coordonnee) REFERENCES co_coordonnee(co_idco_coordonnee);                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_mail LSTM_IDCO_TP_INDICATEUR; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_mail                                                                                                                           
    ADD CONSTRAINT "LSTM_IDCO_TP_INDICATEUR" FOREIGN KEY (lstm_idco_tp_indicateur) REFERENCES co_tp_indicateur(idco_tp_indicateur);                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_tel LSTT_IDCO_COORDONNEE; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                     
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_tel                                                                                                                            
    ADD CONSTRAINT "LSTT_IDCO_COORDONNEE" FOREIGN KEY (lstt_idco_coordonnee) REFERENCES co_coordonnee(co_idco_coordonnee);                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_tel LSTT_IDCO_TP_INDICATEUR; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                  
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_tel                                                                                                                            
    ADD CONSTRAINT "LSTT_IDCO_TP_INDICATEUR" FOREIGN KEY (lstt_idco_tp_indicateur) REFERENCES co_tp_indicateur(idco_tp_indicateur);                    
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: voie VOI_IDCOMMUNE; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                                  
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY voie                                                                                                                                  
    ADD CONSTRAINT "VOI_IDCOMMUNE" FOREIGN KEY (voi_idcommune) REFERENCES commune(com_idcommune);                                                      
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: zone ZON_IDSEQUENCE; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY zone                                                                                                                                  
    ADD CONSTRAINT "ZON_IDSEQUENCE" FOREIGN KEY (zon_idsequence) REFERENCES num_sequence(seq_idsequence);                                              
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: client fk_cli_idcategorie; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY client                                                                                                                                
    ADD CONSTRAINT fk_cli_idcategorie FOREIGN KEY (cli_idcategorie) REFERENCES categorie(cat_idcategorie);                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: entite fk_ent_idforme; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                               
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY entite                                                                                                                                
    ADD CONSTRAINT fk_ent_idforme FOREIGN KEY (ent_idforme) REFERENCES forme_juridique(foj_idforme_juridique);                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fournisseur fk_fou_idcategorie; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                      
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY fournisseur                                                                                                                           
    ADD CONSTRAINT fk_fou_idcategorie FOREIGN KEY (fou_idcategorie) REFERENCES categorie(cat_idcategorie);                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: fournisseur fk_fou_identite; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY fournisseur                                                                                                                           
    ADD CONSTRAINT fk_fou_identite FOREIGN KEY (fou_identite) REFERENCES entite(ent_identite);                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_adresse fk_idadresse; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_adresse                                                                                                                        
    ADD CONSTRAINT fk_idadresse FOREIGN KEY (lsta_idadresse) REFERENCES adresse(adr_idadresse);                                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_adresse fk_idco_coordonnee; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_adresse                                                                                                                        
    ADD CONSTRAINT fk_idco_coordonnee FOREIGN KEY (lsta_idco_coordonnee) REFERENCES co_coordonnee(co_idco_coordonnee);                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: co_lst_adresse fk_idco_tp_indicateur; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY co_lst_adresse                                                                                                                        
    ADD CONSTRAINT fk_idco_tp_indicateur FOREIGN KEY (lsta_idco_tp_indicateur) REFERENCES co_tp_indicateur(idco_tp_indicateur);                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: ligne_produit fk_lip_idpiece; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                        
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY ligne_produit                                                                                                                         
    ADD CONSTRAINT fk_lip_idpiece FOREIGN KEY (lip_idpiece) REFERENCES piece_comptable(pco_idpiece_comptable);                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: piece_comptable fk_pco_idclient; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                     
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY piece_comptable                                                                                                                       
    ADD CONSTRAINT fk_pco_idclient FOREIGN KEY (pco_idclient) REFERENCES client(cli_idclient);                                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: piece_comptable fk_pco_idmode_trans; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                 
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY piece_comptable                                                                                                                       
    ADD CONSTRAINT fk_pco_idmode_trans FOREIGN KEY (pco_idmode_transmission) REFERENCES mode_transmission(mtr_idmode_trans);                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: piece_comptable fk_pco_idutilisateur_cree; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                           
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY piece_comptable                                                                                                                       
    ADD CONSTRAINT fk_pco_idutilisateur_cree FOREIGN KEY (pco_idutilisateur_cree) REFERENCES utilisateur(uti_idutilisateur);                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: piece_comptable fk_pco_idutilisateur_trans; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                          
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY piece_comptable                                                                                                                       
    ADD CONSTRAINT fk_pco_idutilisateur_trans FOREIGN KEY (pco_idutilisateur_trans) REFERENCES utilisateur(uti_idutilisateur);                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: personne fk_per_idcommunenais; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                       
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY personne                                                                                                                              
    ADD CONSTRAINT fk_per_idcommunenais FOREIGN KEY (per_idcommunenais) REFERENCES commune(com_idcommune);                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: personne fk_per_idvilleet_nais; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                      
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY personne                                                                                                                              
    ADD CONSTRAINT fk_per_idvilleet_nais FOREIGN KEY (per_idvilleet_nais) REFERENCES ville_etrangere(vet_idville_etrangere);                           
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: prod_four fk_pfo_idfournisseur; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                      
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY prod_four                                                                                                                             
    ADD CONSTRAINT fk_pfo_idfournisseur FOREIGN KEY (pfo_idfournisseur) REFERENCES fournisseur(fou_idfournisseur);                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: prod_four fk_pfo_idproduit; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                          
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY prod_four                                                                                                                             
    ADD CONSTRAINT fk_pfo_idproduit FOREIGN KEY (pfo_idproduit) REFERENCES produit(pro_idproduit);                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: produit fk_pro_idfamille; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                            
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY produit                                                                                                                               
    ADD CONSTRAINT fk_pro_idfamille FOREIGN KEY (pro_idfamille) REFERENCES famille(fam_idfamille);                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: produit fk_pro_idtva; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                                
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY produit                                                                                                                               
    ADD CONSTRAINT fk_pro_idtva FOREIGN KEY (pro_idtva) REFERENCES tva(tva_idtva);                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: reglement fk_reg_idmode_reglement; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                   
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY reglement                                                                                                                             
    ADD CONSTRAINT fk_reg_idmode_reglement FOREIGN KEY (reg_idmode_reglement) REFERENCES mode_reglement(mdr_idmode_reglement);                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: reglement fk_reg_idutilisateur; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                      
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY reglement                                                                                                                             
    ADD CONSTRAINT fk_reg_idutilisateur FOREIGN KEY (reg_idutilisateur) REFERENCES utilisateur(uti_idutilisateur);                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: regl_fact fk_rfa_idpiece; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                            
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY regl_fact                                                                                                                             
    ADD CONSTRAINT fk_rfa_idpiece FOREIGN KEY (rfa_idpiece) REFERENCES piece_comptable(pco_idpiece_comptable);                                         
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: regl_fact fk_rfa_idreglement; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                        
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY regl_fact                                                                                                                             
    ADD CONSTRAINT fk_rfa_idreglement FOREIGN KEY (rfa_idreglement) REFERENCES reglement(reg_idreglement);                                             
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: suivi_modif fk_smo_idutilisateur; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                    
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY suivi_modif                                                                                                                           
    ADD CONSTRAINT fk_smo_idutilisateur FOREIGN KEY (smo_idutilisateur) REFERENCES utilisateur(uti_idutilisateur);                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: tva_exception fk_tex_iddepartement; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                  
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY tva_exception                                                                                                                         
    ADD CONSTRAINT fk_tex_iddepartement FOREIGN KEY (tex_iddepartement) REFERENCES departement(dep_iddepartement);                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: tva_exception fk_tex_idtva; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                          
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY tva_exception                                                                                                                         
    ADD CONSTRAINT fk_tex_idtva FOREIGN KEY (tex_idtva) REFERENCES tva(tva_idtva);                                                                     
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: ville_etrangere fk_vet_idpays; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                       
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY ville_etrangere                                                                                                                       
    ADD CONSTRAINT fk_vet_idpays FOREIGN KEY (vet_idpays) REFERENCES pays(pay_idpays);                                                                 
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: ligne_produit lip_idproduit; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY ligne_produit                                                                                                                         
    ADD CONSTRAINT lip_idproduit FOREIGN KEY (lip_idproduit) REFERENCES produit(pro_idproduit);                                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: para par_iddomiciliation_fk; Type: FK CONSTRAINT; Schema: public; Owner: jeromeathion                                                         
--                                                                                                                                                     
                                                                                                                                                       
ALTER TABLE ONLY para                                                                                                                                  
    ADD CONSTRAINT par_iddomiciliation_fk FOREIGN KEY (par_iddomicialiation) REFERENCES commune(com_idcommune);                                        
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- Name: public; Type: ACL; Schema: -; Owner: postgres                                                                                                 
--                                                                                                                                                     
                                                                                                                                                       
REVOKE ALL ON SCHEMA public FROM PUBLIC;                                                                                                               
GRANT ALL ON SCHEMA public TO jeromeathion;                                                                                                            
                                                                                                                                                       
                                                                                                                                                       
--                                                                                                                                                     
-- PostgreSQL database dump complete                                                                                                                   
--                    