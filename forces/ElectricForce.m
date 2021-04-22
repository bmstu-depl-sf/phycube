classdef ElectricForce < ForceIface
    properties
        Force(1, 1) Vec3D = Vec3D.empty()
    end
    
    methods
        function obj = calculateForce(obj, field, point, creator_coord)
            arguments
                obj(1, 1) ElectricForce
                field(1, 1) ElectricField
                point(1, 1) Particle
            end
            obj.Force = field.calculateField(point.opt, creator_coord, point.coord) * poin.opt.q; 
        end
    end
end

