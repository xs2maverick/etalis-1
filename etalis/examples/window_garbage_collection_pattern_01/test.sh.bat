swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), compile_event_file('test_01.event'), event(a(1)), event(a(2)), event(a(3)), event(a(4)), event(b(1)), event(b(2)), sleep(2), event(b(3)), event(b(4)), findall(stored_event(event(d(X),T)),stored_event(event(d(X),T)),List), ( List=[stored_event(event(d(1),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)])), stored_event(event(d(2),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)]))] -> write(FH,'window_garbage_collection_pattern_02\tpassed\n'),write('window_garbage_collection_pattern_02\tpassed\n') ; write(FH,'window_garbage_collection_pattern_02\tfailed\n'),write('window_garbage_collection_pattern_02\tfailed\n') ), halt."
