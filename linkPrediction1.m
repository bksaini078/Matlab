function recom_List = linkPrediction1(A,S,nodeNo,n)    #maxIndex = ismember(A(7,:), S(7,:)); not working  # S=A^2;#friend of friend   #nodeNo=7;  x= A(nodeNo,:);  NotfriendMatrix= ~x;  NotfriendMatrix(nodeNo)=0; #setting 0 self node  userID=find(NotfriendMatrix);  Foaf_ofNode= find(NotfriendMatrix);  S_n=S(nodeNo,:);#foaf_index=full(find(S_n));  foaf_value=full(S_n(Foaf_ofNode)); #creating friend of friend list .  foaflist(Foaf_ofNode)=foaf_value;  k=find(foaflist>min(foaflist));#working  foaflist2=foaflist(k);  sort_foaflist=sort(foaflist2,'descend');  max_recom=sort_foaflist(1:n);  #max_recom_index=ismember(foaflist,max_recom)  #UserID=find(max_recom_index)  #removing duplicates   max_recom= sort(unique(max_recom),'descend');  recom_List=[];  UserID=[];  r=[];  for i= 1:length(max_recom)    max_recom_index=[];    max_recom_index=ismember(foaflist,max_recom(i));    #UserID(i)=find(max_recom_index);    dataforlen=find(max_recom_index);    for j= 1:length(dataforlen)          if  isempty(UserID);#NEED TO DELETE THIS               UserID(1) =dataforlen(j);              r(1)=foaflist(UserID(end));         else                                UserID(end+1) =dataforlen(j);                 r(end+1)=foaflist(UserID(end));         endif       #endif     endfor     endfor  recom_List=[[1:length(UserID)];UserID;r]';  #disp(recom_List');       endfunction