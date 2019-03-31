###########################
# UK GEOGRAPHY BOUNDARIES #
###########################

# load packages


# set constants
areas = c('OA', 'LSOA', 'MSOA', 'LAD',  'CTY',  'RGN',  'CTRY', 'WARD', 'CCG')
data_path <- file.path(Sys.getenv('PUB_PATH'), 'boundaries', 'uk', 'rds', 's20')

# copy boundaries
for(area in areas) system(paste0('cp ', data_path, '/', area, ' ./boundaries/'))
    
# clean env
rm(list = ls())
gc()
