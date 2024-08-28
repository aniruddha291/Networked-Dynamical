


x0 = [-6; 4; -5; 5; 2; 0];
b = [-20; 20; 20; -20; 20; -20];
u = zeros(6,1);
L = [1, 0, -1, 0, 0, 0; -1, 1, 0, 0, 0, 0; 0, -1, 2, 0, 0, -1; 0, -1, 0, 2, 0, -1; 0, 0, 0, -1, 1, 0; 0, 0, 0, 0, -1, 1];


tspan = [0 10];


[T, X] = ode45(@(t,x) system_dynamics(t, x, L, b, u), tspan, x0);


figure;
plot(T, X);
title('State Variables over Time');
xlabel('Time');
ylabel('State Variables');
legend('x1(t)', 'x2(t)', 'x3(t)', 'x4(t)', 'x5(t)', 'x6(t)');
grid on;
function dxdt = system_dynamics(t, x, L, b, u)
    dxdt = -L*x + b + u;
end


