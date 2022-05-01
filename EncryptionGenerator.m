%random Encoded Encryption Generator from ASCII code%
%Author_Siddharth Pachpor%
%% USER DATA
prompt_user ='Enter any random ASCII: ';
str1 = input(prompt_user,'s');%save as string
% Enter the numeric key with anumber between 1 to 50
prompt_key = ' Enter the numeric key with a number between 1 to 50 for your Password: ';
key = input(prompt_key);
encoded = julius(str1,key); 

%% MAIN fUNCTION
function encoded = julius(str1,key)
for i = 32:126
    data = fprintf('%s \n',char(i));  
end 
    strtext = double(str1);
    shifttext = strtext + key; 
 for i = numel(shifttext)
        while (shifttext(i)>126 || shifttext(i)<32)
           if shifttext(i)>126 
            diff = shifttext(i) - 126;
            shifttext(i) = 31 + diff ;
           else
            diff = 32 - shifttext(i);
            shifttext(i)=127-diff;
           end
        end 
     cipher(i) = shifttext(i);
 end 
encoded = char(cipher);
end 
