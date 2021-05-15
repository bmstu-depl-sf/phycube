classdef(Abstract) Border < handle & matlab.mixin.Heterogeneous
    methods(Abstract)
        sanytize_border(obj, particle)
    end
end
