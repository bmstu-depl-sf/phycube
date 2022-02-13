classdef FieldReceiver < handle & matlab.mixin.Heterogeneous
    methods(Abstract)
        calculateResultForce(obj, FieldCreators)
    end
end
