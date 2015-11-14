size(200,200);
int y = 80;
int spacing = 10;
int len = 20;

for (int x = 50; x <= 150; x += spacing) {
  line (x,y,x,y+len);
}