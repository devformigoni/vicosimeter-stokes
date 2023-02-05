% Program for calculating VISCOSITY using the Stokes method (Sphere)
%
% Developed by Paulo Orestes Formigoni (profpauloformigoni@gmail.com)
% Version 1.0 October 2022

% This is a code for a MATLAB function for calculating absolute viscosity 
% using the Stokes method. The function inputs are the diameter of the 
% sphere De, the mass and volume of the sphere mass_esf and vol_esf, the 
% mass and volume of the fluid mass_fluid and vol_fluid, and the terminal 
% velocity of the sphere v_term.

% Based on these inputs, the function calculates the density of the sphere 
% ro_esf and fluid ro_fluid, and finally calculates the absolute viscosity 
% using the Stokes method visc_abs_stokes. The result is stored in the 
% output of the function, visc_abs_stokes.

% The viscosity calculation is done according to the mathematical formula
% presented in the final line of the function.

function visc_abs_stokes=visc_STOKES(De, mass_esf, vol_esf, mass_fluid,...
        vol_fluid, v_term)
        % De = diameter of sphere (m)
        % mass_esf = mass of sphere (kg)
        % vol_esf = volume of sphere (m³)
        % mass_fluid = mass of fluid (kg)
        % vol_fluid = volume of fluid (m³)
        % v_term = terminal velocity of sphere (m/s)
        ro_esf = mass_esf / vol_esf;
        % ro_esf = density of sphere (kg/m³)
        ro_fluid = mass_fluid / vol_fluid;
        % ro_fluid = density of fluid (kg/m³)
        visc_abs_stokes = ((2/9) * (De^2) * ( ro_esf - ro_fluid))/v_term
         