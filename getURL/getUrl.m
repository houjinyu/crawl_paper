
url='http://www.aclweb.org/anthology/D/D';
fp=fopen('EMNLP_url.txt','w'); 

% fprintf(fp,'http://www.aclweb.org/anthology/P/P98/\n');
% fprintf(fp,'http://www.aclweb.org/anthology/P/P99/\n');
% fprintf(fp,'http://www.aclweb.org/anthology/P/P00/\n');

for i=0:9
  fprintf(fp,'%s\n',[url,'0',num2str(i),'/']); 
 
end
for i=10:17
     fprintf(fp,'%s\n',[url,num2str(i),'/']); 
end
fclose(fp);