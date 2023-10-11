uses StateMachineUnit;
uses MyTaskUnit;
uses AsyncTaskMethodBuilderUnit;
uses TaskAwaiterUnit;
type StateMachineNullException = class(System.NullReferenceException) end; 


function MainMethod() : MyTask;
begin
  var st:= new StateMachine();
  st.tbuilder := new AsyncTaskMethodBuilder(); // AsyncTaskMethodBuilder.Create();
  st.state := -1; //<Main>d__.<>1__state = -1;
 //st.tbuilder.Start(var st);

 if (st = nil) then
 begin
  // throw new ArgumentNullException("stateMachine");
  raise new StateMachineNullException('State machine is null');
end;
 //ExecutionContextSwitcher executionContextSwitcher = default(ExecutionContextSwitcher);
 //RuntimeHelpers.PrepareConstrainedRegions();
 try
   //ExecutionContext.EstablishCopyOnWriteScope(ref executionContextSwitcher);
   // moveNext();
   st.MoveNext();
   
  finally
  //executionContextSwitcher.Undo();
  println('Builder.Start() is ended');
  end;
 st.tbuilder.task := new MyTask();
 Result:= st.tbuilder.task;
end;

begin
  var m := MainMethod();
  if (m <> nil) then
  print(m.res)
  else
    print(m);
end.