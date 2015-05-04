swipl -g "['../../src/etalis.P'], ['dependency.P'], Rules = [eventClause(unlabeled,temp_e_1(a(Var8),b(Var9)),andf(a(Var8),b(Var9))), eventClause(unlabeled,temp_e_2(temp_e_1(a(Var10),b(Var11)),c(Var12)),andf(temp_e_1(a(Var10),b(Var11)),c(Var12))), eventClause(unlabeled,temp_e_3(temp_e_2(temp_e_1(a(Var13),b(Var14)),c(Var15)),rules(1,[Var13,Var14])),checkf(temp_e_2(temp_e_1(a(Var13),b(Var14)),c(Var15)),rules(1,[Var13,Var14]))),eventClause(unlabeled,ce1(Var13,Var14,Var15),temp_e_3(temp_e_2(temp_e_1(a(Var13),b(Var14)),c(Var15)),rules(1,[Var13,Var14]))),eventClause(unlabeled,temp_e_4(ce1(Var16,Var17,Var18),d(Var19)),seqf(ce1(Var16,Var17,Var18),d(Var19))),eventClause(unlabeled,temp_e_5(e(Var20),f(Var18)),cnotf(e(Var20),f(Var18))),eventClause(unlabeled,temp_e_6(temp_e_4(ce1(Var16,Var17,Var18),d(Var19)),temp_e_5(e(Var20),f(Var18))),andf(temp_e_4(ce1(Var16,Var17,Var18),d(Var19)),temp_e_5(e(Var20),f(Var18)))),eventClause(unlabeled,ce2(Var18,Var19,Var20),temp_e_6(temp_e_4(ce1(Var16,Var17,Var18),d(Var19)),temp_e_5(e(Var20),f(Var18))))], nl, nl, dependancy_graph(Rules,Graph), write('Dependancy Graph: '), write(Graph), nl, nl, findall(edge(Parent,Child),parent_direct_child(Parent,Child,Rules),List2), write('Parent and direct child: '), my_write_list(List2), nl, nl, parent_direct_children(ce1(_,_,_),Children,Rules), write('Parent and direct children:'), my_write_list(Children), nl, nl, fixed_point_reachability(Graph,FixedPoint), write('Reachable Graph: '), my_write_list(FixedPoint), nl, nl, create_engines(Rules,Engines), write('Engines: '), my_write_list(Engines), nl, nl, distribute(Graph,Engines,Distribution), write('Distribution for engines: '), my_write_list(Distribution), nl, nl, halt."