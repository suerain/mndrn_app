#Genus 1
INSERT INTO `mndrnapp`.`ash_content` (`id`, `acid_insoluble_ash`, `total_ash`, `water_soluble_ash`) VALUES ('1', 'AcidInsolAshVal', 'TotalAshValue', 'WaterSolAshValue');

INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('1', '4', '0', '0', '1', '0');
INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('2', '3', '0', '0', '2', '0');
INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('3', '1', '0', '0', '1', '0');
INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('4', '3', '0', '0', '3', '0');

INSERT INTO `mndrnapp`.`photo_chemical_screening` (`id`, `expln`, `bark_id`, `fruit_id`, `leaf_id`, `root_id`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', '2', '3', '1', '4');

INSERT INTO `mndrnapp`.`hplc_tlc_entry` (`hplc_tlc_entry_id`, `expln`, `title`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'HPLC Condition');
INSERT INTO `mndrnapp`.`hplc_tlc_entry` (`hplc_tlc_entry_id`, `expln`, `title`) VALUES ('2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'TLC Condition');

INSERT INTO `mndrnapp`.`genus` (`genus_id`, `dnabarcoding`, `moisture_content`, `name`, `physical_characteristics`, `species`, `ash_content_id`, `traverse_section_expln`,`photo_chem_scrn_id`,`hplc_pfl_id`,`tlc_pfl_id`) VALUES ('1', 'ATCCTGUTTCATCTTCCUUUUTTTAAA', 'MC', 'Genus-1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ','Species-1','1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ','1','1','2');

INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-1');
INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-2');
INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-3');
INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('1', 'Name-4');

INSERT INTO `mndrnapp`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('1', 'Herbarium Expln1');
INSERT INTO `mndrnapp`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('2', 'Herbarium Expln2');
INSERT INTO `mndrnapp`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('3', 'Herbarium Expln3');

INSERT INTO `mndrnapp`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('1', 'Expln1');
INSERT INTO `mndrnapp`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('2', 'Expln2');
INSERT INTO `mndrnapp`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('3', 'Expln3');

INSERT INTO `mndrnapp`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('1', 'Expln1');
INSERT INTO `mndrnapp`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('2', 'Expln2');
INSERT INTO `mndrnapp`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('3', 'Expln3');

INSERT INTO `mndrnapp`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('1', 'Expln1');
INSERT INTO `mndrnapp`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('2', 'Expln2');
INSERT INTO `mndrnapp`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('3', 'Expln3');

INSERT INTO `mndrnapp`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp`.`traditional_uses_entry` (`traditional_uses_id`, `expln`, `title`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Uses 1');
INSERT INTO `mndrnapp`.`traditional_uses_entry` (`traditional_uses_id`, `expln`, `title`) VALUES ('2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Uses 2');

INSERT INTO `mndrnapp`.`genus_traditionaluses` (`genus_id`, `traditional_uses_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`genus_traditionaluses` (`genus_id`, `traditional_uses_id`) VALUES ('1', '2');

INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('1', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 1');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 2');

INSERT INTO `mndrnapp`.`genus_pharmacologicalactivity` (`genus_id`, `pharmacological_activity_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`genus_pharmacologicalactivity` (`genus_id`, `pharmacological_activity_id`) VALUES ('1', '2');

INSERT INTO `mndrnapp`.`genus_reference_list` (`genus_genus_id`, `reference_list`) VALUES ('1', 'Reference_1');
INSERT INTO `mndrnapp`.`genus_reference_list` (`genus_genus_id`, `reference_list`) VALUES ('1', 'Reference_2');

#Genus 2
INSERT INTO `mndrnapp`.`ash_content` (`id`, `acid_insoluble_ash`, `total_ash`, `water_soluble_ash`) VALUES ('2', 'AcidInsolAshVal', 'TotalAshValue', 'WaterSolAshValue');

INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('5', '4', '0', '0', '1', '0');
INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('6', '3', '0', '0', '2', '0');
INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('7', '1', '0', '0', '1', '0');
INSERT INTO `mndrnapp`.`plant_parts` (`id`, `alkaloid_level`, `anthraquinone_level`, `flavonoid_level`, `photo_sterol_level`, `saponin_level`) VALUES ('8', '3', '0', '0', '3', '0');

INSERT INTO `mndrnapp`.`photo_chemical_screening` (`id`, `expln`, `bark_id`, `fruit_id`, `leaf_id`, `root_id`) VALUES ('2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', '6', '7', '5', '8');

INSERT INTO `mndrnapp`.`hplc_tlc_entry` (`hplc_tlc_entry_id`, `expln`, `title`) VALUES ('3', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'HPLC Condition');
INSERT INTO `mndrnapp`.`hplc_tlc_entry` (`hplc_tlc_entry_id`, `expln`, `title`) VALUES ('4', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'TLC Condition');

INSERT INTO `mndrnapp`.`genus` (`genus_id`, `dnabarcoding`, `moisture_content`, `name`, `physical_characteristics`, `species`, `ash_content_id`, `traverse_section_expln`,`photo_chem_scrn_id`,`hplc_pfl_id`,`tlc_pfl_id`) VALUES ('2', 'ATCCTGUTTCATCTTCCUUUUTTTAAA', 'MC2', 'Genus-2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ','Species-2','2', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ','2','3','4');

INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('2', 'Name-1');
INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('2', 'Name-2');
INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('2', 'Name-3');
INSERT INTO `mndrnapp`.`genus_local_name_list` (`genus_genus_id`, `local_name_list`) VALUES ('2', 'Name-4');

INSERT INTO `mndrnapp`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('4', 'Herbarium Expln1');
INSERT INTO `mndrnapp`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('5', 'Herbarium Expln2');
INSERT INTO `mndrnapp`.`herbarium_entry` (`herbarium_id`, `expln`) VALUES ('6', 'Herbarium Expln3');

INSERT INTO `mndrnapp`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('2', '4');
INSERT INTO `mndrnapp`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('2', '5');
INSERT INTO `mndrnapp`.`genus_herbarium` (`genus_id`, `herbarium_id`) VALUES ('2', '6');

INSERT INTO `mndrnapp`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('4', 'Expln1');
INSERT INTO `mndrnapp`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('5', 'Expln2');
INSERT INTO `mndrnapp`.`plant_specimen_entry` (`plant_specimen_id`, `expln`) VALUES ('6', 'Expln3');

INSERT INTO `mndrnapp`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('2', '4');
INSERT INTO `mndrnapp`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('2', '5');
INSERT INTO `mndrnapp`.`genus_plantspecimen` (`genus_id`, `plant_specimen_id`) VALUES ('2', '6');

INSERT INTO `mndrnapp`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('4', 'Expln1');
INSERT INTO `mndrnapp`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('5', 'Expln2');
INSERT INTO `mndrnapp`.`photograph_entry` (`photograph_id`, `expln`) VALUES ('6', 'Expln3');

INSERT INTO `mndrnapp`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('2', '4');
INSERT INTO `mndrnapp`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('2', '5');
INSERT INTO `mndrnapp`.`genus_photograph` (`genus_id`, `photograph_id`) VALUES ('2', '6');

INSERT INTO `mndrnapp`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('4', 'Expln1');
INSERT INTO `mndrnapp`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('5', 'Expln2');
INSERT INTO `mndrnapp`.`traverse_section_entry` (`traverse_section_id`, `expln`) VALUES ('6', 'Expln3');

INSERT INTO `mndrnapp`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('2', '4');
INSERT INTO `mndrnapp`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('2', '5');
INSERT INTO `mndrnapp`.`genus_traversesection` (`genus_id`, `traverse_section_id`) VALUES ('2', '6');

INSERT INTO `mndrnapp`.`traditional_uses_entry` (`traditional_uses_id`, `expln`, `title`) VALUES ('3', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Uses 1');
INSERT INTO `mndrnapp`.`traditional_uses_entry` (`traditional_uses_id`, `expln`, `title`) VALUES ('4', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Uses 2');

INSERT INTO `mndrnapp`.`genus_traditionaluses` (`genus_id`, `traditional_uses_id`) VALUES ('2', '3');
INSERT INTO `mndrnapp`.`genus_traditionaluses` (`genus_id`, `traditional_uses_id`) VALUES ('2', '4');

INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('7', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 1');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('8', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 2');

INSERT INTO `mndrnapp`.`genus_pharmacologicalactivity` (`genus_id`, `pharmacological_activity_id`) VALUES ('2', '7');
INSERT INTO `mndrnapp`.`genus_pharmacologicalactivity` (`genus_id`, `pharmacological_activity_id`) VALUES ('2', '8');

INSERT INTO `mndrnapp`.`genus_reference_list` (`genus_genus_id`, `reference_list`) VALUES ('2', 'Reference_1');
INSERT INTO `mndrnapp`.`genus_reference_list` (`genus_genus_id`, `reference_list`) VALUES ('2', 'Reference_2');

INSERT INTO `mndrnapp`.`genus_synonym` (`genus_id`, `synonym_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`genus_synonym` (`genus_id`, `synonym_id`) VALUES ('2', '1');

#Compound 1
INSERT INTO `mndrnapp`.`solubility` (`id`, `ethyl_acetate`, `hexane`, `methanol`, `water`) VALUES ('1', '10', '25', '17', '65');

INSERT INTO `mndrnapp`.`ir_data_entry` (`ir_data_id`, `expln`, `title`) VALUES ('1', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', 'IR Data');

INSERT INTO `mndrnapp`.`ms_data_entry` (`ms_data_id`, `expln`, `title`) VALUES ('1', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', 'MS Data');

INSERT INTO `mndrnapp`.`compound` (`compound_id`, `iupacname`, `melting_point`, `name`,`solubility_id`, `physical_characteristics`, `ir_data_id`, `ms_data_id`) VALUES ('1', 'IUPAC', '10', 'Compound 1','1', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '1', '1');

INSERT INTO `mndrnapp`.`chemical_structure_entry` (`chemical_structure_id`, `expln`) VALUES ('1', 'Explaination ');
INSERT INTO `mndrnapp`.`chemical_structure_entry` (`chemical_structure_id`, `expln`) VALUES ('2', 'Explaination ');
INSERT INTO `mndrnapp`.`chemical_structure_entry` (`chemical_structure_id`, `expln`) VALUES ('3', 'Explaination ');

INSERT INTO `mndrnapp`.`compound_chemicalstructure` (`compound_id`, `chemical_structure_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`compound_chemicalstructure` (`compound_id`, `chemical_structure_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`compound_chemicalstructure` (`compound_id`, `chemical_structure_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp`.`nmr_data_entry` (`nmr_data_id`, `expln`, `title`) VALUES ('1', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '13C NMR Data');
INSERT INTO `mndrnapp`.`nmr_data_entry` (`nmr_data_id`, `expln`, `title`) VALUES ('2', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '1H NMR Data');
INSERT INTO `mndrnapp`.`nmr_data_entry` (`nmr_data_id`, `expln`, `title`) VALUES ('3', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '2D NMR Data');

INSERT INTO `mndrnapp`.`compound_nmr_data` (`compound_id`, `nmr_data_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`compound_nmr_data` (`compound_id`, `nmr_data_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`compound_nmr_data` (`compound_id`, `nmr_data_id`) VALUES ('1', '3');

INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('3', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 1');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('4', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 2');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('5', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 3');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('6', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 4');

INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('1', '3');
INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('1', '4');
INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('1', '5');
INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('1', '6');

INSERT INTO `mndrnapp`.`compound_reference_list` (`compound_compound_id`, `reference_list`) VALUES ('1', 'Reference_1');
INSERT INTO `mndrnapp`.`compound_reference_list` (`compound_compound_id`, `reference_list`) VALUES ('1', 'Reference_2');


#Compound 2
INSERT INTO `mndrnapp`.`solubility` (`id`, `ethyl_acetate`, `hexane`, `methanol`, `water`) VALUES ('2', '15', '15', '15', '25');

INSERT INTO `mndrnapp`.`ir_data_entry` (`ir_data_id`, `expln`, `title`) VALUES ('2', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', 'IR Data');

INSERT INTO `mndrnapp`.`ms_data_entry` (`ms_data_id`, `expln`, `title`) VALUES ('2', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', 'MS Data');

INSERT INTO `mndrnapp`.`compound` (`compound_id`, `iupacname`, `melting_point`, `name`,`solubility_id`, `physical_characteristics`, `ir_data_id`, `ms_data_id`) VALUES ('2', 'IUPAC2', '10', 'Compound 2','2', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '2', '2');

INSERT INTO `mndrnapp`.`chemical_structure_entry` (`chemical_structure_id`, `expln`) VALUES ('4', 'Explaination ');
INSERT INTO `mndrnapp`.`chemical_structure_entry` (`chemical_structure_id`, `expln`) VALUES ('5', 'Explaination ');
INSERT INTO `mndrnapp`.`chemical_structure_entry` (`chemical_structure_id`, `expln`) VALUES ('6', 'Explaination ');

INSERT INTO `mndrnapp`.`compound_chemicalstructure` (`compound_id`, `chemical_structure_id`) VALUES ('2', '4');
INSERT INTO `mndrnapp`.`compound_chemicalstructure` (`compound_id`, `chemical_structure_id`) VALUES ('2', '5');
INSERT INTO `mndrnapp`.`compound_chemicalstructure` (`compound_id`, `chemical_structure_id`) VALUES ('2', '6');

INSERT INTO `mndrnapp`.`nmr_data_entry` (`nmr_data_id`, `expln`, `title`) VALUES ('4', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '13C NMR Data');
INSERT INTO `mndrnapp`.`nmr_data_entry` (`nmr_data_id`, `expln`, `title`) VALUES ('5', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '1H NMR Data');
INSERT INTO `mndrnapp`.`nmr_data_entry` (`nmr_data_id`, `expln`, `title`) VALUES ('6', 'Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation Explanation', '2D NMR Data');

INSERT INTO `mndrnapp`.`compound_nmr_data` (`compound_id`, `nmr_data_id`) VALUES ('2', '4');
INSERT INTO `mndrnapp`.`compound_nmr_data` (`compound_id`, `nmr_data_id`) VALUES ('2', '5');
INSERT INTO `mndrnapp`.`compound_nmr_data` (`compound_id`, `nmr_data_id`) VALUES ('2', '6');

INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('9', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 1');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('10', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 2');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('11', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 3');
INSERT INTO `mndrnapp`.`pharmacological_activity_entry` (`pharmacological_activity_id`, `expln`, `title`) VALUES ('12', 'Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination Explaination ', 'Activity 4');

INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('2', '9');
INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('2', '10');
INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('2', '11');
INSERT INTO `mndrnapp`.`compound_pharmacologicalactivity` (`compound_id`, `pharmacological_activity_id`) VALUES ('2', '12');

INSERT INTO `mndrnapp`.`compound_reference_list` (`compound_compound_id`, `reference_list`) VALUES ('2', 'Reference_1');
INSERT INTO `mndrnapp`.`compound_reference_list` (`compound_compound_id`, `reference_list`) VALUES ('2', 'Reference_2');

INSERT INTO `mndrnapp`.`compound_synonym` (`compound_id`, `synonym_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`compound_synonym` (`compound_id`, `synonym_id`) VALUES ('2', '1');


#To be Executed at last
INSERT INTO `mndrnapp`.`genus_compound` (`genus_id`, `compound_id`) VALUES ('1', '1');
INSERT INTO `mndrnapp`.`genus_compound` (`genus_id`, `compound_id`) VALUES ('1', '2');
INSERT INTO `mndrnapp`.`genus_compound` (`genus_id`, `compound_id`) VALUES ('2', '1');
INSERT INTO `mndrnapp`.`genus_compound` (`genus_id`, `compound_id`) VALUES ('2', '2');

