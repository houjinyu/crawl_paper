    srcPATH = 'D:\Ñ¸À×ÏÂÔØ\a';
    list = dir(fullfile(srcPATH));
    fileNum=size(list,1)-2;
    for k = 3:fileNum+2 
        oneDir=[srcPATH,'\',list(k).name,'\']
        pdfFiles = dir (oneDir);
        pdflength = length(pdfFiles);
        for i = 3:pdflength
            tempname=pdfFiles(i).name;
            oldname=[oneDir,tempname] ;
%             newname=[oneDir,tempname,'.pdf'];
            fprintf('½ø¶È-----------%.2f%%\n',i/pdflength*100);
%             pos=strfind(tempname,'-');
% %             tempname
% %             length(tempname)
%           
                newname=[oneDir,'ICML13-',num2str(i-2),'.pdf'];
       
            movefile(oldname,newname);
        end
    end

