classdef CaiculationModel < handle & matlab.mixin.Heterogeneous
    methods (Abstract)
        move(particle, dt)
    end
end

