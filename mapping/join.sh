echo "" > "data/rdf-file.nq"
# cat "data/IDEZAR/Barrios/rdf/"*.nq >> "data/rdf-file.nq"
cat "data/IDEZAR/Distritos/rdf/"*.nq >> "data/rdf-file.nq"
cat "data/ZGZ/Residencial/rdf/"*.nq >> "data/rdf-file.nq"
cat "data/ZGZ/Industrial/rdf/"*.nq >> "data/rdf-file.nq"
# cat "data/ZGZ/Institucional_y_servicios/rdf/"*.nq >> "data/rdf-file.nq"
cat "data/ZGZ/IPPU_Gases_fluorados/rdf/"*.nq >> "data/rdf-file.nq"

echo "" > "data/rdf-file.nt"
# cat "data/IDEZAR/Barrios/rdf/"*.nt >> "data/rdf-file.nt"
cat "data/IDEZAR/Distritos/rdf/"*.nt >> "data/rdf-file.nt"
cat "data/ZGZ/Residencial/rdf/"*.nt >> "data/rdf-file.nt"
cat "data/ZGZ/Industrial/rdf/"*.nt >> "data/rdf-file.nt"
# cat "data/ZGZ/Institucional_y_servicios/rdf/"*.nt >> "data/rdf-file.nt"
cat "data/ZGZ/IPPU_Gases_fluorados/rdf/"*.nt >> "data/rdf-file.nt"

cat "data/ZGZ/"*.nt >> "data/rdf-file.nt"
