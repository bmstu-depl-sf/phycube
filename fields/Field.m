classdef(Abstract) Field < handle & matlab.mixin.Heterogeneous
    methods(Abstract)
        calculateField(obj, particleOptions, from_point, to_point)
    end
end

