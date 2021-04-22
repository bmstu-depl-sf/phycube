classdef ParticleGroupFieldReceiver < FieldReceiver
    properties
        receiver(1, 1) Particle = Particle.empty()
        creators(1, :) FiledCreatedByParticles = FiledCreatedByParticles.empty()
        %ResultForce(1, 1) Vec3D = Vec3D.empty()
    end
    methods
        function calculateResultForce(obj)
           ElForce = ElectricForce();
           ResultForce = Vec3D.empty();
           F = Vec3D.empty();
           for i = 1:size(obj.creators,2)
               for j = 1:size(obj.creators.particles, 2)
                   if(obj.receiver.coord ~= obj.creators(i).particles(j).coord)
                      ElForce = ElForce.calculateForce(obj.creators.field, obj.receiver, obj.creators(i).particles(j).coord);
                      F.coord = ElForce.Force;
                      ResultForce = plus(ResultForce, F);
                   end
               end
           end
           obj.receiver.R = ResultForce;
        end
    end
end

