unit AsyncTaskMethodBuilderUnit;
 interface
 uses MyTaskUnit;
//uses StateMachineUnit;
 type
  AsyncTaskMethodBuilder = class
  private
  public
    task: MyTask;
    procedure Start;
  end;
implementation
//procedure AsyncTaskMethodBuilder.Start(var st: StateMachine);
//begin
//  print('AsyncTaskMethodBuilder.Start');
//end;
procedure AsyncTaskMethodBuilder.Start();
begin
  println('AsyncTaskMethodBuilder.Start');
end;
end.