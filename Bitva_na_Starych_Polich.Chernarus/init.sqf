enableEnvironment false;
titlecut ["","BLACK IN",999999999999999];
//titleText [localize "STR_CELO_MissionName","PLAIN DOWN"];
diary = player createDiaryRecord [ "Diary", [localize "STR_CELO_DiaryName",  localize "STR_CELO_DiaryDescription"]];
obj1  = player createSimpleTask [localize "STR_CELO_Task1Name"];
obj1 setSimpleTaskDescription [localize "STR_CELO_Task1Descr1_0",localize "STR_CELO_Task1Descr1_1",localize "STR_CELO_Task1Descr1_2"];
obj1 setSimpletaskDestination (getMarkerPos "target");
obj1 setTaskState "CREATED";

player setIdentity "AlesStr";

0 fademusic 0;
0 fadesound 0;

_test = [] spawn {
 
  "colorCorrections" ppEffectAdjust [1, 1, -0.0045, [0.0, 0.0, 0.0, 0.0], [1, 0.6, 0.4, 0.4],  [0.199, 0.587, 0.114, 0.0]]; 
  "colorCorrections" ppEffectCommit 0;  
  "colorCorrections" ppEffectEnable true;
  
  sleep 3;

  titlecut ["","BLACK IN",3];
 
  5 fadesound 1;
  5 fademusic 1;  
   
  "dynamicBlur" ppEffectEnable true;   
  "dynamicBlur" ppEffectAdjust [6];   
  "dynamicBlur" ppEffectCommit 0;     
  "dynamicBlur" ppEffectAdjust [0.0];  
  "dynamicBlur" ppEffectCommit 4;

}
