classdef CaiculationModel < handle & matlab.mixin.Heterogeneous
    methods (Abstract)
        move(particle, t)
    end
end

