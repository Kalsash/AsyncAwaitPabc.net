unit StateMachineEggsUnit;

interface

uses AsyncTaskMethodBuilderUnit;
uses TaskAwaiterUnit;
uses MyTaskUnit;

type
  StateMachineEggs = class
  private
  u1 : TaskAwaiter;
  public
    state: integer; // состояние
    tbuilder: AsyncTaskMethodBuilder;
    howmany: integer;
    procedure MoveNext();
  end;

implementation

// реализация методов класса
procedure StateMachineEggs.MoveNext();
begin
  println('MoveNextEggs');
  var num := state;
  var res:= 0;
  try
   var awaiter := new TaskAwaiter();
    if (num <> 0) then
    begin
   println('Warming the egg pan...');
  println('Cracking ', howMany, 'eggs');
  println('cooking the eggs ...');
   // awaiter = delay(3000);
   awaiter.td := MyTask.Delay(3000); 
      if (awaiter.IsCompleted = False) then 
      begin
         println('Not Completed Eggs');
        num := 0;
        state:=0;
        u1:= awaiter;
        {
					<Main>d__0 <Main>d__ = this;
					<>t__builder.AwaitUnsafeOnCompleted(ref awaiter, ref <Main>d__);
				}
				exit;
      end;

    end
    else
    begin
      println('ELSE');
      awaiter := u1;
      //u1:= default(new TaskAwaiter(eggsTask));
      {
				<>u__1 = default(TaskAwaiter<Egg>);
			}
			num := -1;
			state:= -1;
    end;
    {
    <>awaiter.GetResult();
			result := new Egg;
    }
    awaiter.GetRes;
    res:= 1;
  except
     state := -2;
    writeln('MoveNextEggsException');
    exit;
  end;
  //<>t__builder.SetResult();
  state := -2;
  println('State Machine ended');
end;

end.