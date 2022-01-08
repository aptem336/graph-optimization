function gcv = generate_constraint_vectors(n,m)
gcv = zeros(n+m,n*m);
for i = 1:n
    for j = (i-1)*m+1:i*m
        gcv(i,j) = 1;
    end
end
for i = 1:m
    for j = 1:n
        gcv(i+n,(j-1)*m+1+i-1) = 1;
    end
end
end