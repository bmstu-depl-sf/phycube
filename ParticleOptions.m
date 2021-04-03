classdef ParticleOptions
    %UNTITLED11 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        m(1, 1) double {mustBeNumeric} = 0.
        q(1, 1) double {mustBeNumeric} = 0.
    end
    
    methods
        function obj = ParticleOptions(m,q)
            arguments
                m(1, 1) double {mustBeNumeric}
                q(1, 1) double {mustBeNumeric}
            end
            
            obj.m = m;
            obj.q = q;
        end
    end
end

