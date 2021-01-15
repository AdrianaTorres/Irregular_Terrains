FROM mtmiller/octave

RUN apt-get update \
    && apt-get install -y less \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN ln -s /octave/bin/octave /usr/bin/octave

# create user account, and create user home dir
RUN useradd -ms /bin/bash csic

ADD Margin_Stability_octave /home/csic/Margin_Stability_octave
ADD Ratio_Index_octave /home/csic/Ratio_Index_octave
ADD Tools /home/csic/Tools
ADD Variability_octave /home/csic/Variability_octave
ADD Walk_Ratio_octave /home/csic/Walk_Ratio_octave

ADD run_pi_margin_stability /home/csic/
ADD run_pi_ratio_index /home/csic/
ADD run_pi_variability /home/csic/
ADD run_pi_walk_ratio /home/csic/

# set the user as owner of the copied files.
RUN chown -R csic:csic /home/csic/

USER csic
WORKDIR /home/csic
