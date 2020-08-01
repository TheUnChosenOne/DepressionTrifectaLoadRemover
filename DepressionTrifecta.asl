
state("UDK")
{
    bool addressone: 0x2C8606C;
    bool addresstwo: 0x2C87324;
    bool addressthree: 0x2C604B4;
    bool addressfor: 0x2C603F0;
    bool addressfive: 0x2BBD7F0;
}
state("EtherOne-Win64-Shipping")
{
    bool addresssix: 0x2B380C0;
    bool addressseven: 0x2DAF85C;
}
state("Dream")
{
    bool addresseaght: 0x2A30530;
    bool addressnine: 0x2A504C4;
    bool addressten: 0x28DD300;
    bool addressele: 0x2A504A4;
    bool addresstel: 0x2A6F500;
    bool addressther: 0x2A4F20C;
    bool addressfort: 0x2A4F210;
    bool addressfif: 0x2A50538;
}
state("MontaguesMount")
{
   
}

init
{

}

startup
{
   settings.Add("working", false, "If you see this its working");
}

isLoading
{

    switch (game.ProcessName.ToString())
      {
          case "EtherOne-Win64-Shipping":
            if ( current.addresssix == true || current.addressseven == true )
            {
               return true;
            } 
            else 
            {
               return false;
            }
              break;
          case "UDK":
            if ( current.addressone == true || current.addresstwo == true || current.addressthree == true || current.addressfor == true || current.addressfive == true)
            {
               return true;
            } 
            else 
            {
               return false;
            }
               break;
         case "Dream":
            if ( current.addresseaght == true || current.addressnine == true || current.addressten == false || current.addressele == false || current.addresstel == false || current.addressther == true || current.addressfort == true || current.addressfif == true)
            {
               return true;
            } 
            else 
            {
               return false;
            }
              break;
              case "MontaguesMount":
               return false;
              break;
          default:
               return true;
               break;
      }
      
}
exit{timer.IsGameTimePaused = true;}