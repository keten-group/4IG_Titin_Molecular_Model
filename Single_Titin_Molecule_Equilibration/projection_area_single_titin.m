% for k = 1:400
%     d = strcat(num2str(k),'.data');
%     fid=fopen(d);   
%     tline = fgetl(fid);
%     tlines = cell(0,1);
%     line_start = 740;
%     line_end = 6558;
%     tag = 0;
%     while ischar(tline) 
%         tlines{end+1,1} = tline;
%         tline = fgetl(fid);
%         tag = tag + 1;
%         if tag > line_end
%             break;
%         end
%     end
%     fclose(fid);
% %%  boundary 
%     boundary_start = 12;
%     boundary_end = 14;
%     boundary = string(tlines(boundary_start:boundary_end));
%     boundary_good_x = strtok(boundary(1),"x");
%     boundary_good_y = strtok(boundary(2),"y");
%     boundary_good_z = strtok(boundary(3),"z");
%     x = str2num(boundary_good_x);
%     y = str2num(boundary_good_y);
%     z = str2num(boundary_good_z);
%     min_x = x(1);
%     max_x = x(2);
%     min_y = y(1);
%     max_y = y(2);  
%     min_z = z(1);
%     max_z = z(2);
%     len_x = max_x - min_x;
%     len_y = max_y - min_y;
%     len_z = max_z - min_z;
% %% transfer to string 
%     tlines_str = string(tlines(line_start:line_end+1));
%     tlines_str_good = strtok(tlines_str,'#');
% %% transfer to matrix
% % if column 7
%     position = zeros(length(tlines_str_good),7);
%     for i = 1:length(tlines_str_good)
%         position(i,:) = str2num(tlines_str_good(i));
%     end
%     position = position(:,1:7);
%     e = strcat(num2str(k),'.mat');
%     save(e,'position');
% 
% end

area = zeros(400,1);
for k = 1:400
    d = strcat(num2str(k),'.mat');
    load(d);
    x = position(1:5820,5);
    y = position(1:5820,7);
    idx = boundary(x,y) ;
%     plot(x,y,'.b')
%     hold on
%     plot(x(idx),y(idx),'r')
    X = x(idx); Y = y(idx);
    A = polyarea(X,Y);
    area(k) = A;
end