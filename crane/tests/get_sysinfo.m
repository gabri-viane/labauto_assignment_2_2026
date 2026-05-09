methods = ["NO_SHAPER","ZV","ZVD","ZVDD","EI"];

% for i=1:length(methods)
%     disp("====== "+methods(i)+" ======")
%     load("test_trj1_copy_"+methods(i))
%     S = stepinfo(joint_position,time)
%     %plot(time,joint_position)
%     %hold on;
%     plot_stepinfo_data(joint_position,time)
% 
% 
% 
% end

for i=1:length(methods)
    disp("====== "+methods(i)+" ======")
    load("test_trj1_copy_"+methods(i))
    S = stepinfo(joint_position(1:(end-10/0.001)),time(1:(end-10/0.001)))
    plot(time(1:(end-10/0.001)),joint_position(1:(end-10/0.001)))
    hold on;
end
legend(methods);
xlabel("Time [s]")
ylabel("Position [m]")
grid on;
xlim([0,50])
% 
% 
% function plot_stepinfo_data(y,t)
% 
%     % Assicura vettori colonna
%     t = t(:);
%     y = y(:);
% 
%     % Info step
%     info = stepinfo(y, t);
% 
%     figure;
%     plot(t, y, 'b', 'LineWidth', 1.6);
%     grid on;
%     hold on;
% 
%     % Valore finale stimato (più robusto di y(end))
%     y_final = mean(y(end-10:end));
% 
%     % Banda ±2%
%     band = 0.02 * abs(y_final);
%     y_upper = y_final + band;
%     y_lower = y_final - band;
% 
%     % Settling region
%     idx_settle = t >= info.SettlingTime;
%     t_settle = t(idx_settle);
% 
%     if ~isempty(t_settle)
%         upper = (y_final + band) * ones(size(t_settle));
%         lower = (y_final - band) * ones(size(t_settle));
% 
%         fill([t_settle; flipud(t_settle)], ...
%              [upper; lower], ...
%              [0.9 0.9 0.9], ...
%              'EdgeColor', 'none', ...
%              'FaceAlpha', 0.5);
%     end
% 
%     % Linee banda
%     yline(y_upper, '--k', '2% Band');
%     yline(y_lower, '--k');
% 
%     % Valore finale
%     yline(y_final, '--r', 'Final Value');
% 
%     % Picco
%     [y_peak, idx_peak] = max(y);
%     plot(t(idx_peak), y_peak, 'ro', 'MarkerSize', 8, 'DisplayName', 'Peak');
% 
%     % Settling time
%     xline(info.SettlingTime, '--m', 'Settling Time');
% 
%     % Rise time (10-90%)
%     y10 = 0.1 * y_final;
%     y90 = 0.9 * y_final;
% 
%     idx_r1 = find(y >= y10, 1, 'first');
%     idx_r2 = find(y >= y90, 1, 'first');
% 
%     if ~isempty(idx_r1)
%         plot(t(idx_r1), y(idx_r1), 'go', 'MarkerSize', 7);
%     end
%     if ~isempty(idx_r2)
%         plot(t(idx_r2), y(idx_r2), 'go', 'MarkerSize', 7);
%     end
% 
%     % Titolo riassuntivo
%     title(sprintf(['RiseTime: %.3f s | SettlingTime: %.3f s | ' ...
%                    'Overshoot: %.2f %%'], ...
%                    info.RiseTime, info.SettlingTime, info.Overshoot));
% 
%     xlabel('Time (s)');
%     ylabel('Output');
% 
% end