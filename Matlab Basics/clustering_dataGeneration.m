function [] = clustering_dataGeneration (fig)

    dim = 2; % the dimension of points

    [data, clusterInfo] = generateData(dim);

    numOfClusters = 3;
    methodInitial = 1;
    [centers0] = initialGuess(data, numOfClusters, methodInitial);
    centers(:,:,1) = centers0;

    centers(:,:,2) = zeros(size(centers0));

    clusters = zeros([size(data,1) 1]);
    clusters0 = zeros(size(clusters));
    changes = 1;
    i = 1;
    max = 100;

    while (changes > 0 && i < max)
        [clusters, centers(:,:,2)] = clusteringStep(data, centers(:,:,1));
        changes = length(find(clusters - clusters0));

        visualize(fig, data, clusterInfo, centers, clusters, changes, i);

        % update
        clusters0 = clusters;
        centers(:,:,1) = centers(:,:,2);
        i = i+1;

        i, pause
    end

end


function [clusters, centersOUT] = clusteringStep(data, centersIN)

    for(n = 1:size(data, 1))
        d2 = sum((repmat(data(n, :), [size(centersIN, 1) 1]) - centersIN).^2, 2)
        closests = find(d2 == min(d2));
        clusters(n, 1nknknknknk) = closests(1);
        pause
    end
    
    for(k = 1:size(centersIN, 1))
        centersOUT(k, :) = mean(data(find(clusters == k), :), 1)
    end

end


function [] = visualize (fig, data, clusterInfo, centers, clusters, changes, i)

    markers0 = ['^sox+*v<h>']; markers = repmat(markers0, [1 5]);
    colours0 = ['rkcgmy']; colours = repmat(colours0, [1 10]);

    figure(fig);
    clf;

    horz = 4;
    vert = 4;

    subplot(horz, vert, [1 5]);
    plot(data(:,1), data(:,2), 'b.');

    subplot(horz, vert, [9 13]);
    hold on;

    for(n=1:length(clusterInfo)-1)
        plot(data(clusterInfo(n)+1:clusterInfo(n+1),1),...
            data(clusterInfo(n)+1:clusterInfo(n+1),2),...
            ['b', markers(n)]);
    end

    subplot(vert, horz, [2, 4]);
    text(0.1, 0.5, ['counter = ', num2str(counter),...
                    ' ;changes = ', num2str(changes)]);

    subplot(vert, horz, [6, 16]);

    hold on;

    for(n = 1:length(clusterInfo) - 1)
        plot(data(clusterInfo(n) + 1:clusterInfo(n + 1), 1),...
             data(clusterInfo(n) + 1:clusterInfo(n + 1), 2),...
             ['b', markers(n)]);
        plot(centers(n, 1, 1), centers(n, 2, 1), [colours(n), markers(n)], ...
             'MarkerSize', 20, 'LineWidth', 5);
         plot(centers(n, 1, 2), centers(n, 2, 2), [colours(n), markers(n)], ...
             'MarkerSize', 15, 'LineWidth', 5);
          plot(centers(n, 1, 1), centers(n, 1, 2), [centers(n, 2, 1) centers(n, 2, 2)], colours(n), markers(n)], ...
             'LineWidth', 5);
    end
end


function [centers] = initialGuess(data, numOfClusters, method)

N = size(data,1);

if (method == 1)
    centers = data(randperm(N, numOfClusters),:);
elseif (method == 2)
    %
else
    centers = data(1:numOfClusters, :);
end

end


function [data, cN] = generateData(dim)

numOfClusters = 3;
N = 5*[2 4 3];  % number of data points in each cluster
cN = [0 cumsum(N)];

km = 1;
xmeans = km*[-2  3  0];
ymeans = km*[ 2  0 -3];
means = [xmeans' ymeans']

kd = 0.5;
xdev = kd*[2 1 1];
ydev = kd*[1 2 1];
dev = [xdev' ydev'];

data = zeros([sum(N) dim])
for(n=1:numOfClusters)
    for(d=1:dim)
        data(cN(n)+1:cN(n+1), d) = means(n,d) + dev(n,d) * rand([N(n) 1]);
        %pause
    end
end

end


