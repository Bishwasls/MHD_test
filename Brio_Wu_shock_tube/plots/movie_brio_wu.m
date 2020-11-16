close all;

clear;
clc;

% % video setup 
% v = VideoWriter('./BW_st/BW_st.avi');
% open(v);

for ii = 3:10   
    %====================
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
    %====================
    
    % video setup 
    v = VideoWriter(sprintf('%s%s%s', './BW_st/BW_st_', y, '.avi'));
    open(v); 
    
    % Read the data files 
    for jj = 1:41
        filename = sprintf('%s%05d%s', 'Brio-Wu.block0.out1.', (jj-1), '.tab');

        delimiterIn = ' '; % column separation in the data
        headerlinesIn = 2;

        A = importdata(filename, delimiterIn, headerlinesIn);

        % Primitive varaibles
        x = A.data(:,2);

        % loop for conservative variables
        p_variable = A.data(:,ii);
     
        plot(x, p_variable, 'r.','LineWidth',1)
        xlabel('x'), ylabel(y)
        set(gca,'FontSize',10); set(gca,'FontWeight','bold')

        frame = getframe(gcf);
        writeVideo(v, frame);
        pause(0.01)
    end 
    close(v)
    
end