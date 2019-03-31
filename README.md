# UK Geography

Datasets and boundaries used in various workshops and shiny apps.

## Datasets

  - postcodes: lookup table to connect postcodes to one of the lowest level areas:
    - [Output Areas (OA)](https://www.ons.gov.uk/methodology/geography/ukgeographies/censusgeography#output-area-oa)
    - [Workplace Zones (WZ)](https://www.ons.gov.uk/methodology/geography/ukgeographies/censusgeography#workplace-zone-wz)
  - output_areas: lookup table to connect every output area in the UK to some of its higher level hierarchy
  - workplace_zones: lookup table to connect every workplace zone in the UK to some of its higher level hierarchy
  - locations: names and centroids related to higher level areas than output area and workplace zone
  
## Boundaries
Binary [rds](https://www.rdocumentation.org/packages/base/versions/3.5.3/topics/readRDS) format files for boundaries in [sp]() format at 20% simplification (using [rmapshaper]())
  - `OA` output areas, as of Census 2011
  - `LSOA` output areas, as of Census 2011
  - `MSOA` output areas, as of Census 2011
  - `LAD` output areas, as of 
  - `CTY` output areas, as of (this 
  - `RGN` output areas, as of (this file also contains as pseudo regions the three countries)
  - `CTRY`
  - `WPZ`, as of Census 2011
  - `WARD`, as of
  - `CCG`, as of

The `OA` boundaries have been built by union of the 
  - [England and Wales](http://geoportal.statistics.gov.uk/datasets?q=COA%20Boundaries&sort_by=name)
  - [Scotland](ttp://www.nrscotland.gov.uk/statistics-and-data/geography/our-products/census-datasets/2011-census/2011-boundaries)
  - [Northern Ireland](ttps://www.nisra.gov.uk/publications/small-area-boundaries-gis-format)

The process can be found [here](https://github.com/lvalnegri/projects-geography_uk/blob/master/51-create_uk_boundaries.R)
 
The `WPZ` boundaries have been downloaded directly from the website
All other boundaries have been built upon OA by aggregations, using the `output_areas`lookup file. The process can be found [here]()


  - Contains [National Statistics data](https://www.ons.gov.uk/peoplepopulationandcommunity/elections/electoralregistration)
  - Contains [OS data](http://geoportal.statistics.gov.uk/)

All content is available under the [Open Government Licence v3.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/)

&copy; Crown copyright and database right [2017]

