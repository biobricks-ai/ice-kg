COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Dataset.Name",
		"Record.ID",
		"Chemical.Name",
		"CASRN",
		"DTXSID",
		"Species",
		"Assay",
		"Endpoint",
		"Response",
		"Units",
		"Reference",
		"URL"
	FROM "data-source/ice/ADME_Parameters_ADME_Parameter.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/ADME_Parameters_ADME_Parameter.parquet"
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
		"Dose (mg/kg)",
		"Product Vehicle",
		"Conc Test Substance",
		"Test Guideline",
		"Test Organism",
		"Strain",
		"Sex",
		"Min Age (weeks)",
		"Max Age (weeks)",
		"Min Weight (g)",
		"Max Weight (g)",
		"Curated LD50 (mg/kg)",
		"EPA Tox Cat",
		"GHS Tox Cat",
		"Death",
		"Test",
		"Clinical Observations",
		"Gross Pathology",
		"Limit Test",
		"Record ID",
		"PID"
	FROM "data-source/ice/Acute_Dermal_Toxicity_Mixtures.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Acute_Dermal_Toxicity_Mixtures.parquet"
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
		"Product Vehicle",
		"Conc Test Substance",
		"Test Guideline",
		"Test Organism",
		"Strain",
		"Sex",
		"Min Age (weeks)",
		"Max Age (weeks)",
		"Min Weight (g)",
		"Max Weight (g)",
		"Curated LC50 (mg/L)",
		"EPA Tox Cat",
		"GHS Tox Cat",
		"Exposure",
		"Nominal Concentration (mg/L)",
		"Dose Gravimetric Concentration (mg/L)",
		"MMAD (um)",
		"GSD",
		"Death",
		"Test",
		"Clinical Observations",
		"Gross Pathology",
		"Limit Test",
		"Record ID",
		"PID"
	FROM "data-source/ice/Acute_Inhalation_Toxicity_Mixtures.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Acute_Inhalation_Toxicity_Mixtures.parquet"
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Formulation Name",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Percent Active",
		"Mixture",
		"Data Type",
		"Assay",
		"Endpoint",
		"Response Modifier",
		"Response",
		"Units",
		"Species",
		"Route",
		"Sex",
		"Reference",
		"PMID",
		"URL",
		"Formulation ID",
		"Record ID"
	FROM "data-source/ice/Acute_Oral_Toxicity_Acute_Oral_Toxicity.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Acute_Oral_Toxicity_Acute_Oral_Toxicity.parquet"
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"DatasetName",
		"Record ID",
		"Formulation ID",
		"Formulation Name",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Percent Active",
		"Mixtures",
		"Species",
		"Sex",
		"Strain",
		"Route",
		"Level of evidence",
		"Tissue",
		"Location",
		"Lesion",
		"Lesion (incidence)",
		"Assay",
		"Endpoint",
		"Response",
		"Units",
		"Reference",
		"PMID",
		"URL"
	FROM "data-source/ice/Cancer_Data.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Cancer_Data.parquet"
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Record ID",
		"Chemical Name",
		"Substance Type",
		"CASRN",
		"DTXSID",
		"QSAR Ready ID",
		"Assay",
		"Endpoint",
		"Value",
		"Unit",
		"Species",
		"Receptor Species",
		"Route",
		"Sex",
		"strain",
		"lifestage",
		"tissue",
		"lesion",
		"location",
		"assaysource",
		"gene",
		"entrezid",
		"invitroassayformat",
		"reference",
		"referenceurl",
		"pubmedid"
	FROM "data-source/ice/DART_Chemicals.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/DART_Chemicals.parquet"
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Record ID",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Mixture",
		"Data Type",
		"Assay",
		"Receptor Species",
		"Endpoint",
		"Reported Response Modifier",
		"Reported Response",
		"Reported Response Unit",
		"Conversion Factor",
		"Conversion Factor Value",
		"Conversion Factor Source",
		"Converted Response Modifier",
		"Converted Response",
		"Converted Response Unit",
		"Response Modifier",
		"Response",
		"Response Unit",
		"Reference",
		"Reference 2"
	FROM "data-source/ice/Endocrine_Endocrine_In_vitro.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Endocrine_Endocrine_In_vitro.parquet"
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Record ID",
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Mixture",
		"Data Type",
		"Assay",
		"Species",
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
		"Additional Information",
		"Endpoint",
		"Response Modifier",
		"Response",
		"Response Unit",
		"Reference",
		"Reference 2"
	FROM "data-source/ice/Endocrine_Endocrine_in_vivo.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Endocrine_Endocrine_in_vivo.parquet"
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Chemical Name",
		"CASRN",
		"DTXSID",
		"Assay",
		"Endpoint",
		"Value",
		"Qsar Ready ID",
		"Record ID"
	FROM "data-source/ice/Eye_Irritation_Chemicals.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Eye_Irritation_Chemicals.parquet"
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
		"EPA Classification",
		"Dose",
		"Dose Unit",
		"Volume",
		"Volume Unit",
		"Species",
		"Strain",
		"Sex",
		"Tissue",
		"Endpoint",
		"No. Positive Animals 1h",
		"No. Animals Tested 1h",
		"No. Positive Animals 24h",
		"No. Animals Tested 24h",
		"No. Positive Animals 48h",
		"No. Animals Tested 48h",
		"No. Positive Animals 72h",
		"No. Animals Tested 72h",
		"Resolution Time",
		"Resolution Time Units",
		"Clinical Observations",
		"Record ID",
		"PID"
	FROM "data-source/ice/Eye_Irritation_Formulations.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Eye_Irritation_Formulations.parquet"
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
	-- LIMIT 1000
)
TO "data-processed/ice/Skin_Irritation_Formulations.parquet"
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
	-- LIMIT 1000
)
TO "data-processed/ice/Skin_Irritation_Skin_Irritation-Corrosion.parquet"
(FORMAT 'parquet')
;

COPY (
	SELECT
		ROW_NUMBER() OVER () as _ROW_NUMBER,
		"Record ID",
		"Chemical Name",
		"Substance Type",
		"CASRN",
		"DTXSID",
		"QSAR Ready ID",
		"Assay",
		"Endpoint",
		"Value",
		"Unit",
		"Species",
		"Receptor Species",
		"Route",
		"Sex",
		"strain",
		"lifestage",
		"tissue",
		"lesion",
		"location",
		"assaysource",
		"gene",
		"entrezid",
		"invitroassayformat",
		"reference",
		"referenceurl",
		"pubmedid"
	FROM "data-source/ice/Skin_Sensitization_Chemicals.parquet"
	-- LIMIT 1000
)
TO "data-processed/ice/Skin_Sensitization_Chemicals.parquet"
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
	-- LIMIT 1000
)
TO "data-processed/ice/cHTS2022_invitrodb34_20220302.parquet"
(FORMAT 'parquet')
;

