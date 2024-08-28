

x0 = [-6; 4; -5; 5; 2; 0];


u = [0; -5; -20; -20; 0; 25];


b = [-20; 20; 20; -20; 20; -20];


L = [1, 0, -1, 0, 0, 0;
    -1, 1, 0, 0, 0, 0;
    0, -1, 2, 0, 0, -1;
    0, -1, 0, 2, 0, -1;
    0, 0, 0, -1, 1, 0;
    0, 0, 0, 0, -1, 1];


tspan = [0 10];


[t, x] = ode45(@(t, x) odefun(t, x, L, b, u), tspan, x0);


plot(t, x);
xlabel('Time');
ylabel('State variables');
title('State Variables over Time');
legend('x1(t)', 'x2(t)', 'x3(t)', 'x4(t)', 'x5(t)', 'x6(t)');
grid on;

function dxdt = odefun(t, x, L, b, u)
    dxdt = -L*x + b + u;
end
