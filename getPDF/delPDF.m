
srcPATH='C:\Users\Lee\Desktop\PDF\paper\ACL';
list = dir(fullfile(srcPATH));
 fileNum=size(list,1)-2;
 for k = 3:fileNum+2 
    oneDir=[srcPATH,'\',list(k).name,'\']
    docFiles = dir([oneDir,'*.doc']);
    pdfFiles = dir ([oneDir,'*.pdf']);
    jpglength = length(pdfFiles);
    xmllength = length(docFiles);
    for i = 1:jpglength
         fprintf('进度-----------%.2f%%\n',i/jpglength*100);
         jpgtemp=pdfFiles(i).name;
         jpgname=jpgtemp(1:end-4);
         flag=0;
         for j=1: xmllength
             xmltemp=docFiles(j).name;
             xmlname=xmltemp(1:end-4);
             if strcmp(xmlname,jpgname)
                 flag=1;
                 break;
             end
         end
         if flag==0
             delete([oneDir,jpgtemp]);
             [oneDir,jpgtemp]
         end
    end
 end
 fprintf('删除无用pdf完成！\n');
