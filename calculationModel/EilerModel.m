classdef EilerModel < CaiculationModel
    methods
        function move(obj, particle, t)
            arguments
                obj (1, 1) EilerModel
                particle (1, 1) Particle
                t (1, 1) double
            end
            particle.speed.coord = particle.speed.coord + particle.R.coord*t/particle.opt.m;
            particle.coord.coord = particle.coord.coord + particle.speed.coord*t;
        end
    end
end

