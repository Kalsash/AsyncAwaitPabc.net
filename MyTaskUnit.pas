 unit MyTaskUnit;
 interface
 uses system.Threading;
 type
  MyTask = class
  private
  public
    res: integer;// результат работы
    code: integer; // код завершения работы
    static td : Thread;
    static function Delay(t:integer) :Thread;
    property TaskCode: integer read code;
  end;

implementation
procedure Sleep(t: integer);
begin
  Thread.sleep(t);
  println('Sleep is ended!');
end;
static function  MyTask.Delay(t: integer): Thread;
begin
  var thread := new Thread(procedure() -> Sleep(t));
  thread.Start;
//  var f := thread.Join(0);
//  println(f);
  Result:= thread;
  
  
end;

end.