classdef Particle < handle & matlab.mixin.Heterogeneous
    properties
        coord(1, 1) Vec3D = Vec3D()
        speed(1, 1) Vec3D = Vec3D()
        opt(1, 1) ParticleOptions = ParticleOptions(0, 0)
    end
    
    methods
        function obj = Particle(opt, coord, speed)
            arguments
                opt(1, 1) ParticleOptions 
                coord(1, 1) Vec3D = [0, 0, 0]
                speed(1, 1) Vec3D = [0, 0, 0] 
            end
            
            obj.opt = opt;
            obj.coord = coord;
            obj.speed = speed;
        end
    end
end

