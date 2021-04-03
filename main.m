%% initialize project
addpath('./fieldCreators/');
addpath('./fields/');
addpath('./forces/');

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