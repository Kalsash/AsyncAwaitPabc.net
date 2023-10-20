 unit RunnerUnit;
 interface 
 uses StateMachineEggsUnit;
  //uses StateMachineUnit;
  type 
  Runner = static class
    private
  public
   static stegg: StateMachineEggs;
    //stm: StateMachine;
    procedure RunEgg;
   // procedure RunSM;
  end;
  implementation
    procedure Runner.RunEgg;
    begin
      stegg.MoveNext;
    end;
//   procedure Runner.RunSM;
//    begin
//      stm.MoveNext;
//    end;
  end.