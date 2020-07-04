<p align="center">
<b><a href="#setup">Setup</a></b>
|
<b><a href="#usage">Usage</a></b>
|
<b><a href="#data-sources">Data Sources</a></b>
|
<b><a href="#code-organization">Code Organization</a></b>
|
<b><a href="#citation">Citation</a></b>
|
<b><a href="#acknowledgement">Acknowledgement</a></b>
|
<b><a href="#license">License</a></b>
</p>

# Measuring OpenStreetMap building footprint completeness using human settlement layers

This repository provides the methodology and analysis for the paper "Measuring OpenStreetMap building footprint completeness using human settlement layers".

Geographic data is essential in supporting efforts for disaster risk reduction and preparedness. The goal of this project is to find the unmapped areas in OpenStreetMap. This will help OSM volunteers save time by focusing their efforts on specific areas. In this study, we use human settlements data to measure the data completeness of OSM building footprints.

![osm image](/assets/mapthegap.jpg)
We also created an [interactive web map](https://mapthegap.thinkingmachin.es/) and we wrote a [blog](https://stories.thinkingmachin.es/mapthegap/) to show the results in the Philippines.

## Setup

Create a Python virtual environment and install the dependencies found in `requirements.txt`.

### Ubuntu/Debian
```
make venv
```

### Windows
```
python3 -m venv venv
venv\Scripts\activate
pip install pip-tools
pip install -r requirements.txt
```

## Usage

1. Activate your virtual environment

### Ubuntu/Debian
```
source venv/bin/activate
```

### Windows
```
venv\Scripts\activate
```

2. Run JupyterLab
```
jupyter lab
```

## Data Sources

We have three sources of GIS data for the Philippines and Madagascar.

* High Resolution Settlement Layer (HRSL) - high resolution population dataset from Facebook Data for Good  
    * [Philippines](https://data.humdata.org/dataset/philippines-high-resolution-population-density-maps-demographic-estimates) 
    * [Madagascar](https://data.humdata.org/dataset/highresolutionpopulationdensitymaps-mdg)
* Administrative Boundaries - administrative division/unit/boundary from Humanitarian Data Exchange (HDX)
    * [Philippines Level 1 to 3](https://data.humdata.org/dataset/philippines-administrative-levels-0-to-3) 
    * [Philippines Level 4](https://storage.googleapis.com/osm-completeness-thinkingmachines/phl_adm_2015_level4_barangay.gpkg.zip)
    * [Madagascar](https://data.humdata.org/dataset/madagascar-administrative-level-0-4-boundaries)
* OpenStreetMap (OSM) - free wiki world map
    * [Philippines January 2020](https://storage.googleapis.com/osm-completeness-thinkingmachines/phl_osm_jan_2020_buildings.gpkg.zip)
    * [Madagascar January 2020](https://storage.googleapis.com/osm-completeness-thinkingmachines/mdg_osm_jan_2020_buildings.gpkg.zip)
    * [Philippines](https://download.geofabrik.de/asia/philippines.html)
    * [Madagascar](https://download.geofabrik.de/africa/madagascar.html)

## Code Organization

Upon cloning, the repository contains the following directories:

* **notebooks/** - has all Jupyter notebook for methodology and analysis
    * [1_Methodology.ipynb](https://github.com/thinkingmachines/osm-completeness/blob/master/notebooks/1_Methodology.ipynb) - shows the methodology of the project: importing the packages, downloading the datasets
    * [2_Analysis.ipynb](https://github.com/thinkingmachines/osm-completeness/blob/master/notebooks/2_Analysis.ipynb) - shows the analysis of the project: importing the packages, identifying urban or rural unmapped areas
* **assets/** - images used for the readme

After running the notebooks from top-to-bottom and in order, the repository should have these new directories:

* **download_data/** - raw and intermediately processed datasets
* **data/** - processed datasets for analysis
* **plots/** - plots from analysis

## Citation

You can use this bibtex entry to cite this repository:

```
@misc{osm_completeness_2020,
  title={Measuring OpenStreetMap building footprint completeness using human settlement layers},
  author={Orden, Ardie and Flores, Ren Avell and Faustino, Pia and Samson, Mark Steve},
  year={2020},
  publisher={GitHub},
  journal={GitHub Repository},
  howpublished={\url{https://github.com/thinkingmachines/osm-completeness}},
}
```
## Acknowledgement 

We'd like to thank Nick Brown from [Humanitarian OpenStreetMap Team (HOT)](https://www.hotosm.org/) and Mikel Maron from the [Mapbox community team](https://www.mapbox.com/community/) for their feedback and support.

We'd also like to thank the [OpenStreetMap Philippines](https://www.facebook.com/OSMPH) community for their support and all their contributions to the map.


## License

MIT Licence 

Copyright 2020 Thinking Machines Data Science

