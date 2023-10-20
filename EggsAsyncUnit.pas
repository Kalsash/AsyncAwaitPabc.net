unit EggsAsyncUnit;
interface
uses StateMachineEggsUnit;
uses MyTaskUnit;
uses AsyncTaskMethodBuilderUnit;
uses RunnerUnit;
type StateMachineNullException = class(System.NullReferenceException) end; 
function EggsMethod(howMany: integer) : MyTask;
implementation
function EggsMethod(howMany: integer) : MyTask;
begin
  var st:= new StateMachineEggs();
  Runner.stegg := st;
  st.tbuilder := new AsyncTaskMethodBuilder(); // AsyncTaskMethodBuilder.Create();
  st.state := -1; //<Main>d__.<>1__state = -1;
  st.howmany:= howMany;
 //st.tbuilder.Start(var st);
 println('Eggs Builder start');
 if (st = nil) then
 begin
  // throw new ArgumentNullException("stateMachine");
  raise new StateMachineNullException('State machineEggs is null');
end;
 //ExecutionContextSwitcher executionContextSwitcher = default(ExecutionContextSwitcher);
 //RuntimeHelpers.PrepareConstrainedRegions();
 try
   //ExecutionContext.EstablishCopyOnWriteScope(ref executionContextSwitcher);
   // moveNext();
   st.MoveNext();
   
  finally
  //executionContextSwitcher.Undo();
  println('EggsTask is ended');
  end;
 st.tbuilder.task := new MyTask();
 Result:= st.tbuilder.task;
//  var t:= new MyTask();
//  t.code := -1;
//  Result:=t; 
end;

end.