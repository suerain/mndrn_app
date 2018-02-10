#Genus
INSERT INTO `mndrnapp1`.`ash_content` (`id`, `acid_insoluble_ash`, `total_ash`, `water_soluble_ash`) VALUES ('1', 'AcidInsolAshVal', 'TotalAshValue', 'WaterSolAshValue');

INSERT INTO `mndrnapp1`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('1', '4', '0', '0', '1', '0');
INSERT INTO `mndrnapp1`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('2', '3', '0', '0', '2', '0');
INSERT INTO `mndrnapp1`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('3', '1', '0', '0', '1', '0');
INSERT INTO `mndrnapp1`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('4', '3', '0', '0', '3', '0');

INSERT INTO `mndrnapp1`.`photo_chemical_screening` (`id`, `expln`, `bark_id`, `fruit_id`, `leaf_id`, `root_id`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', '2', '3', '1', '4');

INSERT INTO `mndrnapp1`.`hplc_tlc_entry` (`hplc_tlc_entry_id`, `expln`, `title`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'HPLC Condition');
INSERT INTO `mndrnapp1`.`hplc_tlc_entry` (`hplc_tlc_entry_id`, `expln`, `title`) VALUES ('2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'TLC Condition');

INSERT INTO `mndrnapp1`.`genus` (`genus_id`, `dnabarcoding`, `moisture_content`, `name`, `physical_characteristics`, `species`, `ash_content_id`, `traverse_section_expln`,`photo_chem_scrn_id`,`hplc_pfl_id`,`tlc_pfl_id`) VALUES ('1', 'ATCCTGUTTCATCTTCCUUUUTTTAAA', 'MC', 'Genus-1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ','Species-1','1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ','1','1','2');

INSERT INTO `mndrnapp1`.`genus_synonym_list` (`genus_genus_id`, `synonym_list`) VALUES ('1', 'Genus-2 Species-2');
INSERT INTO `mndrnapp1`.`genus_synonym_list` (`genus_genus_id`, `synonym_list`) VALUES ('1', 'Genus-3 Species-3');
INSERT INTO `mndrnapp1`.`genus_synonym_list` (`genus_genus_id`, `synonym_list`) VALUES ('1', 'Genus-4 Species-4');

INSERT INTO `mndrnapp1`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-1');
INSERT INTO `mndrnapp1`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-2');
INSERT INTO `mndrnapp1`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-3');
INSERT INTO `mndrnapp1`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-4');

INSERT INTO `mndrnapp1`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('1', 'Herbarium Expln1');
INSERT INTO `mndrnapp1`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('2', 'Herbarium Expln2');
INSERT INTO `mndrnapp1`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('3', 'Herbarium Expln3');

INSERT INTO `mndrnapp1`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp1`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp1`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp1`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('1', 'Expln1');
INSERT INTO `mndrnapp1`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('2', 'Expln2');
INSERT INTO `mndrnapp1`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('3', 'Expln3');

INSERT INTO `mndrnapp1`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp1`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp1`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp1`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('1', 'Expln1');
INSERT INTO `mndrnapp1`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('2', 'Expln2');
INSERT INTO `mndrnapp1`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('3', 'Expln3');

INSERT INTO `mndrnapp1`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp1`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp1`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp1`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('1', 'Expln1');
INSERT INTO `mndrnapp1`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('2', 'Expln2');
INSERT INTO `mndrnapp1`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('3', 'Expln3');

INSERT INTO `mndrnapp1`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp1`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp1`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp1`.`traditional_uses_entry` (`traditional_uses_id`, `expln`, `title`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Uses 1');
INSERT INTO `mndrnapp1`.`traditional_uses_entry` (`traditional_uses_id`, `expln`, `title`) VALUES ('2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Uses 2');

INSERT INTO `mndrnapp1`.`genus_traditionaluses` (`genus_id`, `traditional_uses_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp1`.`genus_traditionaluses` (`genus_id`, `traditional_uses_id`) VALUES ('1', '2');

INSERT INTO `mndrnapp1`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 1');
INSERT INTO `mndrnapp1`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 2');

INSERT INTO `mndrnapp1`.`genus_pharmacologicalactivity` (`genus_id`, `pharmacological_activity_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp1`.`genus_pharmacologicalactivity` (`genus_id`, `pharmacological_activity_id`) VALUES ('1', '2');

INSERT INTO `mndrnapp1`.`genus_reference_list` (`genus_genus_id`, `reference_list`) VALUES ('1', 'Reference_1');
INSERT INTO `mndrnapp1`.`genus_reference_list` (`genus_genus_id`, `reference_list`) VALUES ('1', 'Reference_2');

#Compound
INSERT INTO `mndrnapp1`.`compound` (`id`, `iupacname`, `melting_point`, `name`) VALUES ('1', 'IUPAC', '10', 'Compound 1');

#To be Executed at last
INSERT INTO `mndrnapp1`.`genus_compound` (`genus_id`, `compound_id`) VALUES ('1', '1');
