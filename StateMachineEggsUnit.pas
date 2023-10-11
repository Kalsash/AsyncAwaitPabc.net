unit StateMachineEggsUnit;

interface

uses AsyncTaskMethodBuilderUnit;
uses EggsAsyncUnit;
uses TaskAwaiterUnit;

type
  StateMachine = class
  private
  u1 : TaskAwaiter;
  public
    state: integer; // состояние
    tbuilder: AsyncTaskMethodBuilder;
    procedure MoveNext();
  end;

implementation

// реализация методов класса
procedure StateMachine.MoveNext();
begin
  println('MoveNextEggs');
//  var num := state;
//  try
//    var awaiter : TaskAwaiter;
//    if (num <> 0) then
//    begin
//      var eggsTask:= EggsMethod(2);
//      println('Coffee is ready');
//       awaiter := new TaskAwaiter(eggsTask);
//      if (awaiter.IsCompleted = False) then 
//      begin
//        num := 0;
//        state:=0;
//        u1:= awaiter;
//        {
//					<Main>d__0 <Main>d__ = this;
//					<>t__builder.AwaitUnsafeOnCompleted(ref awaiter, ref <Main>d__);
//				}
//				exit;
//      end;
//
//    end
//    else
//    begin
//      println('ELSE');
//      awaiter := u1;
//      //u1:= default(new TaskAwaiter(eggsTask));
//      {
//				<>u__1 = default(TaskAwaiter<Egg>);
//			}
//			num := -1;
//			state:= -1;
//    end;
//    {
//    <>s__5 = awaiter.GetResult();
//			<eggs>5__4 = <>s__5;
//			<>s__5 = null;
//    }
//    println('Eggs are ready');
//    println('Breakfast is ready!');
//  except
//    writeln('MoveNextException');
//  end;
//  //<>t__builder.SetResult();
//  println('State Machine ended');
end;

end.