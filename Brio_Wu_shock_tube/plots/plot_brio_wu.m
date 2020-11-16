close all;

clear;
clc;

% Read the data files 
jj = 41; % final result
filename = sprintf('%s%05d%s', 'Brio-Wu.block0.out1.', (jj-1), '.tab');

delimiterIn = ' '; % column separation in the data
headerlinesIn = 2;

A = importdata(filename, delimiterIn, headerlinesIn);

% Primitive varaibles
x = A.data(:,2);

% loop for conservative variables
for ii = 3:10
    p_variable = A.data(:,ii);
    
    if (ii == 3)
        y = '\rho';
    elseif (ii == 4)
        y = 'p';
    elseif (ii == 5)
        y = 'u';
    elseif (ii == 6)
        y = 'v';
    elseif (ii == 7)
        y = 'w';
    elseif (ii == 8)
        y = 'Bx';
    elseif (ii == 9)
        y = 'By';
    else 
        y = 'Bz';
    end
    
    plot(x, p_variable, 'r.','LineWidth',1)

    xlabel('x'), ylabel(y)
    set(gca,'FontSize',10); set(gca,'FontWeight','bold')
        
    % print plots for primitive variables
    print(gcf, sprintf('%s%s%s','./BW_st/', y, '.eps'),'-depsc','-r300');
    pause
end




