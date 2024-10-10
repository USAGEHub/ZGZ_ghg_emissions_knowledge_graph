#!/bin/bash
## extraction
# python extraction/IDEZAR/Barrios/extractionIDEZARBarrios.py
# python extraction/IDEZAR/Distritos/extractionIDEZARDistritos.py

## conceptualisation
# ./ontology/conceptualisation_to_code.sh

## preprocessing # raw files names should not include whitespaces
# ./preprocessing/IDEZAR/Barrios/preprocessingIDEZARBarrios.sh
# ./preprocessing/IDEZAR/Distritos/preprocessingIDEZARDistritos.sh
# ./preprocessing/ZGZ/Residencial/preprocessing.sh
# ./preprocessing/ZGZ/Industrial/preprocessing.sh
# ./preprocessing/ZGZ/Institucional_y_servicios/preprocessing.sh # Corrupted dataset
# ./preprocessing/ZGZ/IPPU_Gases_fluorados/preprocessing.sh
# ./preprocessing/ZGZ/Residuos/preprocessing.sh 
# ./preprocessing/ZGZ/Arbolado/preprocessing.sh 
# ./preprocessing/ZGZ/Ganaderia/preprocessing.sh 
# ./preprocessing/ZGZ/Transporte/preprocessing.sh
# python3 preprocessing/ZGZ/Transporte/blank_column_cli.py asWKT data/ZGZ/Transporte/refined/BBDD_Transp_Carretera_TPrivado_2021_v001.csv # Removed conflictive polygons
# python3 preprocessing/ZGZ/Transporte/fill_column_cli.py data/ZGZ/Transporte/refined/BBDD_Transp_Carretera_TPrivado_2019_v001.csv AÑO 2019 # Filled conflictive years
# ./preprocessing/ZGZ/Agricultura/preprocessing.sh


## mapping
# ./mapping/ZGZ/Residencial/mapping_diagram_to_code.sh  # chowlk api doesn't support big files
# ./mapping/ZGZ/Industrial/mapping_diagram_to_code.sh  # chowlk api doesn't support big files
# ./mapping/ZGZ/Residuos/mapping_diagram_to_code.sh  # chowlk api doesn't support big files
# ./mapping/ZGZ/Arbolado/mapping_diagram_to_code.sh  # chowlk api doesn't support big files
# ./mapping/ZGZ/Ganaderia/mapping_diagram_to_code.sh  # supported by chowlk api
# ./mapping/ZGZ/Transporte/mapping_diagram_to_code.sh  # chowlk api doesn't support big files
# ./mapping/ZGZ/Agricultura/mapping_diagram_to_code.sh

    # using the Chowlk repo:
    # python3 converter.py ../USAGE-LD/mapping/ZGZ/Residencial/mapping_temp.xml ../USAGE-LD/mapping/ZGZ/Residencial/mapping.ttl

# ./mapping/IDEZAR/Barrios/materialisationIDEZARBarrios.sh 
# ./mapping/IDEZAR/Distritos/materialisationIDEZARDistritos.sh 

# ./mapping/ZGZ/Residencial/materialisation.sh 
# ./mapping/ZGZ/Industrial/materialisation.sh 
# ./mapping/ZGZ/Institucional_y_servicios/materialisation.sh # Corrupted dataset
# ./mapping/ZGZ/IPPU_Gases_fluorados/materialisation.sh 
# ./mapping/ZGZ/Residuos/materialisation.sh 
# ./mapping/ZGZ/Arbolado/materialisation.sh 
# ./mapping/ZGZ/Ganaderia/materialisation.sh 
# ./mapping/ZGZ/Transporte/materialisation.sh 
# ./mapping/ZGZ/Agricultura/materialisation.sh

# ./mapping/join.sh
# python mapping/zip.py

## validation (data)
# ./validation/ZGZ/Residencial/shapes_diagram_to_code.sh
# python validation/ZGZ/Residencial/validationZGZResidencial.py
# ./validation/ZGZ/geoSHACL/nquads_to_ntriples.sh
# ./validation/ZGZ/geoSHACL/validateGeoSHACL.sh # load in memory

## loading
# ./loading/load_graphdb.sh
# ./loading/run_graphdb.sh
# ./loading/preload_graphdb.bat # for local db running in windows with the db shutdown

## verification

# python verification/aggregated_kpiValue_per_district_verification.py
# python verification/inserted_kpiValue_per_district_verification.py

## linking
# ./linking/IDEZAR/Distritos/reconcilingIDEZARDistritos.sh
# ./linking/IDEZAR/Distritos/linking_diagram_to_code.sh
# ./linking/IDEZAR/Distritos/linksMaterialisationIDEZARDistritos.sh

# ./linking/ZGZ/Residencial/reconcilingZGZResidencial.sh
# ./linking/ZGZ/Residencial/linking_diagram_to_code.sh
# ./linking/ZGZ/Residencial/linksMaterialisationZGZResidencial.sh

# python linking/ZGZ/district_level_kpiaValues_construct.py # Aggregates enrichment

## publication
# ./publish/publish.bat
# ./publish/generate_ontology_documentation.sh

## exploitation

## maintainance
