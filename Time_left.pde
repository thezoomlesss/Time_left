/* A program that displays how much time is left until a certain date  */

void setup()
{
  fullScreen();
  background(0);
}

int day, month, year;
int h, m, s;
int m_day=16, m_month=12, m_year=2016;

int d_left, m_left, y_left;
int hours_left, minutes_left, seconds_left;  

void draw()
{
  background(0);
  get_time();
  get_date();
  textSize(45);
  text("How many days until Hamouda arrives?", width*0.22, height*0.28);
  calculate_time_left();
  
  textSize(35);
  text("Days:"+d_left+"   Months:"+m_left+"   Years:"+y_left, width*0.28, height*0.5);
  text("Hours:"+hours_left+"   Minutes:"+minutes_left+"   Seconds:"+ seconds_left, width*0.28, height * 0.6);
}
 
void calculate_time_left()
{
  m_left=m_month-month-1;
  if(m_left<0)
  {
    m_left=12+m_left;
    y_left= m_year-year;
  }
  if(day<=m_day)
  {
    d_left=30-(m_day-day)-1;
    println(d_left);
    if(d_left>=30)
    {
      d_left=d_left-31;
      m_left+=1;
    }
  }
  else
  {
    d_left=29-(day-m_day);
  }
  
  
  hours_left=23- h;
  minutes_left=59-m;
  seconds_left=59-s;

}

void get_time()
{
  h=hour();
  m=minute();
  s=second();
}

void get_date()
{
  day=day();
  month=month();
  year=year();
}