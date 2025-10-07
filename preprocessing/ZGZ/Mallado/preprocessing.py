#%%
import geopandas as gp
import os

path = "data/ZGZ/Mallado/raw/Mallado2024.zip"
path_to = "data/ZGZ/Mallado/refined/Mallado2024.csv"

# Check whether the specified path exists or not
if not os.path.exists(os.path.dirname(path_to)):
   # Create a new directory because it does not exist
   os.makedirs(os.path.dirname(path_to))

# Reading the compressed SHP file by attaching ! and the file name
grid = gp.read_file(path+"!"+"Mallado2024.shp")
# Reprojecting the whole file geometries
grid_wgs84 = grid.to_crs("EPSG:4326")
# Geometry field to string
grid_wgs84['geometry'] = grid_wgs84['geometry'].apply(str)
grid_wgs84['fid'] = grid_wgs84['fid'].astype(int)


#%%
# Saving the refined version to a file
grid_wgs84.to_csv(path_to)

