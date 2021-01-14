%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% read_simple_yaml.m
%
% Extract from a simple and 1 level yaml the data in it
%
% Anthony Remazeilles and Jawad Masood
% Copyright Tecnalia 2019
% Beerware license.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function values = read_simple_yaml(filename)

    fid = fopen(filename);

    spec = "%s %s";
    infile = textscan(fid, spec, 'Delimiter', ':');

    labels = infile{1};
    values = infile{2};
    
    fclose(fid);
end