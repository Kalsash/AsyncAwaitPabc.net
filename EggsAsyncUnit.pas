unit EggsAsyncUnit;
interface
//uses StateMachineUnit;
uses MyTaskUnit;
uses AsyncTaskMethodBuilderUnit;
type StateMachineNullException = class(System.NullReferenceException) end; 
function EggsMethod(howMany: integer) : MyTask;
implementation
function EggsMethod(howMany: integer) : MyTask;
begin
  println('Warming the egg pan...');
  println('Cracking ', howMany, 'eggs');
  println('cooking the eggs ...');
  var t:= new MyTask();
  t.code := -1;
  Result:=t; 
end;

end.