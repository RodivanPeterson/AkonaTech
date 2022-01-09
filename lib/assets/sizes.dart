const double ICONSIZE = 40.0;
const double FONTSIZE = 14.0;

class FontSize{
  tamanhoFonte(larguratela){
    if(larguratela < 320.0){
      return 14.0;
    } else {
      if(larguratela < 480.0){
        return 18.0;
      } else {
        if(larguratela < 768.0){
          return 22.0;
        } else {
          if(larguratela < 1024.0){
            return 25.0;
          } else {
            if(larguratela < 1200.0){
              return 27.0;
            } else {
              return 30.0;
            }
          }
        }
      }
    }
  }
}

class IconSize {

  tamanhodoicone(larguratela){
    if(larguratela < 320.0){
      return 30.0;
    } else {
      if(larguratela < 480.0){
        return 35.0;
      } else {
        if(larguratela < 768.0){
          return 40.0;
        } else {
          if(larguratela < 1024.0){
            return 45.0;
          } else {
            if(larguratela < 1200.0){
              return 50.0;
            } else {
              return 55.0;
            }
          }
        }
      }
    }
  }
}