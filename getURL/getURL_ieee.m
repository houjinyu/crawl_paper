srcPATH='C:\Users\Administrator\Desktop\ieee_paper\getURL\data\';

Files = dir(srcPATH);
lengthFiles = length(Files);
fi=fopen('paper_url.txt','w');
for i = 3:lengthFiles
     fprintf('----------%.2f%%----------\n',(i-2)/lengthFiles*100);
     filename=[srcPATH,'\',Files(i).name];
     fid=fopen(filename,'r');
     url=fgets(fid);
     fprintf(fi,'%s',url);
     fclose(fid);
end

fclose(fi);

    