swipl -g "open('../results.txt',append,FH), ['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), set_etalis_flag(store_fired_events_java,on), compile_event_file('test_01.event'), fire_events_java([a],OutputList), fire_events_java([b],OutputList2), nl, nl, write(OutputList), nl, nl, write(OutputList2), nl, (OutputList2=[_,_] -> write(FH,'java_interface_01\t\tpassed\n'),write('java_interface_01\t\tpassed\n') ; write(FH,'java_interface_01\t\tfailed\n'),write('java_interface_01\t\tfailed\n') ), halt."
