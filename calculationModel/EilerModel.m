classdef EilerModel < CaiculationModel
    methods
        function move(obj, particle, dt)
            arguments
                obj (1, 1) EilerModel
                particle (1, 1) Particle
                dt (1, 1) double
            end
            particle.speed = particle.speed + dt/particle.opt.m * particle.R;
            particle.coord = particle.coord + dt * particle.speed;
        end
    end
end

