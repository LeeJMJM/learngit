% LeeJMJM 2021/11/3
function [x_recon]=FourierRecon(t,x)
%输入 时间t(s)，时间变量x(V/、m²/s等)
%输出 傅里叶分解后再重建的时间变量x_recon(V/、m²/s等)

[~,an,bn,N]=FourierDecom(t,x);
x_recon=zeros(1,N);
omega=2*pi/(t(N)*(N+1)/N);
for i=1:1:N/2
    x_recon=x_recon+an(i)*cos((i-1)*omega*t)-bn(i)*sin((i-1)*omega*t);
end

end