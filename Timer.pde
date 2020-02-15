class Timer
{
  
  int saved_time;
  int total_time;
  
  Timer(int temp_time)
  {
    total_time = temp_time;
  }
  
  void start()
  {
    saved_time = millis();
  }
  
  boolean isFinished()
  {
    int passed_time = millis() - saved_time;
    
    if(passed_time > total_time)
    {
      return true;
    } 
    else
    {
      return false;
    }
  }
  
}
