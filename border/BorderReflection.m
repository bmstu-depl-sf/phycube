classdef BorderReflection < Border 

    properties
        limit (1, 3) double = [10, 10, 10]
       % particle_electron particle
    end
    
    methods
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

