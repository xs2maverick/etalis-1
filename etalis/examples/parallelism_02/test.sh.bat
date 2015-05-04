swipl -g "['../../src/etalis.P'], set_etalis_flag(output_temporary_files,on), set_etalis_flag(logging_to_file,on), set_etalis_flag(store_fired_events,on), InputFile='test_01.event', open(InputFile,read,InputHandle), repeat_read(InputHandle,RawEventRules), parse_event_rules(RawEventRules,ParsedEventRules), binarization(ParsedEventRules,BinaryEventRules), nl, nl, nl, write('BinaryEventRules: '), write_list(BinaryEventRules), nl, nl, nl, complex_events(BinaryEventRules,ComplexEvents), write('ComplexEvents: '), write_list(ComplexEvents), nl, nl, nl, dependancy_graph(BinaryEventRules,Graph), write('Graph: '), write_list(Graph), nl, nl, nl, dependancy_graph_non_temps(BinaryEventRules,Graph_non_temps), write('Graph_non_temps: '), write_list(Graph_non_temps), nl, nl, nl, fixed_point_reachability(Graph,FixedPoint), write('FixedPoint: '), write_list(FixedPoint), nl, nl, nl, distribute_complex_events_strategy_2(BinaryEventRules,3,EngineDistribution), write('EngineDistribution: '), write_list(EngineDistribution), nl, nl, nl, distribute_complex_events_to_engines(BinaryEventRules,EngineDistribution,Engines), write('Engines: '), write_list(Engines), nl, nl, nl, halt."
