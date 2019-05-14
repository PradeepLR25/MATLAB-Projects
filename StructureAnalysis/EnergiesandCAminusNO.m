viol=1;
noviol=1;
filenumber=1;
%fid6 = fopen('zero.txt', 'wt');
%fid5 = fopen('one.txt', 'wt');
%fid4 = fopen('two.txt', 'wt');
%fid3 = fopen('three.txt', 'wt');
%fid2 = fopen('four.txt', 'wt');     
fid = fopen('Energies.txt', 'wt');
fid7 = fopen('loadpdb.txt', 'wt');
av_files = dir(fullfile('C:','Documents and Settings','Pradeep','Desktop','toppar','new','smallFC','*.pdb'))
ST2Cell=struct2cell(av_files);
cnt=1;





for load_txt=1:800
    str=['spPBproper4_cns_w_',num2str(load_txt),'.pdb']
    search=strcmp(ST2Cell, str);
    if sum(sum(search))==1;
        
        [atom, atmnmb, atmname, resname, resnum, x, y, z, occ, bfac, id, atnm]= textread(str, '%s%d%s%s%f%f%f%f%f%f%s%s', 'headerlines',14);
        i=1;
        l=1;
        OHR2 = strcmp(atmname,'O1');
        CA2 = strcmp(atmname,'CA');
        sum1=sum(OHR2);
        %sum2=sum(OHR2)
        OHR(sum1,4)=zeros;
        CA(sum1,4)=zeros;
        countB=1;
        %resnum(end,1)=[]
        while i<=atmnmb(end-1,1)
            if OHR2(i,1)==1       
                OHR(countB,1:4)=[resnum(i,1), x(i,1), y(i,1), z(i,1)];
                countB=countB+1;
            else 
            end
            i=i+1;
            l=l+1;
        end
        i=1;
        l=1;
        countB=1;
        countBCA=1;
        while i<=atmnmb(end-1,1)
            if countB<9
                if (CA2(i,1)==1) & (resnum(i,1)==OHR(countB, 1))  
                    
                    CA(countBCA,1:4)=[resnum(i,1), x(i,1), y(i,1), z(i,1)];
                    countB=countB+1;
                    countBCA=countBCA+1;
                else 
                end
            else
                
            end
            i=i+1;
            l=l+1;
        end
        
        
        
        %The second part of the program obtains the atoms i-2 to i+2 residues from
        %the specified atom type.
        i=1;
        v=1;
        l=1;
        f=1;
        CAsmaller = 0;
        CAlarger = 0;
        diff(1:5,1:3) = zeros;
        CombMut=[3,48;8,48;5,99;9,99;9,56];
        Total = CombMut(:,1)+CombMut(:,2);
        
        
        while i<=7
            if CA(i,1)==5 && v~=2
                if CA(f,1)==99 && v~=2 
                    CAdist(v,1) = sqrt((CA(i,2)-CA(f,2))^2+(CA(i,3)-CA(f,3))^2+(CA(i,4)-CA(f,4))^2);
                    OHRdist(v,1) = sqrt((OHR(i,2)-OHR(f,2))^2+(OHR(i,3)-OHR(f,3))^2+(OHR(i,4)-OHR(f,4))^2);
                    diff(v,1:3) = [(CAdist(v,1)-OHRdist(v,1)),CA(i,1),CA(f,1)];
                    if diff(v,1)<0
                        CAsmaller = CAsmaller+1;
                    else
                        CAlarger = CAlarger+1;
                    end   
                    v=v+1;
                else
                    f=f+1;
                end
            else
                i=i+1;
            end
        end  
        
        
        
        i=1;
        f=1;
        
        while i<=7
            if CA(i,1)==3 && v~=3
                if CA(f,1)==48 && v~=3
                    CAdist(v,1) = sqrt((CA(i,2)-CA(f,2))^2+(CA(i,3)-CA(f,3))^2+(CA(i,4)-CA(f,4))^2);
                    OHRdist(v,1) = sqrt((OHR(i,2)-OHR(f,2))^2+(OHR(i,3)-OHR(f,3))^2+(OHR(i,4)-OHR(f,4))^2);
                    diff(v,1:3) = [(CAdist(v,1)-OHRdist(v,1)),CA(i,1),CA(f,1)];
                    if diff(v,1)<0
                        CAsmaller = CAsmaller+1;
                    else
                        CAlarger = CAlarger+1;
                    end   
                    v=v+1;
                else
                    f=f+1;
                end
            else
                i=i+1;
                
            end
        end
        i=1;
        f=1;
        while i<=7
            if CA(i,1)==8 && v~=4
                if CA(f,1)==48 && v~=4
                    CAdist(v,1) = sqrt((CA(i,2)-CA(f,2))^2+(CA(i,3)-CA(f,3))^2+(CA(i,4)-CA(f,4))^2);
                    OHRdist(v,1) = sqrt((OHR(i,2)-OHR(f,2))^2+(OHR(i,3)-OHR(f,3))^2+(OHR(i,4)-OHR(f,4))^2);
                    diff(v,1:3) = [(CAdist(v,1)-OHRdist(v,1)),CA(i,1),CA(f,1)];
                    if diff(v,1)<0
                        CAsmaller = CAsmaller+1;
                    else
                        CAlarger = CAlarger+1;
                    end   
                    v=v+1;
                else
                    f=f+1;
                end
            else
                i=i+1;
                
            end
        end
        i=1;
        f=1;
        while i<=7
            if CA(i,1)==9 && v~=5
                if CA(f,1)==56 && v~=5
                    CAdist(v,1) = sqrt((CA(i,2)-CA(f,2))^2+(CA(i,3)-CA(f,3))^2+(CA(i,4)-CA(f,4))^2);
                    OHRdist(v,1) = sqrt((OHR(i,2)-OHR(f,2))^2+(OHR(i,3)-OHR(f,3))^2+(OHR(i,4)-OHR(f,4))^2);
                    diff(v,1:3) = [(CAdist(v,1)-OHRdist(v,1)),CA(i,1),CA(f,1)];
                    if diff(v,1)<0
                        CAsmaller = CAsmaller+1;
                    else
                        CAlarger = CAlarger+1;
                    end   
                    v=v+1;
                else
                    f=f+1;
                end
            else
                i=i+1;
                
            end
        end
        i=1;
        f=1;
        while i<=7
            if CA(i,1)==9 && v~=6
                if CA(f,1)==99 && v~=6
                    CAdist(v,1) = sqrt((CA(i,2)-CA(f,2))^2+(CA(i,3)-CA(f,3))^2+(CA(i,4)-CA(f,4))^2);
                    OHRdist(v,1) = sqrt((OHR(i,2)-OHR(f,2))^2+(OHR(i,3)-OHR(f,3))^2+(OHR(i,4)-OHR(f,4))^2);
                    diff(v,1:3) = [(CAdist(v,1)-OHRdist(v,1)),CA(i,1),CA(f,1)];
                    if diff(v,1)<0
                        CAsmaller = CAsmaller+1;
                    else
                        CAlarger = CAlarger+1;
                    end   
                    v=v+1;
                else
                    f=f+1;
                end
            else
                i=i+1;
                
            end
        end
        
        
        
        
        
        
        
        
        
        
        i=1;
        %if CAsmaller == (5 || 4 || 3 || 2 || 1 || 0)
            
            while i<=5
                
                fprintf(fid, str);
                fprintf(fid,'ALL C-alpha distances are smaller than spin label distance for residues %3i and %3i with a CA distance of %3f and an OHR distance of %3f and a difference of %3f \n\n', diff(i,2), diff(i,3), CAdist(i,1), OHRdist(i,1), diff(i,1));
                
                i=i+1;
            end
            CAdistT(cnt,1:5)= CAdist';
            OHRdistT(cnt,1:5)= OHRdist';
            DiffFive(cnt,1:5)=OHRdistT(cnt,1:5)-CAdistT(cnt,1:5);
            fivestr(cnt,1)=load_txt;
            cnt=cnt+1;
            copyfile(str,'C:/Documents and Settings\Pradeep\Desktop\toppar\new\smallFC\Energies\','f')
            fprintf(fid7, '\n load ');
            fprintf(fid7, str); 
            fprintf(fid,'---------------------------------------------------------------\n')
            %else
            %end
        
        
    else
    end
    
end
fclose(fid)
%fclose(fid2)
%fclose(fid3)
%fclose(fid4)
%fclose(fid5)
%fclose(fid6)
fclose(fid7)
%Z(f,4)=zeros;
%while i<sum1
%    if A(i,1)-2=resnum(l,1)||A(i,1)-1=resnum(l,1)||A(i,1)+2=resnum(l,1)||A(i,1)+1=resnum(l,1)
%      Z(