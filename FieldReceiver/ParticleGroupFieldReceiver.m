classdef ParticleGroupFieldReceiver < FieldReceiver
    properties
        receiver(1, :) Particle = Particle.empty()
        creator(1, 1) FiledCreatedByParticles = FiledCreatedByParticles.empty()
    end
    methods
        function calculateResultForce(obj)
           ElForce = ElectricForce();
           ResultForce = Vec3D.empty();
           for i = 1:size(obj.receiver,2)
               if(output(obj.receiver(i)) ~= output(obj.creator.particles))
                  ElForce = ElForce.calculateForce(obj.creator.field, obj.receiver(i), output(obj.creator.particles));
                  obj.receiver(i).R = obj.receiver(i).R + ResultForce;
               end
           end
        end
    end
end

