function [filterResponses] = extractFilterResponses(I, filterBank)
% CV Spring 2018 - Provided Code
% Extract the filter responses given the image and filter bank
% Pleae make sure the output format is unchanged.
% Inputs:
%   I:                  a 3-channel RGB image with width W and height H
%   filterBank:         a cell array of N filters
% Outputs:
%   filterResponses:    a HxWx3N matrix of filter responses


    %Convert input Image to Lab
    doubleI = double(I);
    if length(size(doubleI)) == 2
        tmp = doubleI;
        doubleI(:,:,1) = tmp;
        doubleI(:,:,2) = tmp;
        doubleI(:,:,3) = tmp;
    end
    [L,a,b] = RGB2Lab(doubleI(:,:,1), doubleI(:,:,2), doubleI(:,:,3));
    h = size(I,1);
    w = size(I,2);
    
   
    % -----fill in your implementation here --------
    for i=1:1:20
  %   f1{i,1} = imfilter(L,filterBank{i,1});
  %   f2{i,1} = imfilter(a,filterBank{i,1});
  %   f3{i,1} = imfilter(b,filterBank{i,1});
  %   filterResponses{i,1}=f1{i,1};
  %   filterResponses{i,2}=f2{i,1};
  %   filterResponses{i,3}=f3{i,1};
      filterResponses(:,:,3*i-2)=imfilter(L,filterBank{i,1});
      filterResponses(:,:,3*i-1)=imfilter(a,filterBank{i,1});
      filterResponses(:,:,3*i)=imfilter(b,filterBank{i,1});
    end
    % ------------------------------------------
end
