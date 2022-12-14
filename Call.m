clc
close all
T=[0 2];
IC=[35;15;28;-20;-16;25];
[t,x] = ode23(@Control,T,IC);

figure(1);
plot3(x(:,1),x(:,2),x(:,3))
figure(2)
plot3(x(:,4),x(:,5),x(:,6))
figure(3)
plot(t,x(:,1),t,x(:,4))
xlabel("time(seconds)")
legend({'x_1','x_2'},'Location','northeast')
figure(4)
plot(t,x(:,2),t,x(:,5))
xlabel("time(seconds)")
legend({'y_1','y_2'},'Location','northeast')
figure(5)
plot(t,x(:,3),t,x(:,6))
xlabel("time(seconds)")
legend({'z_1','z_2'},'Location','northeast')
%figure(6)
%plot(t,(x(:,4)-x(:,1)))
%figure(7)
%plot(t,(x(:,5)-x(:,2)))
%figure(8)
%plot(t,(x(:,6)-x(:,3)))
