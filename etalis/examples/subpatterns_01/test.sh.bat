swipl -L0 -G0 -O -g "open('../results.txt',append,FH),['../../src/etalis.P'],set_etalis_flag(subPatterns,on),set_etalis_flag(output_temporary_files,on),set_etalis_flag(logging_to_file,on),set_etalis_flag(store_fired_events,on),compile_events('test_01.event'),event(a),event(b0(1)),event(b1(2)),event(a1),event(c1),event(a2),event(c2),(findall(final,fired_event(final1,_),[final1]) -> write(FH,'subpatterns_01\t\t\tpassed\n'); write(FH,'subpatterns_01\t\t\tfailed\n')),halt."
