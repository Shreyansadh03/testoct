graphics_toolkit("gnuplot");
pkg load video;
%x=0:1:100;

pic=figure;

movie=avifile("normal3.avi","fps",6);


for x=1:1:50
  y=(exp(-0.05.*x))*cos(x);
  hold on;
  pic=plot(x,y,'-b','linewidth',5);
  axis([0 50 -1.2 1.2]);
  saveas(pic,'img3','jpg');
  v1=imread('img3','jpg');
  v2=im2double(v1);
  addframe(movie,v2);
end
