%clear v;tmax=15;koko=3;pelaajia=2;N=pelaajia;tic,for(t=1:tmax),vaihe=[t tmax],v(t)=TicTacToe(10,2,koko,N,0,0.1,1,0);end,toc,figure(101);clf;H=histogram(v,[-.5:1:N+.5]);suhteet=[[H.Values;100*H.Values/sum(H.Values)],[sum(H.Values);100]]

function [voitto] = TicTacToe (fig,dim,koko,pelaajia,ihmisia,viive,visualisointi,tulostus)
PL=zeros(repmat([koko],[1 dim]));%pelilauta

voitto=0;
missa=[0 0];
if(visualisointi==1),visualisoi(fig,dim,pelaajia,PL,voitto,missa,0);end
%if(tulostus==1),disp(['hit any key...']);pause();end

taytto=0;
while(voitto==0 & taytto<koko^dim)
    [p,m,n]=pelivuoro(taytto,PL,pelaajia,ihmisia);
    PL(m,n)=p;
    if(visualisointi==1),visualisoi(fig,dim,pelaajia,PL,voitto,missa,viive);end
    [voitto,missa]=voittiko(PL,voitto,pelaajia,missa);
    if(voitto~=0)
        if(tulostus==1),disp(['Pelaaja ',num2str(voitto),' VOITTI!!!!!']);end
        if(visualisointi==1),visualisoi(fig,dim,pelaajia,PL,voitto,missa,0);end
    end
    taytto=taytto+1;
    if(voitto==0 & taytto==koko^dim)
        if(tulostus==1),disp(['TASAPELI!!!!!']);end
    end
end

end

function [] = visualisoi (fig,dim,pelaajia,PL,voitto,missa,delay)
%if(voitto==0),tilanne=PL,end

if(dim==2)
P=pelaajia;
s=size(PL);N=s(1);

figure(fig);
clf;
hold on;
k=P+1;
L=[repmat(k,[1 N]);PL;repmat(k,[2 N])];
L=[repmat(k,[N+3 1]) L repmat(k,[N+3 2])];
surf(L);
if(voitto~=0)
    siirto=1.5;
    voittokoko=50;
    if(missa(1)==1)%rivivoitto
        plot3(siirto+[1 N],siirto+[missa(2) missa(2)],[-1 -1],'r.-','MarkerSize',voittokoko);
    elseif(missa(1)==2)%sarakevoitto
        plot3(siirto+[missa(2) missa(2)],siirto+[1 N],[-1 -1],'r.-','MarkerSize',voittokoko);
    elseif(missa(1)==3)%viistovoitto
        if(missa(2)==1)
            plot3(siirto+[1 N],siirto+[1 N],[-1 -1],'r.-','MarkerSize',voittokoko);
        elseif(missa(2)==2)
            plot3(siirto+[1 N],siirto+[N 1],[-1 -1],'r.-','MarkerSize',voittokoko);
        end
    end
end
view(0,-90);
pause(delay);
end%if(dim==2)

end

function  [voitto,missa] = voittiko (PL,voitto,pelaajia,missa)
P=pelaajia;
s=size(PL);N=s(1);
for(p=1:P)
for(n=1:N)%rivit ja sarakkeet
    if(sum(PL(n,:)==repmat([p],[1 N]))==N)
        voitto=p;
        missa=[1 n];
    elseif(sum(PL(:,n)==repmat([p],[N 1]))==N)
        voitto=p;
        missa=[2 n];
    end
end
if(voitto==0)%viistot
    Da=diag(PL(1:1:N,1:1:N));
    Db=diag(PL(N:-1:1,1:1:N));
    if(sum(Da==repmat([p],[N 1]))==N)
        voitto=p;
        missa=[3 1];
    elseif(sum(Db==repmat([p],[N 1]))==N)
        voitto=p;
        missa=[3 2];
    end
end
end
end

function [kumpi,rivi,sara] = pelivuoro (taytto,PL,pelaajia,ihmisia)
kumpi=mod(taytto,pelaajia)+1;
if(kumpi<=ihmisia)
    laiton=0;
else
    [rivi,sara]=automaatti(PL);
    return;
end
rivi=0;
sara=0;
while(laiton~=4)
    if(laiton==0)
       [rivi,sara,laiton]=kysyRuutu(pelaajia,kumpi,laiton,PL,rivi,sara);
    elseif(laiton==1)
       [rivi,sara,laiton]=kysyRuutu(pelaajia,kumpi,laiton,PL,rivi,sara);
    elseif(PL(rivi,sara)==0)
        laiton=4;
    else
        disp(['valisemassasi kohdassa on jo merkki, anna laillinen syote']);
        laiton=0;
    end
end
end

function [rivi,sara] = automaatti (PL);
s=size(PL);N=s(1);
strategia=2;
if(strategia==1)%eka tyhja riveittain
    tyhja=0;
    for(m=1:N)
        if(tyhja==1),break;end
        for(n=1:N)
            if(PL(m,n)==0)
                rivi=m;
                sara=n;
                tyhja=1;
                break;
            end
        end
    end
elseif(strategia==2)
    pl=reshape(PL,[N^2 1]);
    vaihtoehdot=find(pl==0);
    valinta=randperm(length(vaihtoehdot),1);
    ind=vaihtoehdot(valinta);
    rivi=mod(ind,N);if(rivi==0),rivi=N;end
    sara=ceil(ind/N);
elseif(strategia==3)
    %
else
    %
end
end

function [laiton,kohde] = kysyAlkio(pelaajia,kumpi,laiton,N,kohde,k)
if(k==1)
    ks='rivi';
elseif(k==2)
    ks='sarake';
else
end
kohde=input(['pelaaja ',num2str(kumpi),': anna ',ks,' (1-',num2str(N),'): ']);
if(isempty(kohde) | mod(kohde,1)~=0 | kohde<1 | kohde>N)
    disp(['laiton ',ks,', anna laillinen syote']);
    return;
else
    laiton=k;
end
end

function [rivi,sara,laiton] = kysyRuutu(pelaajia,kumpi,laiton,PL,rivi,sara)
s=size(PL);N=s(1);
if(laiton==0)
    [laiton,rivi]=kysyAlkio(pelaajia,kumpi,laiton,N,rivi,1);
end
if(laiton==1)
    [laiton,sara]=kysyAlkio(pelaajia,kumpi,laiton,N,sara,2);
end
end