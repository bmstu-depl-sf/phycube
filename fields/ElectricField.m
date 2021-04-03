classdef ElectricField < Field
    properties(Constant)
        k(1, 1) double = 1
    end
    
    methods
        function field = calculateField(obj, particleOptions, from_point, to_point)
            arguments
                obj(1, 1) ElectricField
                particleOptions(1, 1) ParticleOptions
                from_point(1, 1) Vec3D
                to_point(1, 1) Vec3D
            end
            
            rVec = to_point - from_point;
            field = (obj.k * particleOptions.q / rVec.norm() ^ 3) * rVec;  
        end
    end
end

