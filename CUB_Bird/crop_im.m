function out_im=crop_im(in_im,x1,x2)
[x1_,x2_,~]=size(in_im);
d_x1=x1_-x1;
d_x2=x2_-x2;

if d_x1==0
    s_x1=0;
else
    s_x1=randi(d_x1);
end

if d_x2==0
    s_x2=0;
else
    s_x2=randi(d_x2);
end

out_im=in_im(s_x1+1:s_x1+x1,s_x2+1:x2+s_x2,:,:,:);


