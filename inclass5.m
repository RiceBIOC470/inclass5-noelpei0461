%Inclass assignment 5. 

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.
% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. (c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 
%answer a:
function cc=show(x)
I=imread(x);
J=imadjust(I,stretchlim(I),[0.01 0.99]);
figure
cc=imshow(J)
end

%answer b:

function cc=show(x,y)
I=imread(x);
J=imadjust(I,stretchlim(I),[y 1-y]);
figure
cc=imshow(J)
end
%y has to be a number between 0 and 1. y is the fraction of the pixels you want to display.

%answer c:
function cc=show(x,y)
if nargin==2
    I=imread(x);
    J=imadjust(I,stretchlim(I),[y 1-y]);
    figure
    cc=imshow(J)
elseif nargin==1
    I=imread(x);
    J=imadjust(I,stretchlim(I),[0.01 0.99]);
    figure
    cc=imshow(J)
end
        
end


%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 

function cc=reverse(x)
rx='';
len=length(x);
for ii=1:len
    if x(ii)=='A'
        rx(ii)='T'
    elseif x(ii)=='T'
        rx(ii)='A'
    elseif x(ii)=='G'
        rx(ii)='C'
    elseif x(ii)=='C'
        rx(ii)='G'
    end
end
cc=flip(rx);
end

