
a= sort(randperm(50,7))

b= sort(randperm(50,7))

matching_numbers= intersect(a,b)
    
if numel(matching_numbers)==0
    disp('unlucky better luck next time')
    
elseif numel(matching_numbers)==1
    disp('Congratulations! You matched 1 number. You won £3!')
    
elseif numel(matching_numbers)==2
    disp('Congratulations! You matched 2 numbers. You won £20!')
    
elseif numel(matching_numbers)==3
    disp('Congratulations! You matched 3 numbers. You won £200!')
    
elseif numel(matching_numbers)==4
    disp('Congratulations! You matched 4 numbers. You won £10,000!')
    
elseif numel(matching_numbers)==5
    disp('Congratulations! You matched 5 numbers. You won £100,000!')
    
elseif numel(matching_numbers)==6
    disp('Congratulations! You matched 6 numbers. You won £500,000!')
    
else
    disp('Congratulations! You matched 7 numbers. Thats a jackpot! You won £2,000,000!')
    
end


