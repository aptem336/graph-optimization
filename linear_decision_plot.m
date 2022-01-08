[n,m] = size(transport);
source = [];
target = [];
weigth = [];
k = 1;
for i = 1:n
    for j = 1:m
        if (transport(i,j) ~= 0)
            source(k) = i;
            target(k) = j;
            weigth(k) = transport(i,j);
            k = k + 1;
        end
    end
end
labeledge(plot(graph(source, target)),source,target,weigth)