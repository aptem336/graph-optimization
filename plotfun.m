function stop = plotfun(options,optimvalues,flag)
include = round(optimvalues.x);
source = [1;2;1;2;4;3;3;3;4;6;4;4;5;5;7;7;7;8;10;6;7;6;9;9;10;10;9;11;11;10;8] .* include;
source = source(source(:,1) > 0);
target = [4;4;3;5;5;4;6;7;6;7;8;7;7;8;8;10;11;11;11;9;9;10;10;12;12;13;13;13;14;14;10] .* include;
target = target(target(:,1) > 0);
weigth = [1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1] .* include;
weigth = weigth(weigth(:,1) > 0);
plot(graph(source, target), 'EdgeLabel', weigth);
stop = false;
end
