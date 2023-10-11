unit TaskAwaiterUnit;
interface
uses MyTaskUnit;
type
  TaskAwaiter = class
  private
    task: MyTask;
  public
  constructor Create(Task: MyTask);
    begin
      task := Task;
    end;

    function IsCompleted : boolean;
  end;
implementation
function TaskAwaiter.IsCompleted: boolean;
begin
  println('IsCompleted');
  println(task.TaskCode);
//  if (task.code = 1) then
//    begin
//  
//      Result := True;
//      exit;
//     end;
  Result:= False;
end;
end.