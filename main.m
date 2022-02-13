%% initialize project
addpath('./fieldCreators/');
addpath('./fields/');
addpath('./forces/');
addpath('./border/');
addpath('./calculationModel/');

%% create particles
opt = ParticleOptions(1, 1);

particle1 = Particle(opt, [1, 1, 1]);
particle2 = Particle(opt, [1, 2, 1]);
particle3 = Particle(opt, [1, 0, 1]);

%% create electric field created by group of particles
%electricField = ElectricField();
%electricFieldCreatorByParticles = FieldCreatedByParticles(electricField);
%electricFieldCreatorByParticles.addParticles([particle1, particle2, particle3]);

%test
% electricFieldCreatorByParticles.getField(Vec3D([0, 0, 0]))
%% test border
opt = ParticleOptions(1, 1);

particle1 = Particle(opt, [11, -1, 1], [1,-2, 4]);
bar = BorderReflection(10, 10, 10);
bar.sanytize_border(particle1);
assert(isequal([particle1.coord.x, particle1.coord.y, particle1.coord.z], [9,1,1]))
assert(isequal([particle1.speed.x, particle1.speed.y, particle1.speed.z],[-1,2,4]))

%%calculation new coordinate and new speed
a = EilerModel();
particle1.speed = Vec3D([2, 1, 0]);
particle1.R = Vec3D([6, 6, 6]);

a.move(particle1, 1);
assert(isequal([particle1.speed.x, particle1.speed.y, particle1.speed.z],[8,7,6]))

%%12345 вышел зайчик погулять 

