
-- -----------------------------------------------------
-- Schema e_carnet
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS e_carnet DEFAULT CHARACTER SET utf8 ;
USE e_carnet;

-- -----------------------------------------------------
-- Table Vaccin
-- -----------------------------------------------------
DROP TABLE IF EXISTS Vaccin ;

CREATE TABLE IF NOT EXISTS Vaccin (
  code_vaccin VARCHAR(100) NOT NULL,
  nom_vaccin VARCHAR(45) NOT NULL,
  vaccin_contre VARCHAR(45) NOT NULL,
  num_injection INTEGER NOT NULL,
  rappel DATE NOT NULL,
  PRIMARY KEY (code_vaccin))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table Medicaments
-- -----------------------------------------------------
DROP TABLE IF EXISTS Medicaments ;

CREATE TABLE IF NOT EXISTS Medicaments (
  id_medicament INT NOT NULL AUTO_INCREMENT,
  nom_medicament VARCHAR(45) NULL,
  PRIMARY KEY (id_medicament))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Docteur
-- -----------------------------------------------------
DROP TABLE IF EXISTS Docteur ;

CREATE TABLE IF NOT EXISTS Docteur (
  matricule_doc VARCHAR(45) NOT NULL,
  nom_doc VARCHAR(45) NOT NULL,
  prenom_doc VARCHAR(45) NOT NULL,
  date_naiss_doc DATE,
  sexe_doc ENUM('M', 'F') NOT NULL,
  poids_doc INTEGER,
  taille_doc INTEGER,
  rh_doc ENUM('positif', 'negatif') NOT NULL,
  groupe_sanguin_doc ENUM('A', 'AB', 'B', 'O') NOT NULL,
  numero_doc VARCHAR(100) NOT NULL,
  pswd_doc VARCHAR(45) NOT NULL,
  mail_doc VARCHAR(45) NOT NULL,
  lieu_naiss_doc VARCHAR(45),
  PRIMARY KEY (matricule_doc))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Prescription
-- -----------------------------------------------------
DROP TABLE IF EXISTS Prescription ;

CREATE TABLE IF NOT EXISTS Prescription (
  id_prescription INTEGER NOT NULL AUTO_INCREMENT,
  type_prescription ENUM('analyse', 'ordonnance') NOT NULL,
  PRIMARY KEY (id_prescription))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Pere
-- -----------------------------------------------------
DROP TABLE IF EXISTS Pere ;

CREATE TABLE IF NOT EXISTS Pere (
  id_pere INTEGER NOT NULL AUTO_INCREMENT,
  nom_pere VARCHAR(45) NOT NULL,
  prenom_pere VARCHAR(45) NOT NULL,
  date_naiss_pere DATE NOT NULL,
  sexe_pere ENUM('M', 'F') NOT NULL,
  poids_pere INTEGER NOT NULL,
  taille_pere INTEGER NOT NULL,
  rh_pere ENUM('positif', 'negatif') NOT NULL,
  groupe_sanguin_pere ENUM('A', 'AB', 'B', 'O') NOT NULL,
  lieu_naiss_pere VARCHAR(45) NOT NULL,
  profession_pere VARCHAR(45),
  mail_pere VARCHAR(45),
  tel_pere VARCHAR(100) NOT NULL,
  ethnie_pere VARCHAR(45),
  PRIMARY KEY (id_pere))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Mere
-- -----------------------------------------------------
DROP TABLE IF EXISTS Mere ;

CREATE TABLE IF NOT EXISTS Mere (
  id_mere INTEGER NOT NULL AUTO_INCREMENT,
  nom_mere VARCHAR(45) NOT NULL,
  prenom_mere VARCHAR(45) NOT NULL,
  date_naiss_mere DATE NOT NULL,
  sexe_mere ENUM('M', 'F') NOT NULL,
  poids_mere INTEGER NOT NULL,
  taille_mere INTEGER NOT NULL,
  rh_mere ENUM('positif', 'negatif') NOT NULL,
  groupe_sanguin_mere ENUM('A', 'AB', 'B', 'O') NOT NULL,
  lieu_naiss_mere VARCHAR(45) NOT NULL,
  mail_mere VARCHAR(45),
  code_mere VARCHAR(45),
  pswd_mere VARCHAR(45),
  ethnie_mere VARCHAR(45),
  tel_mere VARCHAR(45),
  PRIMARY KEY (id_mere))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Vaccination
-- -----------------------------------------------------
DROP TABLE IF EXISTS Vaccination ;

CREATE TABLE IF NOT EXISTS Vaccination (
  id_vaccination INTEGER NOT NULL AUTO_INCREMENT,
  concerne ENUM('mere', 'enfant') NOT NULL,
  date_normale_vaccinationl DATE NOT NULL,
  Vaccin_code_vaccin VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_vaccination, Vaccin_code_vaccin)
 -- FOREIGN KEY (Vaccin_code_vaccin) REFERENCES Vaccin (code_vaccin)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Grossesse
-- -----------------------------------------------------
DROP TABLE IF EXISTS Grossesse ;

CREATE TABLE IF NOT EXISTS Grossesse (
  id_grossesse INTEGER NOT NULL,
  debut_grossesse DATE NOT NULL,
  Mere_id_mere VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_grossesse, Mere_id_mere)
 -- FOREIGN KEY (Mere_id_mere) REFERENCES Mere (id_mere)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Enfant
-- -----------------------------------------------------
DROP TABLE IF EXISTS Enfant ;

CREATE TABLE IF NOT EXISTS Enfant (
  id_enfant INTEGER NOT NULL AUTO_INCREMENT,
  nom_enfant VARCHAR(45) NOT NULL,
  date_naiss_enfant DATE NOT NULL,
  sexe_enfant ENUM('M', 'F') NOT NULL,
  poids_enfant INT NOT NULL,
  taille_enfant INT NOT NULL,
  rh_enfant ENUM('positif', 'negatif') NOT NULL,
  groupe_sanguin_enfant ENUM('A', 'AB', 'B', 'O') NOT NULL,
  lieu_naiss_enfant VARCHAR(45) NOT NULL,
  Pere_id_pere VARCHAR(45) NOT NULL,
  Grossesse_id_grossesse INT NOT NULL,
  PRIMARY KEY (id_enfant, Pere_id_pere, Grossesse_id_grossesse)
 -- FOREIGN KEY (Pere_id_pere) REFERENCES Pere (id_pere),
 -- FOREIGN KEY (Grossesse_id_grossesse) REFERENCES Grossesse (id_grossesse)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Rendez_vous
-- -----------------------------------------------------
DROP TABLE IF EXISTS Rendez_vous ;

CREATE TABLE IF NOT EXISTS Rendez_vous (
  id_rendez_vous INT NOT NULL AUTO_INCREMENT,
  raison ENUM('programmee', 'urgente') NOT NULL,
  type_rendez_vous ENUM('prenatale', 'postnatale', 'accouchement') NOT NULL,
  observation VARCHAR(100) NOT NULL,
  Docteur_matricule_doc VARCHAR(45) NOT NULL,
  Prescription_id_prescription INT NOT NULL,
  Enfant_id_enfant VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_rendez_vous, Docteur_matricule_doc, Prescription_id_prescription, Enfant_id_enfant)
-- FOREIGN KEY (Docteur_matricule_doc) REFERENCES Docteur (matricule_doc),
-- FOREIGN KEY (Prescription_id_prescription) REFERENCES Prescription (id_prescription),
-- FOREIGN KEY (Enfant_id_enfant) REFERENCES Enfant (id_enfant)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Constantes
-- -----------------------------------------------------
DROP TABLE IF EXISTS Constantes ;

CREATE TABLE IF NOT EXISTS Constantes (
  id_constante INT NOT NULL,
  nom_constante VARCHAR(45) NOT NULL,
  valeur_constante INT NOT NULL,
  PRIMARY KEY (id_constante))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table Etat_naiss
-- -----------------------------------------------------
DROP TABLE IF EXISTS Etat_naiss ;

CREATE TABLE IF NOT EXISTS Etat_naiss (
  id_etat_naiss INTEGER NOT NULL AUTO_INCREMENT,
  taille_naiss INTEGER NOT NULL,
  poids_naiss INTEGER NOT NULL,
  aspect_placenta VARCHAR(100),
  duree_travail INTEGER NOT NULL,
  syphilis BOOLEAN NOT NULL,
  cyanose BOOLEAN NOT NULL,
  date_sortie DATE NOT NULL,
  malformation BOOLEAN NOT NULL,
  Fth INTEGER NOT NULL,
  suite_de_couche VARCHAR(45),
  type_accouchement ENUM('normale', 'cesarienne'),
  Grossesse_id_grossesse INTEGER NOT NULL,
  Grossesse_Mere_id_mere VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_etat_naiss, Grossesse_id_grossesse, Grossesse_Mere_id_mere)
 -- FOREIGN KEY (Grossesse_id_grossesse , Grossesse_Mere_id_mere) REFERENCES Grossesse (id_grossesse , Mere_id_mere)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Antecedant_medicaux
-- -----------------------------------------------------
DROP TABLE IF EXISTS Antecedant_medicaux ;

CREATE TABLE IF NOT EXISTS Antecedant_medicaux (
  id_maladie INTEGER NOT NULL,
  type_maladie VARCHAR(45),
  nom_maladie VARCHAR(45) NOT NULL,
  observation VARCHAR(255) NOT NULL,
  Docteur_matricule_doc VARCHAR(45) NOT NULL,
  Enfant_id_enfant INTEGER NOT NULL,
  Enfant_Pere_id_pere VARCHAR(45) NOT NULL,
  Enfant_Grossesse_id_grossesse INTEGER NOT NULL,
  Mere_id_mere INTEGER NOT NULL,
  PRIMARY KEY (id_maladie, Docteur_matricule_doc, Enfant_id_enfant, Enfant_Pere_id_pere, Enfant_Grossesse_id_grossesse, Mere_id_mere)
 -- FOREIGN KEY (Docteur_matricule_doc) REFERENCES Docteur (matricule_doc),
 -- FOREIGN KEY (Enfant_id_enfant , Enfant_Pere_id_pere , Enfant_Grossesse_id_grossesse) REFERENCES Enfant (id_enfant , Pere_id_pere , Grossesse_id_grossesse),
-- FOREIGN KEY (Mere_id_mere) REFERENCES Mere (id_mere)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Prescrire
-- -----------------------------------------------------
DROP TABLE IF EXISTS Prescrire ;

CREATE TABLE IF NOT EXISTS Prescrire (
  Rendez_vous_id_rendez_vous VARCHAR(45) NOT NULL,
  Vaccination_id_vaccination INTEGER NOT NULL,
  date_reelle_prise DATE,
  PRIMARY KEY (Rendez_vous_id_rendez_vous, Vaccination_id_vaccination)
 -- FOREIGN KEY (Rendez_vous_id_rendez_vous) REFERENCES Rendez_vous (id_rendez_vous),
 -- FOREIGN KEY (Vaccination_id_vaccination) REFERENCES Vaccination (id_vaccination)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Prelever
-- -----------------------------------------------------
DROP TABLE IF EXISTS Prelever ;

CREATE TABLE IF NOT EXISTS Prelever (
  Rendez_vous_id_rendez_vous VARCHAR(45) NOT NULL,
  Constantes_id_constante INT NOT NULL,
  type_constante ENUM('temperature', 'taille', 'tension', 'poids', 'Hu', 'albumine') NULL,
  PRIMARY KEY (Rendez_vous_id_rendez_vous, Constantes_id_constante)
    -- FOREIGN KEY (Rendez_vous_id_rendez_vous) REFERENCES Rendez_vous (id_rendez_vous),
    -- FOREIGN KEY (Constantes_id_constante) REFERENCES Constantes (id_constante)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Contenir
-- -----------------------------------------------------
DROP TABLE IF EXISTS Contenir ;

CREATE TABLE IF NOT EXISTS Contenir (
  Medicaments_id_medicament VARCHAR(45) NOT NULL,
  Prescription_id_prescription INTEGER NOT NULL,
  PRIMARY KEY (Medicaments_id_medicament, Prescription_id_prescription)
    -- FOREIGN KEY (Medicaments_id_medicament) REFERENCES Medicaments (id_medicament),
    -- FOREIGN KEY (Prescription_id_prescription) REFERENCES Prescription (id_prescription)
)
ENGINE = InnoDB;