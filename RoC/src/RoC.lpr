program RoC;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms
  { you can add units after this }, Main, lnetvisual, Field, Camera, daisybin,
  Joy, RLan, Utils, Param, Robots, TAChartLazarusPkg, omni3, SdpoSerialLaz,
  Roles, Actions, Tactic, Tasks, obsavoid, LogCompat, WLan, dynmatrix, Debug,
  DecConsts, astarmapimage, Unit_Hardware, Unit_Hardware_Configure_UDP,
  unit_hardware_configure, Unit_FlashBus, Unit_joystick, SdpoJoystickLaz,
  KalmanBall, KalmanBall_Aux, unit_obstacles, Unit_RolesAux, MPC,
  TrajFollow;

//===> unit_localizationAux, unit_Localization, Localization, LocMap, kicker, CoachMain,

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFField, FField);
  Application.CreateForm(TFCamera, FCamera);
  Application.CreateForm(TFJoy, FJoy);
  Application.CreateForm(TFParam, FParam);
  Application.CreateForm(TFOmni3, FOmni3);
  //===>  Application.CreateForm(TFKicker, FKicker);
  //===>  Application.CreateForm(TFLocMap, FLocMap);
  Application.CreateForm(TFormDebug, FormDebug);
  Application.CreateForm(TForm_Hardware, Form_Hardware);
  Application.CreateForm(TForm_Hardware_Configure_UDP,Form_Hardware_Configure_UDP);
  Application.CreateForm(TForm_Hardware_Configure, Form_Hardware_Configure);
  Application.CreateForm(TForm_joystick, Form_joystick);
  //===>  Application.CreateForm(TForm_Localization, Form_Localization);
  Application.CreateForm(TFBall, FBall);
  Application.CreateForm(TForm_Obstacles, Form_Obstacles);
  Application.CreateForm(TForm_Roles, Form_Roles);
  Application.CreateForm(TFormMPC, FormMPC);
  Application.CreateForm(TFTrajFollow, FTrajFollow);

  Application.Run;
end.

