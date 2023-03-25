model Model1
  Real N = 1234;
  Real n;
  initial equation
  n = 7;
  equation
  der(n) = (0.618 + 0.000013*n)*(N-n);
  annotation(experiment(StartTime=No, StopTime=30, Tolerance=1e-6, Interval=0.05));
end Model1;
