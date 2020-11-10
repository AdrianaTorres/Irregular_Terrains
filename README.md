# PI BEAT

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) --> Don't know if this is the same for us.

Copyright BEAT 2020

## Purposes

This toolbox allows computing Performance Indicator (PI) within the Irregular Terrain project protocol.
In particular, margin of stability (MoS), walking ratio (WR), ratio index (RI) and gait parameters variability can be computed.
The toolbox contains four PI's algorithms.

## Installation

To enable the code under octave, additional packages are needed.
Follow this [link](https://octave.org/doc/v4.2.1/Installing-and-Removing-Packages.html) to make the installation of the additional packages needed.

Once octave is configured:

```console
pkg load io
```

## Usage

### Protocol benchmark

The code enables scoring 1 protocol

* Protocol 1.
  * MarginStability_Calculation
  * RatioIndex_and_WalkRatio_Calculation
  * variability_calculation

```shell
--> I've never run them with a shell, can you help me with this, please?
```

### Performance Indicator launch

_marginStability_calculation_

This routine computes the margin of stability at the moment heel strike occurs.
Assuming folder `Outputs` exists:

```console
--> Same than with shell. I write below what you ask me in the email
name of the file in Github: marginStability_calculation 
Required inputs: "COM_plano01.csv", "gaitEvents_plano01.csv", "FeetTrajectories_plano01.csv", "Anthropometry.yaml" and name of the folder to store the output.
Example of function call in Octave: marginStability_calculation("COM_plano01.csv", "gaitEvents_plano01.csv", "FeetTrajectories_plano01.csv", "Anthropometry.yaml", "Outputs");
```

_walkRatio_calculation_

This routine computes the walk ratio.
Assuming folder `Outputs` exists:

```console
--> Same than with shell. I write below what you ask me in the email
name of the file in Github: walkRatio_calculation 
Required inputs: "GaitParameters_noExo.yaml" and name of the folder to store the output.
Example of function call in Octave: walkRatio_calculation("GaitParameters_noExo.yaml", "Outputs");
```

_ratioIndex_calculation_

This routine computes the ratio index.
Assuming folder `Outputs` exists:

```console
--> Same than with shell. I write below what you ask me in the email
name of the file in Github: ratioIndex_calculation 
Required inputs: "GaitParameters_noExo.yaml" and name of the folder to store the output.
Example of function call in Octave: ratioIndex_calculation("GaitParameters_noExo.yaml", "Outputs");
```

_variability_calculation_

This routine computes the variability of gait parameters when wearing or not the exoskeleton.
Assuming folder `Outputs` exists:

```console
--> Same than with shell. I write below what you ask me in the email
name of the file in Github: variability_calculation 
Required inputs: "GaitParameters_exo.yaml", "GaitParameters_noExo.yaml" and name of the folder to store the output.
Example of function call in Octave: variability_calculation("GaitParameters_exo.yaml", "GaitParameters_NoExo.yaml", "Outputs");
```

## Build docker image

--> Don't know how to do this

## Launch the docker image

--> Don't know how to do this

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





















