classdef Vec3D < handle
    properties (Hidden, Access = private)
        coord(1, 3) double {mustBeNumeric} = [0, 0, 0]
    end
    
    methods
        function obj = Vec3D(coord)
            arguments
                coord(1, 3) double = [0, 0, 0]
            end
            
            obj.coord = coord;
        end

        function modulus = norm(obj)
            arguments
                obj(1, 1) Vec3D
            end
            
            modulus = norm(obj.coord);
        end
    end
    %% Overload operators
    methods
        function obj = plus(left, right)
            arguments
                left(1, 1) Vec3D
                right(1, 1) Vec3D
            end
            
            obj = Vec3D(left.coord + right.coord);
        end
        
        function obj = minus(left, right)
            arguments
                left(1, 1) Vec3D
                right(1, 1) Vec3D
            end
            
            obj = Vec3D(left.coord - right.coord);
        end
        
        function obj = mtimes(left, right)
            arguments
                left(1, 1) double
                right(1, 1) Vec3D
            end
            
            obj = Vec3D(right.coord * left);
        end
    end
    
    
    properties (Dependent)
        x (1, 1) double
        y (1, 1) double
        z (1, 1) double
    end
    
    
    methods
        function x = get.x(obj)
         x = obj.coord(1);
        end
        function y = get.y(obj)
            y = obj.coord(2);
        end
        function z = get.z(obj)
         z = obj.coord(3);
        end
        function set.x(obj, x)
        obj.coord(1) = x;
        end
        function set.y(obj, y)
        obj.coord(2) = y;
        end
        function set.z(obj, z)
        obj.coord(3) = z;
        end

end 

end

