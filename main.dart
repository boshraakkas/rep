import 'dart:io';
void main(){

inputElemint i1=inputElemint("text", []);
brElemint b1=brElemint([]);
inputElemint i2=inputElemint("password", []);
divElemint d1=divElemint("blue", 50, 50, "inline_blosck", []);
  bodyElement b=bodyElement("red", [
 i1.creat(),b1.creat(),i2.creat(),d1.creat()

  ]);
  String res=b.creat();
  final f=File('index.html');
  f.writeAsStringSync(res);
}


  abstract class Elemint{
    var childs;
    Elemint(this.childs);
    String creat();
  }


class bodyElement extends Elemint{
  bodyElement(this.bgColor,childs):super(childs);
  var bgColor;
 
@override
  String creat(){

   var ch="";
  for (var i in childs){
  ch+=i;
  }
    return "<html><head></head><body bgColor='$bgColor'> $ch </body></html>";
  }

}
class inputElemint extends Elemint{
inputElemint(this.type,childs):super(childs);
  var type;
  
@override
  String creat(){
  return "<input type='$type' />";
  }

}




class brElemint extends Elemint{
brElemint(childs):super(childs);
 
  
@override
  String creat(){
  return "<br />";
  }

}



class divElemint extends Elemint{
  var color;
 var width;
 var heigh;
 var disply;
divElemint(this.color,this.width,this.heigh,this.disply,childs):super(childs);
 
  
@override
  String creat(){
    var ch="";
    for (var i in childs){
  ch+=i;
  }
  return "<div style='width:${width}px;height:${heigh}px;background-color:$color;display:$disply' >$ch <div />";
  }

}