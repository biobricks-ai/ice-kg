COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Species",
		"Assay",
		"Endpoint",
		"Response",
		"Response Unit",
		"Reference",
		"URL"
	FROM "data-source/ice/ADME_Parameters_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ADME_Parameters_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/AcuteToxMOA_AcuteLethalityMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/AcuteToxMOA_AcuteLethalityMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Mixture",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Formulation ID",
		"Formulation Name",
		"Percent Active Ingredient",
		"Species",
		"Route",
		"Assay",
		"Endpoint",
		"Response Modifier",
		"Response",
		"Response Unit",
		"Reference"
	FROM "data-source/ice/Acute_Dermal_Toxicity_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Acute_Dermal_Toxicity_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Mixture",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Formulation ID",
		"Formulation Name",
		"Percent Active Ingredient",
		"Assay",
		"Test Material Form",
		"Product Vehicle",
		"Conc Test Substance",
		"Guideline",
		"Species",
		"Strain",
		"Sex",
		"Min Age (weeks)",
		"Max Age (weeks)",
		"Min Weight (g)",
		"Max Weight (g)",
		"Nominal Concentration (mg/L)",
		"Dose Gravimetric Concentration (mg/L)",
		"MMAD (um)",
		"GSD",
		"Death",
		"Test",
		"Clinical Observations",
		"Gross Pathology",
		"Limit Test",
		"Administration",
		"Exposure Type",
		"Duration",
		"Endpoint",
		"Response",
		"Response Unit",
		"Reference",
		"URL"
	FROM "data-source/ice/Acute_Inhalation_Toxicity_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Acute_Inhalation_Toxicity_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Mixture",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Formulation ID",
		"Formulation Name",
		"Percent Active Ingredient",
		"Species",
		"Sex",
		"Assay",
		"Endpoint",
		"Response Modifier",
		"Response",
		"Response Unit",
		"Reference",
		"URL"
	FROM "data-source/ice/Acute_Oral_Toxicity_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Acute_Oral_Toxicity_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/AndrogenMOA_AndrogenMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/AndrogenMOA_AndrogenMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/CancerMOA_CancerMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/CancerMOA_CancerMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data.Name",
		"Data.Type",
		"Data.Version",
		"Record.ID",
		"Mixture",
		"Chemical.Name",
		"CASRN",
		"DTXSID",
		"Formulation.ID",
		"Formulation.Name",
		"Percent.Active.Ingredient",
		"Species",
		"Strain",
		"Sex",
		"Route",
		"Level.of.Evidence",
		"Tissue",
		"Location",
		"Lesion",
		"Lesion.(Incidence)",
		"Assay",
		"Endpoint",
		"Response",
		"Response.Unit",
		"Reference",
		"URL"
	FROM "data-source/ice/Cancer_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Cancer_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/CardioToxMOA_CardioToxTMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/CardioToxMOA_CardioToxTMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/CardioToxTMOA_CardioToxTMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/CardioToxTMOA_CardioToxTMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Unnamed: 0",
		"Unnamed: 1"
	FROM "data-source/ice/ChemcialQC_Column_Descriptions.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ChemcialQC_Column_Descriptions.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"tox21_id",
		"ncgc_id",
		"spid",
		"qc_NEW",
		"qc_t4",
		"ncct_qc",
		"ncct_qc_description",
		"pubchem_sid",
		"chid",
		"qc_t0_simple",
		"qc_t4_simple",
		"qc_NEW_spid",
		"ncct_qc_simple"
	FROM "data-source/ice/ChemcialQC_ICE_Chemical_QC.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ChemcialQC_ICE_Chemical_QC.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Tox21 Toolbox Chemical QC Grades",
		"Unnamed: 1",
		"Unnamed: 2"
	FROM "data-source/ice/ChemcialQC_Tox21_QC_descriptions.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ChemcialQC_Tox21_QC_descriptions.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Unnamed: 0",
		"Unnamed: 1"
	FROM "data-source/ice/ChemicalQC_Column_Descriptions.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ChemicalQC_Column_Descriptions.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"ncgc_id",
		"tox21_id",
		"casrn",
		"dtxsid",
		"chemical_name",
		"chem_type",
		"tox21_qc_t0",
		"tox21_qc_t4",
		"NICEATM_qc_t0",
		"NICEATM_qc_t4",
		"NICEATM_qc_summary_call"
	FROM "data-source/ice/ChemicalQC_cHTS_Chemical_QC_DATA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ChemicalQC_cHTS_Chemical_QC_DATA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Unnamed: 0",
		"Unnamed: 1",
		"Unnamed: 2"
	FROM "data-source/ice/ChemicalQC_cHTS_Chemical_QC_descriptions.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ChemicalQC_cHTS_Chemical_QC_descriptions.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Endpoint",
		"Response",
		"Response Unit",
		"Reference",
		"URL"
	FROM "data-source/ice/Chemical_Functional_Use_Categories_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Chemical_Functional_Use_Categories_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/DARTMOA_DARTMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/DARTMOA_DARTMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Study ID",
		"Species",
		"Strain",
		"Sex",
		"Lifestage",
		"Route",
		"Critical Effect",
		"Assay",
		"Endpoint",
		"Response",
		"Response Unit",
		"Unified Medical Language System",
		"Reference",
		"PMID",
		"URL"
	FROM "data-source/ice/DART_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/DART_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Mixture",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Assay",
		"Endpoint",
		"Reported Response Modifier",
		"Reported Response",
		"Reported Response Unit",
		"Conversion Factor",
		"Conversion Factor Value",
		"Conversion Factor Source",
		"Converted Response",
		"Converted Response Unit",
		"Response Modifier",
		"Response",
		"Response Unit",
		"Reference",
		"PMID",
		"URL"
	FROM "data-source/ice/Endocrine_In_Vitro_Endocrine.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Endocrine_In_Vitro_Endocrine.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Mixture",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Species",
		"Strain",
		"Reported Strain",
		"Sex",
		"Route",
		"Maximum Dose",
		"Maximum Dose Units",
		"Age at First Dose",
		"Age Ovariectomized or Castrated",
		"Time Elapsed Between Surgery and Treatment",
		"Treatment Duration",
		"Time Elapsed Between Last Dose and Necropsy",
		"Number of Doses Tested",
		"Reference Hormone",
		"Reference Hormone Dose",
		"Reference Hormone Dose Units",
		"Reference Hormone Route",
		"Assay",
		"Endpoint",
		"Response",
		"Response Unit",
		"Reference",
		"PMID",
		"URL",
		"Additional Information"
	FROM "data-source/ice/Endocrine_In_Vivo_Endocrine.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Endocrine_In_Vivo_Endocrine.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/EstrogenMOA_EstrogenMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/EstrogenMOA_EstrogenMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"50th percentile (mg/kg/day)",
		"5th percentile (mg/kg/day)",
		"95th percentile (mg/kg/day)",
		"Specific Pathway",
		"General Pathway",
		"Reference",
		"URL"
	FROM "data-source/ice/Exposure_Predictions_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Exposure_Predictions_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Formulation ID",
		"Formulation Name",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Percent Active Ingredient",
		"Concentration",
		"Concentration Units",
		"Mixture",
		"Species",
		"Assay",
		"Endpoint",
		"Response Modifier",
		"Response",
		"Response Unit",
		"Reference",
		"PMID",
		"URL"
	FROM "data-source/ice/Eye_Irritation_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Eye_Irritation_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Product Name",
		"Active Ingredient",
		"CASRN",
		"Percent Active Ingredient",
		"Test Material Form",
		"Dose",
		"Dose Unit",
		"Species",
		"Strain",
		"Sex",
		"Endpoint",
		"No. Positive 1 hr",
		"No. Tested 1 hr",
		"No. Positive 24hr",
		"No. Tested 24 hr",
		"No. Positive 48hr",
		"No. Tested  48 hr",
		"No. Positive 72hr",
		"No. Tested 72 hr",
		"PII PDI",
		"EPA Tox Cat",
		"GHS Tox Cat",
		"Clinical Observations",
		"Record ID",
		"PID"
	FROM "data-source/ice/Skin_Irritation_Formulations.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Skin_Irritation_Formulations.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Formulation me",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Percent Active",
		"Mixtures",
		"Data Type",
		"Laboratory",
		"Run Number",
		"3 min Viability (%)",
		"60 min Viability (%)",
		"240 min Viability (%)",
		"Assay",
		"Endpoint",
		"Response Modifier",
		"Response",
		"Units",
		"Species",
		"Sex",
		"Route",
		"Reference",
		"PMID",
		"URL",
		"Formulation ID",
		"Record ID"
	FROM "data-source/ice/Skin_Irritation_Skin_Irritation-Corrosion.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Skin_Irritation_Skin_Irritation-Corrosion.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Data Name",
		"Data Type",
		"Data Version",
		"Record ID",
		"Mixture",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Formulation ID",
		"Formulation Name",
		"Percent Active Ingredient",
		"Concentration",
		"Concentration Units",
		"Species",
		"Route",
		"Assay",
		"Endpoint",
		"Response Modifier",
		"Response",
		"Response Unit",
		"Reference",
		"PMID",
		"URL"
	FROM "data-source/ice/Skin_Sensitization_Data.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Skin_Sensitization_Data.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/SteroidMOA_SteroidMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/SteroidMOA_SteroidMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/ThyroidMOA_ThyroidMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/ThyroidMOA_ThyroidMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/Tox21MT_Tox21MT.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/Tox21MT_Tox21MT.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"DatasetName",
		"RecordID",
		"ChemicalName",
		"CASRN",
		"DTXSID",
		"Assay",
		"Curve Flag Description",
		"Chemical QC Description",
		"TestRange",
		"TestRange.Unit",
		"Endpoint",
		"Response",
		"ResponseUnit",
		"Reference",
		"URL"
	FROM "data-source/ice/cHTS2022_invitrodb34_20220302.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/cHTS2022_invitrodb34_20220302.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/cHTSMOA_Tox21MT.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/cHTSMOA_Tox21MT.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"new_AssayEndpointName",
		"old_AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/cHTSMT_ALL_AllMTMOA.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/cHTSMT_ALL_AllMTMOA.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"aeid",
		"Old_AssayEndpointName",
		"new_AssayName"
	FROM "data-source/ice/cHTSMT_ALL_ChangedNames.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/cHTSMT_ALL_ChangedNames.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"This workbook contains information on the annotation of the cHTS data updated for the ICE 3.6 release",
		"Unnamed: 1"
	FROM "data-source/ice/cHTSMT_ALL_Overview.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/cHTSMT_ALL_Overview.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Assay",
		"Assay Source",
		"Species",
		"Tissue",
		"Invitro Assay Format",
		"Gene",
		"Entrez Gene ID"
	FROM "data-source/ice/cHTSMT_ALL_invitrodb34_AssayAnnotation.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/cHTSMT_ALL_invitrodb34_AssayAnnotation.parquet'
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"AssayEndpointName",
		"Assay_MOA",
		"ModeofAction",
		"MOA_ToxicityEndpoint",
		"ToxicityEndpoint",
		"Assay_MechanisticTarget",
		"MechanisticTarget",
		"MT_NCIm_term",
		"MT_NCIm_term_ID"
	FROM "data-source/ice/cHTSMT_cHTSMT.parquet"
	LIMIT 1000
)
TO 'data-processed/ice/cHTSMT_cHTSMT.parquet'
(FORMAT 'parquet')
;

