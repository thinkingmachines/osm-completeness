<p align="center">
<b><a href="#installation">Installation</a></b>
|
<b><a href="#usage">Usage</a></b>
|
<b><a href="#code-organization">Code Organization</a></b>
|
<b><a href="#method">Method</a></b>
|
<b><a href="#data-sources">Data Sources</a></b>
|
<b><a href="#citation">Citation</a></b>
|
<b><a href="#acknowledgement">Acknowledgement</a></b>
|
<b><a href="#license">License</a></b>
</p>

# Measuring OpenStreetMap building footprint completeness using human settlement layers

This repository provides the methodology and analysis for the paper "Measuring
OpenStreetMap building footprint completeness using human settlement layers".

Geographic data is essential in supporting efforts for disaster risk reduction and preparedness. The goal of this project is to study OpenStreetMap data completeness to identify unmapped regions. This initiative helps OSM volunteers focus their attention on specific areas. In this study, we use human settlements data to measure the data completeness of OSM building footprints.

![osm image](/osm.jpg)
Last 2019, we visualize the levels of [OpenStreetMap completeness](https://stories.thinkingmachin.es/mapthegap/) across the country through an [interactive map](https://mapthegap.thinkingmachin.es/?_ga=2.39089123.1314905635.1593494157-1657796981.1591263732) using Mapbox tools.  

## Installation

Create a virtual environment and install the requirements.

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
This part creates a virtual environment, `venv`, and installs dependencies found in `requirement.txt`.

## Usage

To run the notebook inside `venv` using jupyter, do the following commands

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

We have three sources of the Philippines and Madagascar datasets.

* High Resolution Settlement Layer (HRSL) 
    * a high resolution population dataset obtained form satellite imagery 
    * [Philippines](https://data.humdata.org/dataset/philippines-high-resolution-population-density-maps-demographic-estimates) 
    * [Madagascar](https://data.humdata.org/dataset/highresolutionpopulationdensitymaps-mdg)
* Administrative Boundaries 
    * derived from the boundaries of location through government units
    * [Philippines](https://data.humdata.org/dataset/philippines-administrative-levels-0-to-3) 
    * [Madagascar](https://data.humdata.org/dataset/madagascar-administrative-level-0-4-boundaries)
* OpenStreetMap (OSM) 
    * free wiki world map
    * [Philippines](https://download.geofabrik.de/asia/philippines.html) 
    * [Madagascar](https://download.geofabrik.de/africa/madagascar.html)

## Code Organization

To be able to follow the process we've done, it is advised to go through the notebooks one-by-one.

The repository contains:

* **notebooks/** - has all Jupyter notebook for methodology and analysis
    * [1_methodology.ipynb](https://github.com/thinkingmachines/osm-completeness/blob/master/notebooks/1_Methodology.ipynb) - shows the methodology of the project: importing the packages, downloading the datasets
    * [2_anlysis.ipynb](https://github.com/thinkingmachines/osm-completeness/blob/master/notebooks/2_Analysis.ipynb) - shows the analysis of the project: importing the packages, identifying urban or rural unmapped areas



## Method 

We processed the data in three steps:

1. The human settlement layer was converted into a vector.
2. We performed a spatial join to find the intersection between the vectorized human settlement layer and the OSM building footprints.
3. The data completeness was calculated based on areas from the vectorized human settlement layer that intersect with the building footprints.


## Citation
Use this bibtex to cite this repository:

```
@misc{osm_completeness_2020,
  title={Measuring OpenStreetMap building footprint completeness using human settlement layers},
  author={Flores, Ren Avell and Orden, Ardie and Faustino, Pia and Samson, Mark Steve},
  year={2020},
  publisher={Github},
  journal={GitHub repository},
  howpublished={\url{https://github.com/thinkingmachines/osm-completeness}},
}
```
## Acknowledgement 

This project was supported by [Humanitarian OpenStreetMap Team (HOT)](https://www.hotosm.org/) and [Philippine OpenStreeMap](https://www.openstreetmap.org/relation/443174#map=6/10.714/123.710).

Geographic visuals was made possible by [Mapbox](https://www.mapbox.com/).

## License

MIT Licence 

Copyright 2020 Thinking Machines Data Science

