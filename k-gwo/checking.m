function [o,dmin,ind] = checking(x,data1)
nd=size(data1,2);
k=size(x,2)/nd;
ds=zeros(k,nd);
o=0;
for i=1:k
    for j=1:nd
        ds(i,j)=x(1,nd*(i-1)+j);
    end
end
    d = pdist2(data1, ds);
    [dmin, ind] = min(d, [], 2);
    o = sum(dmin);
end