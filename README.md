# UK Geography

Datasets and boundaries used in various workshops and shiny apps of the [WeR meetup](https://www.meetup.com/WeR-stats/)

## Datasets
Binary [fst](https://www.fstpackage.org/) format files for the efficient storage and quick retrieval of [data.table](https://github.com/Rdatatable/data.table) datasets:

  - `postcodes`: lookup table to connect each live or terminated postcode in the UK to one of the two lowest level *Census Area*:
    - [Output Areas (OA)](https://www.ons.gov.uk/methodology/geography/ukgeographies/censusgeography#output-area-oa)
    - [Workplace Zones (WZ)](https://www.ons.gov.uk/methodology/geography/ukgeographies/censusgeography#workplace-zone-wz)
    It's been built using the `ONSPD_FEB_2019_UK` csv file included in the [ONS Postcode Directory (February 2019)](https://geoportal.statistics.gov.uk/items/ons-postcode-directory-february-2019) distribution. 
  The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/11-postcodes.R).
  - `output_areas`: lookup table to connect every output area in the UK (count of 232,296) to some of its higher level hierarchy:
    - `OA` Output Areas, as of Census 2011 -- codes starting with: `E00` for England, `W00` for Wales, `S00` for Scotland, `N00` for N.Ireland)
    - `LSOA` Lower Level Super Output Areas, as of Census 2011 --- codes starting with: `E01`, `W01`, `S01`, `N01`
    - `MSOA` Middle Level Super Output Areas, as of Census 2011 -- codes starting with: `E02`, `W02`, `S02`; Northern Ireland does not have an MSOA geography
    - `LAD` Local Authority Districts, as of December 2018 -- codes starting with:  (UA-E06/W06, LAD-E07, MD-E08, LB-E09, CA-S12, DCA-N09)
    - `CTY` Counties, as of -- codes starting with: C-E10, MC-E11, IOL-E13, plus LAD-E06; England Only
    - `RGN` Regions, as of December 2010 (this file also contains as pseudo regions the three countries)
    - `CTRY` Countries
    - `CCG` Clinical Commissioning Groups, as of April 2018 --  (E38, W11, S03, ZC)
  It's been built mainly using lookup tables from the ONS website, but some of the connections have used an aggregation process starting from the above postcode file. 
  The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/21-output_areas.R).
  - `workplace_zones`: lookup table to connect every workplace zone in the UK to some of its higher level hierarchy.  
    The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/22-workplace_zones.R).
  - `locations`: names and centroids related to higher level areas than output area and workplace zone. It's been built using some of the csv files contained in the subfolder `Documents` included in the [ONS Postcode Directory (February 2019)](https://geoportal.statistics.gov.uk/items/ons-postcode-directory-february-2019) distribution. 
    The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/61-locations.R).
  
## Boundaries
Binary [rds](https://www.rdocumentation.org/packages/base/versions/3.5.3/topics/readRDS) format files for the quick retrieval of boundaries in [sp](https://github.com/edzer/sp/) format at 20% simplification (using [rmapshaper](https://github.com/ateucher/rmapshaper)). 

  - The `OA` boundaries have been built by union of the three following [shapefiles](https://en.wikipedia.org/wiki/Shapefile):
    - [England and Wales](http://geoportal.statistics.gov.uk/datasets?q=COA%20Boundaries&sort_by=name)
    - [Scotland](http://www.nrscotland.gov.uk/statistics-and-data/geography/our-products/census-datasets/2011-census/2011-boundaries) as 
    - [Northern Ireland](https://www.nisra.gov.uk/publications/small-area-boundaries-gis-format) as 
    Their projected coordinate system -- [British National Grid, OSGB_1936](http://spatialreference.org/ref/epsg/osgb-1936-british-national-grid/) for England, Wales, and Scotland; [Irish Grid, GCS_TM65](http://spatialreference.org/ref/epsg/29902/) for Northern Ireland -- have been all transformed in the unprojected geographic *lat/long* defined by the [WGS84](http://spatialreference.org/ref/epsg/4326/), tipycally used by the [GPS satellite navigation system]().
    The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/51-create_uk_boundaries.R)
    
  - The `WPZ` boundaries have been downloaded as a unique shapefile directly from the [CDRC](*https://data.cdrc.ac.uk/dataset/cowz-uk) website
    The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/52-prepare_wpz_boundaries.R)

  - All other boundaries have been built upon the OA boundaries by aggregations, using the `output_areas`lookup file. 
    The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/54-create_parents_boundaries.R)


## Credits

  - Contains [National Statistics data](https://www.ons.gov.uk/peoplepopulationandcommunity/elections/electoralregistration)
  - Contains [OS data](http://geoportal.statistics.gov.uk/)

All content is available under the [Open Government Licence v3.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/)

&copy; Crown copyright and database right [2017]

