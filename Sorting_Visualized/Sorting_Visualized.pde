int l=300;
int a[]=new int[l];
int min_index=0;
void setup()
{
  size(640,360);
  for(int i=0;i<l;i++)
  {
    a[i]=(int)random(30,300);
    //a[i]=i;
  }
  frameRate(15);
}

int cnt=0;

void draw()
{
  background(0,255,255);
  Sort();
  display();
}

void Sort()
{
  min_index=cnt; //<>//
  for(int j=cnt+1;j<l;j++)
  {
    if(a[j]<a[min_index])
    min_index=j;
  }
  int temp=a[min_index];
  a[min_index]=a[cnt];
  a[cnt]=temp;
  
  cnt++;
}

void display()
{
  float x=20;
  for(int i=0;i<l;i++)
  {
    if(i!=0&&i!=cnt)
    fill(0);
    else if(i==cnt)
    fill(255,0,0);
    else if(i==min_index)
    fill(0,255,0);
    rect(x,(360-a[i]),2,a[i]);
    x+=2;
  }
}



/*
for(int i=0;i<n;i++)
{
  int min_index=i;
  for(int j=i+1;j<n;j++)
  {
    if(a[j]<a[min_index])
    min_index=j;
  }
  int temp=a[min_index];
  a[min_index]=a[i];
  a[i]=temp;
}
*/
