swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), set_etalis_flag(out_of_order,on), compile_event_file('test_01.event'), event(b(1),[2,2]), event(a(1),[1,1]), findall(stored_event(event(d(X),T)),stored_event(event(d(X),T)),List), ( List=[stored_event(event(d(1),[1,2]))] -> write(FH,'out_of_order_01\t\t\tpassed\n'),write('out_of_order_01\t\t\tpassed\n') ; write(FH,'out_of_order_01\t\t\tfailed\n'),write('out_of_order_01\t\t\tfailed\n') ),halt."
