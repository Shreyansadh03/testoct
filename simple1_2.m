graphics_toolkit("gnuplot");
pkg load video;
%x=0:1:100;

pic=figure;



for x=1:200
  y=(exp(-0.05.*x)).*cos(x);
  pic=plot(x,y);
  axis([0 200 -1 1]);
  movie=avifile('normal.avi');
  
  saveas(pic,'img','jpg');
  v1=imread('img','jpg');
  v2=im2double(v1);
  
  addframe=(avi,v2);
end
