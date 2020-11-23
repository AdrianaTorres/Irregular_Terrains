# Irregular Terrain Performance indicators

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0).

Copyright CSIC 2020

## Purposes

This toolbox allows computing Performance Indicator (PI) within the Irregular Terrain project protocol.
In particular, margin of stability (MoS), walking ratio (WR), ratio index (RI) and gait parameters variability can be computed.
The toolbox contains four PIs algorithms.

## Installation

To enable the code under octave, additional packages are needed.
Follow this [link](https://octave.org/doc/v4.2.1/Installing-and-Removing-Packages.html) to make the installation of the additional packages needed.

Once octave is configured:

```console
pkg load io
```

## Usage

### from Octave

If octave is opened from the repository root, assuming we created before a folder named `output`:

```octave
addpath("Margin_Stability_octave/src")
# For the Margin stability computation
marginStability_calculation("Margin_Stability_octave/tests/data/input/COM_plano01.csv", "Margin_Stability_octave/tests/data/input/gaitEvents_plano01.csv", "Margin_Stability_octave/tests/data/input/FeetTrajectories_plano01.csv", "Margin_Stability_octave/tests/data/input/Anthropometry.yaml", "output")
```

```octave
addpath("Walk_Ratio_octave/src")
walkRatio_calculation("Walk_Ratio_octave/tests/data/input/GaitParameters_noExo.yaml", "output")
```

```octave
addpath("Ratio_Index_octave/src/")
ratioIndex_calculation("Ratio_Index_octave/tests/data/input/GaitParameters_noExo.yaml", "output")
```

```octave
addpath("Variability_octave/src/")
variability_calculation("Variability_octave/tests/data/input/GaitParameters_exo.yaml", "Variability_octave/tests/data/input/GaitParameters_noExo.yaml")
```

### Using the scripts

This is tested under linux.
From the repository root, assuming that folder `output` already exists:

```term
# for the margin of stability
./run_pi_margin_stability Margin_Stability_octave/tests/data/input/COM_plano01.csv Margin_Stability_octave/tests/data/input/gaitEvents_plano01.csv Margin_Stability_octave/tests/data/input/FeetTrajectories_plano01.csv Margin_Stability_octave/tests/data/input/Anthropometry.yaml output

# for the walk ratio
./run_pi_walk_ratio Walk_Ratio_octave/tests/data/input/GaitParameters_noExo.yaml output

# for the ratio index
./run_pi_ratio_index Ratio_Index_octave/tests/data/input/GaitParameters_noExo.yaml output

# for the variability
 ./run_pi_variability Variability_octave/tests/data/input/GaitParameters_exo.yaml Variability_octave/tests/data/input/GaitParameters_noExo.yaml output

```

## Acknowledgements

<a href="http://eurobench2020.eu">
  <img src="http://eurobench2020.eu/wp-content/uploads/2018/06/cropped-logoweb.png"
       alt="rosin_logo" height="60" >
</a>

Supported by Eurobench - the European robotic platform for bipedal locomotion benchmarking.
More information: [Eurobench website][eurobench_website]

<img src="http://eurobench2020.eu/wp-content/uploads/2018/02/euflag.png"
     alt="eu_flag" width="100" align="left" >

This project has received funding from the European Union’s Horizon 2020
research and innovation programme under grant agreement no. 779963.

The opinions and arguments expressed reflect only the author‘s view and
reflect in no way the European Commission‘s opinions.
The European Commission is not responsible for any use that may be made
of the information it contains.

[eurobench_logo]: http://eurobench2020.eu/wp-content/uploads/2018/06/cropped-logoweb.png
[eurobench_website]: http://eurobench2020.eu "Go to website"
