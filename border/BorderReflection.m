classdef BorderReflection < Border 

    properties
        limit (1, 3) double = [0, 0, 0]
    end
    
    methods
        function obj = BorderReflection(x, y, z)
          arguments
               x (1, 1) double 
               y (1, 1) double
               z (1, 1) double 
          end
            obj.limit = [x, y, z];
        end
        
        function sanytize_border(obj, particle_electron)
            for i=1:3
                if(particle_electron.coord.coord(1,i)>obj.limit(1,i))
                    particle_electron.coord.coord(1,i) = 2*obj.limit(1,i) - particle_electron.coord.coord(1,i);
                    particle_electron.speed.coord(1,i) = - particle_electron.speed.coord(1,i);
                elseif(particle_electron.coord.coord(1,i)<0 )
                    particle_electron.coord.coord(1,i) = - particle_electron.coord.coord(1,i);
                    particle_electron.speed.coord(1,i) = - particle_electron.speed.coord(1,i);
                end
            end 
        end
    end
end

