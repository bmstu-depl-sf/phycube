classdef ParticleGroupFieldReceiver < FieldReceiver
    properties
        receiver(1, :) Particle = Particle.empty()
        creator(1, 1) FiledCreatedIfae = FiledCreatedIface.empty()
        force(1,1) Force = Force.empty()
    end
    methods
        function obj = ParticleGroupFieldReceiver(force)
            arguments
               force(1,1) Force
            end
            obj.force(1, 1) = force;
        end
        
       
        function calculateResultForce(obj)
           for i = 1:size(obj.receiver,2)
              obj.force = obj.force.calculateForce(obj.creator.field, obj.receiver(i), output(obj.creator.particles));
              obj.receiver(i).R = obj.receiver(i).R + obj.force;
           end
        end
    end
end

