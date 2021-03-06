unit DecConsts;

{$mode objfpc}{$H+}

interface

const
  // team dimension
  MaxOponents=6;
  MaxRobots=6;

  // field dimensions
  FieldWidth=12;
  FieldLength=18;
  FieldOutsideSpace=1;
  GoalDepth=0.5;
  RSpace=0.6;


type
  TPlay = (
    playHalt, playBarrierAtackSide,playBarrierDefenseSide,
    playWaitOtherStart,
    playWaitOurStart, playOurStart,
    playOurFreeKick, playOurFreeKickAtackSide, playOurFreeKickDefenseSide,
    playWaitOurGoalKick, playOurGoalKick,
    playWaitOurThrowIn, playOurThrowIn,
    playWaitOurCornerKick, playOurCornerKick,
    playDefendPenalty, playWaitToScorePenalty, playScorePenalty,
    playNormal, playSearch,
    playWaitDroppedBall, playDroppedBall,playStartPos,playStopPos,playFormation
    );
    
const
  CPlayString: array[low(TPlay)..High(TPlay)] of string =
    (
    'Halt', 'Barrier on atack side','Barrier on defense side','Wait Other Start',
    'Wait Our Start', 'Our Start',
    'Our Free Kick', 'Our Free Kick on atack side', 'Our Free Kick on defense side',
    'Wait Our GoalKick', 'Our Goal Kick',
    'Wait Our Throw In', 'Our Throw In',
    'Wait Our Corner Kick', 'Our Corner Kick',
    'Defend Penalty', 'Wait To Score Penalty', 'Score Penalty',
    'Normal Play', 'Search Ball',
    'WaitDroppedBall', 'DroppedBall','StartPos','StopPos','Formation'
    );
    
var

  GoalWidth: double;
  // this is actually Area Radius...
  AreaWidth: double;
  // calculated constants
  OurGoalX: double;
  OurAreaX: double;
  TheirGoalX: double;
  MaxFieldX: double;
  MaxFieldY: double;

  rob_num: integer=-1;
  statein:string='não entrou';

  
  // dynamic parameters
  AxialDistance: double;  // distancia entre as rodas
  Kw: double;
  SpeedMax: double=3.0;
  AvgSpeed: double=0.5; // average speed used to calculate ball intersection point
  MaxIntersectTime: double=1.00;

  MaxKickSpeed: double=5.0;
  MaxKickPulse: integer=40;
  MaxChipDist: double=2.00;
  MaxChipKickPulse: integer=27;
  KickAngle: double=52*Pi/180;

  BallSpace: double=0.4;   // TODO : o que e' isto?
  NearBallBonus: double=0.4;

  //manuel
  RobotSpace: double=0.6; // dist between robot centers

  //manuel
  StopDistance: double=3.00;  // Barrier distance
  AvoidMinDistToBall:double=1.00;
  KickBallDist: double= 0.3;  //Dist To Ball to kick

  // defender offsets
  KeeperLine: double=0.5;
  KeeperWidthLine:double=1;

  LastDefenderDistToArea: double=1.0;
  LastDefenderLine: double=3.0;
  OtherDefenderLine: double=2.0;
  // Miguel Armando
  ReceiverDistance:double=2.00;
  OwnBarrierDistance:double=3.00;
  BarrierAngle:double=30;
  angCornerDefence:double=75;
  KepperCloseAreaDistance:double=0.4;
  speedAfterKick:double=0.2;



implementation

end.
