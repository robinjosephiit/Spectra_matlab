function spe = specplot(x,SR,U,conf)
    [a,b]=size(x);
    pow2=fix(log2(a));
    Nfft=2^(pow2-5);
    [p,f]=pwelch(x,hann((Nfft/8)),[],Nfft,SR);
    semilogx(f,f.*p/(U*U),'-','Displayname',string(conf));hold on;
    ylabel('\Phi_{uu}');xlabel('Hz');legend('show');
    set(gca,'FontSize',16);grid on;
end