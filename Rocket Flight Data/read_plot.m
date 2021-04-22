fileLog = csvread('TEST.CSV', 16);

FlightTime = fileLog(:, 1);
SystemState = fileLog(:, 2);
gX = fileLog(:, 3);
gY = fileLog(:, 4);
gZ = fileLog(:, 5);
aX = fileLog(:, 6);
aY = fileLog(:, 7);
aZ = fileLog(:, 8);
yaw = fileLog(:, 9);
pitch = fileLog(:, 10);
roll = fileLog(:, 11);
altitude = fileLog(:, 12);
fcBatt = fileLog(:, 13);
py1Cont = fileLog(:, 14);
py2Cont = fileLog(:, 15);
DataError = fileLog(:, 16);

plot(FlightTime, SystemState, gX, gY, gZ, aX, aY, aZ, yaw, pitch, roll, altitude, fcBatt, py1Cont, py2Cont, DataError);

