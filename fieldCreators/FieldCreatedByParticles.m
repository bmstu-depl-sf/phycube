classdef FieldCreatedByParticles < FieldCreatorIface
    properties
        particles(1, :) Particle = Particle.empty()
        field(1, :) Field = Field.empty()
    end
    
    methods
        function obj = FieldCreatedByParticles(field)
            arguments
                field(1, 1) Field
            end
            obj.field(1, 1) = field;
        end
        
        function addParticles(obj, particles)
            arguments
                obj(1, 1) FieldCreatedByParticles
                particles(1, :) Particle
            end
            
            for particle = particles
                obj.particles(1, end + 1) = particle;
            end 
        end
    end
    
    %% Implementation of FieldCreatorIface
    methods
        function field = getField(obj, point)
            field = Vec3D();
            for particle = obj.particles
                field = field + obj.field(end).calculateField(particle.opt, [particle.x, particle.y, particle.z], point);
            end
        end
    end
end

