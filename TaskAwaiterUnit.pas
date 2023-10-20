unit TaskAwaiterUnit;
interface
uses MyTaskUnit;
 uses system.Threading;
type
  TaskAwaiter = class
  private
  public
    task: MyTask;
    delay: integer;
    td: Thread;
    function IsCompleted : boolean;
    procedure GetRes;
  end;
implementation
procedure TaskAwaiter.GetRes;
begin
  td.Join;
end;
function TaskAwaiter.IsCompleted: boolean;
begin
   Result:= False;
//  println('IsCompleted');
//   Result:= True;
//      if (td <> nil) then
//      begin
//        Result:= False;
//        exit;
//      end;
//     
//  if (task = nil)then
//    exit;
//
//
//  println(task.code);
//  if (task.code < 0) then
//    Result := False;
end;
end.