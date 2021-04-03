classdef(Abstract) FieldCreatorIface < handle & matlab.mixin.Heterogeneous
    %FIELDCREATOR Iface for field creators
    
    methods(Abstract)
        getField(obj, point)
    end
end

