#########################
# UK GEOGRAPHY DATASETS #
#########################

# load packages
pkg <- c('data.table', 'fst')
invisible(lapply(pkg, require, character.only = TRUE))

# set constants
areas = c('OA', 'LSOA', 'MSOA', 'LAD',  'CTY',  'RGN',  'CTRY', 'WARD', 'CCG')
data_path <- file.path(Sys.getenv('PUB_PATH'), 'datasets', 'geography', 'uk')

# load datasets
pc <- read.fst(file.path(data_path, 'postcodes'), columns = c('postcode', 'is_active', 'OA', 'WPZ', 'x_lon', 'y_lat'), as.data.table = TRUE)
oas <- read.fst(file.path(data_path, 'output_areas'), columns = areas, as.data.table = TRUE)
wpz <- read.fst(file.path(data_path, 'workplace_zones'), columns = c('WPZ', 'MSOA', 'LAD',  'CTY',  'RGN',  'CTRY'), as.data.table = TRUE)
lcn <- read.fst(file.path(data_path, 'locations'), as.data.table = TRUE)
lcn <- lcn[type %in% areas, .(location_id, name, type, x_lon, y_lat)]

# save datasets
write.fst(pc,  './datasets/postcodes')
write.fst(oas, './datasets/output_areas')
write.fst(wpz, './datasets/workplace_zones')
write.fst(lcn, './datasets/locations')

# clean env
rm(list = ls())
gc()

