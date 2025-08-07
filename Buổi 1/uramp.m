function y=uramp(t,m)
n=length(t);
y=zeros(1,n);
for i=1:n
    if t(i)>-m
        y(i)=t(i)+m;
    end
end