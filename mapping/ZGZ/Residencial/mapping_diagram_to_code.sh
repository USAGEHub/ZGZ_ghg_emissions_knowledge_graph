mapping_directory='mapping/ZGZ/Residencial/'
mapping_file_name='mappingZGZResidencial'

cp $mapping_directory$mapping_file_name'.drawio' $mapping_directory'mapping_temp.xml'
curl -F data=@$mapping_directory'mapping_temp.xml' https://chowlk.linkeddata.es/api | \
    python3 -c "import sys, json; print(json.load(sys.stdin)['ttl_data'])" > $mapping_directory$mapping_file_name'.ttl'
# rm $mapping_directory'mapping_temp.xml'
