function finale = numstuff(new)
num_start     = '<mn>';
num_end       = '</mn>';
math_start    = '<mo>';
math_end      = '</mo>';
start_of_num  = '<math xmlns="http://www.w3.org/1998/Math/MathML">';
end_of_num    = '</math>';
space = '&nbsp;';

finale ='';
splitcell = split(new);
[row, ~] = size(splitcell);
for i = 1:row
str = splitcell{i};
[~,num_col] = size(str);
if(str(1) == '1' || str(1) == '2' || str(1) == '3' || str(1) == '4' || str(1) == '5' || str(1) == '6' || str(1) == '7' || str(1) == '8' || str(1) == '9'|| str(1) == '0'|| str(1) == '*' || str(1) == '+' || str(1) == '-' || str(1) == '=')
    new1 = ''; newnew = '';
    for j= 1:num_col
        if(str(1) == '1' || str(1) == '2' || str(1) == '3' || str(1) == '4' || str(1) == '5' || str(1) == '6' || str(1) == '7' || str(1) == '8' || str(1) == '9'|| str(1) == '0')
            new1 = strcat(num_start,str(j),num_end);
        elseif(str(1) == '*' || str(1) == '+' || str(1) == '-' || str(1) == '=')
            new1 = strcat(math_start,str(j),math_end);
        end
        newnew = strcat(newnew,new1);
    end
    finale = strcat(finale, start_of_num, newnew, end_of_num,space);
    
else
    for k = 1:num_col
        finale = strcat(finale,str(k));
    end
    finale = strcat(finale,space);
end
end
end
