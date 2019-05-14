
viol=1;
noviol=1;
filenumber=1;
fid2= fopen('test2.txt', 'wt');
fid = fopen('test.txt', 'wt');
av_files = dir(fullfile('C:','Documents and Settings','Pradeep','Desktop','toppar','new','smallFC','good','*.pdb'))
ST2Cell=struct2cell(av_files);

var=1

for load_txt=63:300
    
    str=['spPBproper4_cns_w_',num2str(load_txt),'.pdb'];
    %str20=['C:/Documents and Settings\Pradeep\Desktop\toppar\new\smallFC\good\spPBproper4_cns_w_',num2str(load_txt),'.pdb']
    search=strcmp(ST2Cell, str);
    if sum(sum(search))==1
        
        [atom, atmnmb, atmname, resname, resnum, x, y, z, occ, bfac, id, atnm]= textread(str, '%s%d%s%s%f%f%f%f%f%f%s%s', 'headerlines',14);
        i=1;
        l=1;
        OHR = strcmp(resname,'DRG');
        sum1=sum(OHR);  
        A(sum1,4)=zeros;
        countB=1;
        while i<=atmnmb(end-1,1)
            if OHR(i,1)==1       
                
                A(countB,1:4)=[resnum(i,1), x(i,1), y(i,1), z(i,1)];
                Resid(countB,1)=[atmname(i,1)];
                countB=countB+1;
            else 
            end
            i=i+1;
            l=l+1;
            
            
        end
        
        i=1;
        Tangle=2;
        ca=1;
        ca2=1
        cb=1;
        no=1;
        f=1;
        n=1;
        m=1;
        m2=1;
        m3=1;
        m4=1;
        list(1:2,1:8)=zeros;
        [c,z]=size(Resid);
        %while i<=Tangle;
            while ca<c
                
                if strcmp(Resid(ca,1),'CB')==1
                    
                    while cb<countB
                        if strcmp(Resid(cb,1),'SG')==1 && A(ca,1)==A(cb,1);
                            CBSG = sqrt(((A(ca,2)-A(cb,2))^2)+((A(ca,3)-A(cb,3))^2)+((A(ca,4)-A(cb,4))^2));
                            list(f,1)=A(ca,1);
                            list(f,2)=CBSG;
                        else 
                        end
                        cb=cb+1;
                    end
                    while no<countB
                        if strcmp(Resid(no,1),'SD')==1 && A(ca,1)==A(no,1)
                            CBSD = sqrt(((A(ca,2)-A(no,2))^2)+((A(ca,3)-A(no,3))^2)+((A(ca,4)-A(no,4))^2));
                            list(f,4)=CBSD;
                        else
                        end
                        no=no+1;
                    end
                    cb=1;
                    no=1;
                    while m<=c
                        if strcmp(Resid(cb,1),'SG')==1 && A(ca,1)==A(cb,1)
                            while no<countB
                                if strcmp(Resid(no,1),'SD')==1 && A(cb,1)==A(no,1)
                                    SGSD = sqrt(((A(cb,2)-A(no,2))^2)+((A(cb,3)-A(no,3))^2)+((A(cb,4)-A(no,4))^2));
                                    list(f,3)=SGSD;
                                else
                                end
                                no=no+1
                            end
                            
                            
                        else
                            cb=cb+1;
                        end
                        m=m+1
                    end
                    cb=1;
                    no=1;
                    while m2<=c
                        if strcmp(Resid(cb,1),'CE')==1 && A(ca,1)==A(cb,1)
                            while no<countB
                                if strcmp(Resid(no,1),'SD')==1 && A(cb,1)==A(no,1)
                                    SDCE = sqrt(((A(cb,2)-A(no,2))^2)+((A(cb,3)-A(no,3))^2)+((A(cb,4)-A(no,4))^2));
                                    list(f,5)=SDCE;
                                else
                                end
                                no=no+1
                            end
                            
                            
                        else
                            cb=cb+1;
                        end
                        m2=m2+1
                    end
                    cb=1;
                    no=1;
                    while m3<=c
                        if strcmp(Resid(cb,1),'CE')==1 && A(ca,1)==A(cb,1)
                            while no<countB
                                if strcmp(Resid(no,1),'SG')==1 && A(cb,1)==A(no,1)
                                    SGCE = sqrt(((A(cb,2)-A(no,2))^2)+((A(cb,3)-A(no,3))^2)+((A(cb,4)-A(no,4))^2));
                                    list(f,7)=SGCE;
                                else
                                end
                                no=no+1
                            end
                            
                            
                        else
                            cb=cb+1;
                        end
                        m3=m3+1
                    end
                    cb=1;
                    no=1;
                    while m4<=c
                        if strcmp(Resid(cb,1),'CE')==1 && A(ca2,1)==A(cb,1)
                            while no<countB
                                if strcmp(Resid(no,1),'CB')==1 && A(cb,1)==A(no,1)
                                    CBCE = sqrt(((A(cb,2)-A(no,2))^2)+((A(cb,3)-A(no,3))^2)+((A(cb,4)-A(no,4))^2));
                                    list(f,6)=CBCE;
                                else
                                end
                                no=no+1
                            end
                            
                            
                        else
                            cb=cb+1;
                        end
                        m4=m4+1
                    end
                    cb=1;
                    no=1;
%                     while m2<=c
%                         if strcmp(Resid(cb,1),'CAG')==1 && A(ca,1)==A(cb,1)
%                             while no<countB
%                                 if strcmp(Resid(no,1),'SAF')==1 && A(cb,1)==A(no,1);
%                                     SDCE = sqrt(((A(cb,2)-A(no,2))^2)+((A(cb,3)-A(no,3))^2)+((A(cb,4)-A(no,4))^2));
%                                     %list(f,1)=A(ca,1);
%                                     list(f,5)=SDCE;
%                                 else 
%                                 end
%                                 no=no+1
%                             end
%                             no=1;
%                             cb=1;
%                             while no<countB
%                                 if strcmp(Resid(no,1),'CB')==1 && A(ca,1)==A(no,1)
%                                     CBCE = sqrt(((A(cb,2)-A(no,2))^2)+((A(cb,3)-A(no,3))^2)+((A(cb,4)-A(no,4))^2));
%                                     list(f,6)=CBCE;
%                                 else
%                                 end
%                                 no=no+1;
%                             end
%                             no=1;
%                             cb=1;
%                             while no<countB
%                                 if strcmp(Resid(no,1),'SAE')==1 && A(cb,1)==A(no,1)
%                                     SGCE = sqrt(((A(cb,2)-A(no,2))^2)+((A(cb,3)-A(no,3))^2)+((A(cb,4)-A(no,4))^2));
%                                     list(f,7)=SGCE;
%                                 else
%                                 end
%                                 no=no+1;
%                             end
%                         else
%                             cb=cb+1;
%                         end
%                         
%                         
%                         m2=m2+1
%                     end
%                         cb=1;
%                         no=1;
                        
                        
                        
                        %P = ((CBSG^2)*((SGSD^2)+ (SDCE^2)- (SGCE^2)))+ ((SGSD^2)*((-(SGSD^2))+(SDCE^2)+(SGCE^2)))- (((CBSD^2) * (SGSD^2)-(SDCE^2)+(SGCE^2))) - (2*(SGSD^2)*(CBCE^2));
                        P= ((list(f,2)^2)*((list(f,3)^2)+ (list(f,5)^2)- (list(f,7)^2)))+ ((list(f,3)^2)*((-(list(f,3)^2))+(list(f,5)^2)+(list(f,7)^2)))+ (((list(f,4)^2) * (list(f,3)^2)-(list(f,5)^2)+(list(f,7)^2))) - (2*(list(f,3)^2)*(list(f,6)^2));
                        
                        %Q = (CBSG+SGSD+CBSD)*(CBSG+SGSD-CBSD)*(CBSG-SGSD+CBSD)*(-CBSG+SGSD+CBSD)*(SGSD+SDCE+SGCE)*(SGSD+SDCE-SGCE)*(SGSD-SDCE+SGCE)*(-SGSD+SDCE+SGCE);
                        Q = ( list(f,2)+list(f,3)+ list(f,4))*( list(f,2)+list(f,3)- list(f,4))*( list(f,2)-list(f,3)+ list(f,4))*(- list(f,2)+list(f,3)+ list(f,4))*(list(f,3)+list(f,5)+list(f,7))*(list(f,3)+list(f,5)-list(f,7))*(list(f,3)-list(f,5)+list(f,7))*(-list(f,3)+list(f,5)+list(f,7))
                        %list(f,5)=(acos(((list(f,3)^2)-(list(f,2)^2)-(list(f,4)^2))/((-1)*2*(list(f,2))*(list(f,4)))))*180/pi;
                        %S=((pi/2)-(acos(P/(Q^.5))))
                        %list(f,8)=asin((P/(Q^.5))/(((P/(Q^.5)^2)+1)^.5))*180/pi
                        list(f,8)=(acos(P/(Q^.5)))*180/pi;
                        f=f+1;
                        ca=ca+1;
                        m=1
                        m2=1
                        m3=1
                        m4=1
                    else
                    end
                    ca=ca+1;
                    no=1;
                    cb=1;
                end
                
                
                %here! start here!
                
                
            
            
          %i=i+1;  
          %end
        
        
    DRG1(var,:)=list(1,:);
    DRG2(var,:)=list(2,:);
    DRG3(var,:)=list(3,:);
    DRG4(var,:)=list(4,:);
    var=var+1;    
    else
    end
DRG1(var,:)=sum(DRG1)/8
DRG2(var,:)=sum(DRG2)/8
end
fclose(fid)
fclose(fid2)