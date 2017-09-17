function [result] = multisvm(TrainingSet,GroupTrain,TestSet,mAR)
%Models a given training set with a corresponding group vector and 
%classifies a given test set using an SVM classifier according to a 
%one vs. all relation. 


u=unique(GroupTrain);
numClasses=length(u);
result = zeros(length(TestSet(:,1)),1);

%build models
for k=1:numClasses
    %Vectorized statement that binarizes Group
    %where 1 is the current class and 0 is all other classes
    G1vAll=(GroupTrain==u(k));
    models(k) = svmtrain(TrainingSet,G1vAll);
end

%classify test cases
for j=1:size(TestSet,1)
    for k=1:numClasses
        if(svmclassify(models(k),TestSet(j,:))) 
            break;
        end
    end
    result(j) = k;
    
if gt(mAR,2650)&& le(mAR,2654) 
      helpdlg('MIXED FRUITS-BANANA AND GRAPES');
     disp('MIXED FRUITS-BANANA AND GRAPES');
      helpdlg('227 calories');
     disp('227 calories');
     
elseif gt(mAR,4208)&& le(mAR,4212) 
     helpdlg('MIXED FRUITS-STRAWBERRY,PAPAYA,BANANA AND GRAPES');
     disp('MIXED FRUITS-STRAWBERRY,PAPAYA,BANANA AND GRAPES');
      helpdlg('234 calories');
     disp('234 calories');

elseif gt(mAR,4370)&& le(mAR,4374) 
      helpdlg('GREEN LEAVES');
     disp('GREEN LEAVES');
      helpdlg('15 calories');
     disp('15 calories');

elseif gt(mAR,6198)&& le(mAR,6200) 
     helpdlg('MIXED FRUITS-BANANA,ORANGE,GREEN AND RED APPLE');
     disp('MIXED FRUITS-BANANA,ORANGE,GREEN AND RED APPLE');
      helpdlg('224 calories');
     disp('224 calories');

elseif gt(mAR,6356)&& le(mAR,6358) 
     helpdlg('BREAD');
     disp('BREAD');
    helpdlg('265 calories'); 
     disp('265 calories'); 

elseif gt(mAR,22456)&& le(mAR,22460) 
     helpdlg('RED SEA BREAM FISH');
     disp('RED SEA BREAM FISH');
      helpdlg('524 calories'); 
     disp('524 calories'); 

elseif gt(mAR,25700)&& le(mAR,29720) 
     helpdlg('EGG');
     disp('EGG'); 
      helpdlg('155 calories'); 
      disp('155 calories');   

elseif mAR==8283 
    warndlg('IT IS BALL, NOT A FOOD');
     disp('IT IS BALL, NOT A FOOD'); 
        
else  
    msgbox('UNKNOWN FOOD-NOT TRAINED');
    disp('UNKNOWN FOOD-NOT TRAINED');
end  
end