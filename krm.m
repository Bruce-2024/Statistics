


% �������
zeta = 0.1; % ����ȼ�С����ʵ�ָ�����˥��
omega_n = 1; % ��ȻƵ��
omega_d = omega_n * sqrt(1 - zeta^2); % ����Ƶ��
varphi = pi / 4; % ��λ��

% ����ʱ�����
t = linspace(0, 20, 2000); % ��0��20�룬2000���㣬��������

% ���㺯��ֵ
a = exp(-zeta * omega_n * t) * sqrt(1 / (1 - zeta^2));
b = sin(omega_d * t + varphi);
c = exp(-zeta * omega_n * t) * sqrt(1 / (1 - zeta^2)) .* sin(omega_d * t + varphi);

% ����ͼ�δ���
figure;

% ����(a)����
subplot(1, 3, 1); % 1��3�еĵ�1��
plot(t, a);
title('(a) $e^{-\zeta\omega_n t}\sqrt{\frac{1}{1-\zeta^2}}$', 'Interpreter', 'latex');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% ����(b)����
subplot(1, 3, 2); % 1��3�еĵ�2��
plot(t, b);
title('(b) $\sin(\omega_d t + \varphi)$', 'Interpreter', 'latex');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% ����(c)����
subplot(1, 3, 3); % 1��3�еĵ�3��
plot(t, c, 'b', 'LineWidth', 2); hold on; % �������Ҳ�
plot(t, a, 'r--', 'LineWidth', 1.5); % ���ư�����
title('(c) $e^{-\zeta\omega_n t}\sqrt{\frac{1}{1-\zeta^2}}\sin(\omega_d t + \varphi)$', 'Interpreter', 'latex');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Damped Sine Wave', 'Envelope');
grid on;
hold off;



