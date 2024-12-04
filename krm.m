


% 定义参数
zeta = 0.1; % 阻尼比减小，以实现更慢的衰减
omega_n = 1; % 自然频率
omega_d = omega_n * sqrt(1 - zeta^2); % 阻尼频率
varphi = pi / 4; % 相位角

% 定义时间变量
t = linspace(0, 20, 2000); % 从0到20秒，2000个点，增加周期

% 计算函数值
a = exp(-zeta * omega_n * t) * sqrt(1 / (1 - zeta^2));
b = sin(omega_d * t + varphi);
c = exp(-zeta * omega_n * t) * sqrt(1 / (1 - zeta^2)) .* sin(omega_d * t + varphi);

% 创建图形窗口
figure;

% 绘制(a)部分
subplot(1, 3, 1); % 1行3列的第1个
plot(t, a);
title('(a) $e^{-\zeta\omega_n t}\sqrt{\frac{1}{1-\zeta^2}}$', 'Interpreter', 'latex');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% 绘制(b)部分
subplot(1, 3, 2); % 1行3列的第2个
plot(t, b);
title('(b) $\sin(\omega_d t + \varphi)$', 'Interpreter', 'latex');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% 绘制(c)部分
subplot(1, 3, 3); % 1行3列的第3个
plot(t, c, 'b', 'LineWidth', 2); hold on; % 绘制正弦波
plot(t, a, 'r--', 'LineWidth', 1.5); % 绘制包络线
title('(c) $e^{-\zeta\omega_n t}\sqrt{\frac{1}{1-\zeta^2}}\sin(\omega_d t + \varphi)$', 'Interpreter', 'latex');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Damped Sine Wave', 'Envelope');
grid on;
hold off;



