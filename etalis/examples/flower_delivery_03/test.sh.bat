swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), compile_event_file('../flower_delivery/flower_specification.event'), load_static_rules('../flower_delivery/flower_specification_static_rules.P'), load_database('flower_stream_test_03.db'), execute_event_stream_file('flower_stream_test_03.stream'), findall(stored_event(event(ranking_decrease(driverF,2),T)), stored_event(event(ranking_decrease(driverF,2),T)),List), ( List = [stored_event(event(ranking_decrease(driverF,2),[datime(_,_,_,_,_,_,_),datime(_,_,_,_,_,_,_)]))] -> write(FH,'flower_delivery_03\t\tpassed\n'),write('flower_delivery_03\t\tpassed\n') ; write(FH,'flower_delivery_03\t\tfailed\n'),write('flower_delivery_03\t\tfailed\n') ),halt."
