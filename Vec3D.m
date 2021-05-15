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
        
        function coord = output(obj)
            arguments
                obj(1, 1) Vec3D
            end
            coord = obj.coord;
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
end

