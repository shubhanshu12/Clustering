function X=getdata(str)
switch str
    case 'Iris       '
        X.data=xlsread('Iris.xlsx','A2:D151');
        X.k=3;
        
    case 'Wine       '
        X.data=csvread('wine.data');
        X.k=3;
    case 'Glass      '
        X.data=csvread('glass.data');
        X.k=7;
    case 'CMC        '
        X.data=csvread('cmc.data');
        X.k=3;
    case 'Cancer     ' % Breast cancer
        X.data=csvread('wdbc.csv');  % read csv file and class label chnaged 0--M  1--B
        X.k=2;
    case 'Cleveland  '
        X.data=xlsread('cleveland.xlsx');
        X.k=4;
    case 'Hungarian  '
        X.data=xlsread('hungarian.xlsx');
        X.k=2;
    case 'Switzerland'
        X.data=xlsread('switzerland.xlsx');
        X.k=4;
    case 'Heart      '
        X.data=csvread('heart.dat');
        X.k=2;
    case 'BreatCancer'
        X.data=csvread('wdbc.csv');
         X.k=2;
    case 'Lung       '
        X.data=xlsread('lung.xlsx');
        X.k=3;  
    case 'Parkinsons '
        X.data=csvread('parkinsons.data');
        X.k=2;
    case 'Vertebral  '
        X.data=xlsread('vertebral.xlsx');
        X.k=3;  
end

end