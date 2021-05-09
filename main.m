%% initialize project
addpath('./fieldCreators/');
addpath('./fields/');
addpath('./forces/');
addpath('./border/');

%% create particles
opt = ParticleOptions(1, 1);

particle1 = Particle(opt, [1, 1, 1]);
particle2 = Particle(opt, [1, 2, 1]);
particle3 = Particle(opt, [1, 0, 1]);

%% create electric field created by group of particles
electricField = ElectricField();
electricFieldCreatorByParticles = FiledCreatedByParticles(electricField);
electricFieldCreatorByParticles.addParticles([particle1, particle2, particle3]);

%test
% electricFieldCreatorByParticles.getField(Vec3D([0, 0, 0]))
%% test border
opt = ParticleOptions(1, 1);

particle1 = Particle(opt, [11, -1, 1], [1,-2, 4]);
bar = BorderReflection();
bar.sanytize_border(particle1);
assert(isequal(particle1.coord.coord,[9,1,1]))
assert(isequal(particle1.speed.coord,[-1,2,4]))