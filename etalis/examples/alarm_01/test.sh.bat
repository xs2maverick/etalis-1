swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), compile_event_file('test_01.event'), event(a(1)), sleep(2), findall(stored_event(event(b(X),T)),stored_event(event(b(X),T)),List), findall(stored_event(event(c(X2),T2)),stored_event(event(c(X2),T2)),List2), ( ( List=[stored_event(event(b(1),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)]))], List2=[stored_event(event(c(1),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)]))]) -> write(FH,'alarm_01\t\t\tpassed\n'), write('alarm_01\t\t\tpassed\n') ; write(FH,'alarm_01\t\t\tfailed\n'), write('alarm_01\t\t\tfailed\n') ),halt."
