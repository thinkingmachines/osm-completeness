This repo provides the methodology and analysis for the paper "Measuring
OpenStreetMap building footprint completeness using human settlement layers".

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
