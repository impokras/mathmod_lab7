model Model2
  Real N = 1234;
  Real n;
  initial equation
  n = 7;
  equation
  der(n) = (0.0000117 + 0.25*n)*(N-n);
  annotation(experiment(StartTime=No, StopTime=1, Tolerance=1e-6, Interval=0.01));
end Model2;
