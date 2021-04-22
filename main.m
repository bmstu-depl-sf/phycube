%% initialize project
addpath('./fieldCreators/');
addpath('./fields/');
addpath('./forces/');
addpath('./calculationModel/');

%% create particles
opt = ParticleOptions(1, 1);

particle1 = Particle(opt, [1, 1, 1]);
particle2 = Particle(opt, [1, 2, 1]);
particle3 = Particle(opt, [1, 0, 1]);

%% create electric field created by group of particles
electricField = ElectricField();
electricFieldCreatorByParticles = FieldCreatedByParticles(electricField);
electricFieldCreatorByParticles.addParticles([particle1, particle2, particle3]);

%test
% electricFieldCreatorByParticles.getField(Vec3D([0, 0, 0]))

%%calculation new coordinate and new speed
a = EilerModel();
particle1.speed.coord = [2, 1, 0];
particle1.R = [6, 6, 6];
a.move(particle1, 1);
particle.coord