model Model3
  Real N = 1234;
  Real n;
  initial equation
  n = 7;
  equation
  der(n) = (0.5*sin(10*time) + 0.4*cos(2*time)*n)*(N-n);
  annotation(experiment(StartTime=No, StopTime=4, Tolerance=1e-6, Interval=0.01));
end Model3;





