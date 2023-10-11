 unit MyTaskUnit;
 interface
 type
  MyTask = class
  private
  public
    res: integer;// результат работы
    code: integer; // код завершения работы
    property TaskCode: integer read code;
  end;

implementation

// реализация методов класса

end.