data {
  real sigma;
}

parameters {
  real x;
  real y;
  real t;
}

transformed parameters {
  real mu_x;
  real mu_y;

  mu_x = 16*pow(sin(t), 3);
  mu_y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
}

model {
  t ~ uniform(0, 2*pi());
  x ~ normal(mu_x, sigma);
  y ~ normal(mu_y, sigma);
}