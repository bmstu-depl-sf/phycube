classdef(Abstract) ForceIface < handle & matlab.mixin.Heterogeneous
    methods(Abstract)
        calculateForce(obj, field, point, creator_coord)
    end
end

