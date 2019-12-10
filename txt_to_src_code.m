clc;
clear all;

start_of_line = '<p>';
end_of_line   = '</p>';
final = ''; line_ex = 0; cnt = 0;

fid = fopen('Sample_text.txt');

while(cnt == 0)
  new3 = '';
  line_ex = fgetl(fid);
    if(line_ex ~= -1)
        new3 = line_ex;
        new2 = numstuff(new3);
        new3 = strcat(start_of_line,new2,end_of_line);
        final = strcat(final,new3);
    else
        cnt = cnt+1;
    end
end
clipboard('copy',final);
fprintf('Successfully copied the text to clipboard..\n');