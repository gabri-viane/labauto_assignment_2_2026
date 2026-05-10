clear
close all
load("traiettoria_no_IS.mat")
figure
subplot(3,3,1)
joint_position=reference_position(:,1)-joint_position(:,1);
joint_velocity=reference_velocity(:,1)-joint_velocity(:,1);
joint_torque=joint_torque(:,1);
plot(time, joint_position, 'r')
title('Err Pos - No IS')
legend('Pos Ref - Pos')
xlabel('Tempo [s]')
ylabel('Pos [m]')
subplot(3,3,2)
plot(time, joint_velocity, 'r')
title('Err Vel - No IS')
legend('Vel Ref - Vel')
xlabel('Tempo [s]')
ylabel('Vel [m/s]')
subplot(3,3,3)
plot(time, joint_torque, 'r')
title('Coppia - No IS')
legend('C')
xlabel('Tempo [s]')
ylabel('Coppia [N*m]')

load("traiettoria_IS_ZVD.mat")
subplot(3,3,4)
joint_position=reference_position(:,1)-joint_position(:,1);
joint_velocity=reference_velocity(:,1)-joint_velocity(:,1);
joint_torque=reference_acceleration(:,1)-joint_torque(:,1);
plot(time, joint_position, 'r')
title('Err Pos - ZVD')
legend('Pos Ref - Pos')
xlabel('Tempo [s]')
ylabel('Pos [m]')
subplot(3,3,5)
plot(time, joint_velocity, 'r')
title('Err Vel - ZVD')
legend('Vel Ref - Vel')
xlabel('Tempo [s]')
ylabel('Vel [m/s]')
subplot(3,3,6)
plot(time, joint_torque, 'r')
title('Coppia - ZVD')
legend('C')
xlabel('Tempo [s]')
ylabel('Coppia [N*m]')

load("traiettoria_IS_ZVDD.mat")
subplot(3,3,7)
joint_position=reference_position(:,1)-joint_position(:,1);
joint_velocity=reference_velocity(:,1)-joint_velocity(:,1);
joint_torque=reference_acceleration(:,1)-joint_torque(:,1);
plot(time, joint_position, 'r')
title('Err Pos - ZVDD')
legend('Pos Ref - Pos')
xlabel('Tempo [s]')
ylabel('Pos [m]')
subplot(3,3,8)
plot(time, joint_velocity, 'r')
title('Err Vel - ZVDD')
legend('Vel Ref - Vel')
xlabel('Tempo [s]')
ylabel('Vel [m/s]')
subplot(3,3,9)
plot(time, joint_torque, 'r')
title('Coppia - ZVDD')
legend('C')
xlabel('Tempo [s]')
ylabel('Coppia [N*m]')