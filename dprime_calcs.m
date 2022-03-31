

S = dir(fullfile('/Users/emmapearson/Downloads/abcd_extract_eprime-master/aux/jsystem','*behavioral*.csv'));
T = [];
for k = 1:numel(S)
%for k = 1:2
    fnm = fullfile('/Users/emmapearson/Downloads/abcd_extract_eprime-master/aux/jsystem/',S(k).name);
    df = readtable(fnm);
    ids = strsplit(fnm,'/');
    namechar = char(ids(8));
    idname = strsplit(namechar,'_');
    df.('SubjID') = idname(2);
    df.('VisitID') = idname(3);
    df.('hits_2back') = (df.('block_2_back_posface_target_run_1_correct') + df.('block_2_back_posface_target_run_2_correct') + df.('block_2_back_negface_target_run_1_correct') + df.('block_2_back_negface_target_run_2_correct') +df.('block_2_back_neutface_target_run_1_correct') + df.('block_2_back_neutface_target_run_2_correct') + df.('block_2_back_place_target_run_1_correct') +df.('block_2_back_place_target_run_2_correct')) / (df.('block_2_back_posface_target_run_1_total') +df.('block_2_back_posface_target_run_2_total') +  df.('block_2_back_negface_target_run_1_total') +df.('block_2_back_negface_target_run_2_total') + df.('block_2_back_neutface_target_run_1_total') +df.('block_2_back_neutface_target_run_2_total') + df.('block_2_back_place_target_run_1_total') +df.('block_2_back_place_target_run_2_total'));
    df.('correct_rejection_2back') = (df.('block_2_back_posface_nonlure_run_1_correct') + df.('block_2_back_posface_nonlure_run_2_correct') +df.('block_2_back_negface_nonlure_run_1_correct') + df.('block_2_back_negface_nonlure_run_2_correct') +df.('block_2_back_neutface_nonlure_run_1_correct') +df.('block_2_back_neutface_nonlure_run_2_correct') + df.('block_2_back_place_nonlure_run_1_correct') +df.('block_2_back_place_nonlure_run_2_correct') + df.('block_2_back_posface_lure_run_1_correct') +df.('block_2_back_posface_lure_run_2_correct') + df.('block_2_back_negface_lure_run_1_correct') +df.('block_2_back_negface_lure_run_2_correct') + df.('block_2_back_neutface_lure_run_1_correct') +df.('block_2_back_neutface_lure_run_2_correct') + df.('block_2_back_place_lure_run_1_correct') +df.('block_2_back_place_lure_run_2_correct')) / (df.('block_2_back_posface_nonlure_run_1_total') +df.('block_2_back_posface_nonlure_run_2_total') +df.('block_2_back_negface_nonlure_run_1_total') +df.('block_2_back_negface_nonlure_run_2_total') +df.('block_2_back_neutface_nonlure_run_1_total') +df.('block_2_back_neutface_nonlure_run_2_total') +df.('block_2_back_place_nonlure_run_1_total') +df.('block_2_back_place_nonlure_run_2_total') +df.('block_2_back_posface_lure_run_1_correct') +df.('block_2_back_posface_lure_run_2_correct') +df.('block_2_back_negface_lure_run_1_correct') +df.('block_2_back_negface_lure_run_2_correct') +df.('block_2_back_neutface_lure_run_1_correct') +df.('block_2_back_neutface_lure_run_2_correct') +df.('block_2_back_place_lure_run_1_correct') +df.('block_2_back_place_lure_run_2_correct'));
    df.('false_alarm_2back') = 1 - df.('correct_rejection_2back');
    df.('hits_0back') = (df.('block_0_back_posface_target_run_1_correct') + df.('block_0_back_posface_target_run_2_correct') + df.('block_0_back_negface_target_run_1_correct') + df.('block_0_back_negface_target_run_2_correct') +df.('block_0_back_neutface_target_run_1_correct') + df.('block_0_back_neutface_target_run_2_correct') + df.('block_0_back_place_target_run_1_correct') +df.('block_0_back_place_target_run_2_correct')) / (df.('block_0_back_posface_target_run_1_total') +df.('block_0_back_posface_target_run_2_total') +  df.('block_0_back_negface_target_run_1_total') +df.('block_0_back_negface_target_run_2_total') + df.('block_0_back_neutface_target_run_1_total') +df.('block_0_back_neutface_target_run_2_total') + df.('block_0_back_place_target_run_1_total') +df.('block_0_back_place_target_run_2_total'));
    df.('correct_rejection_0back') = (df.('block_0_back_posface_nonlure_run_1_correct') + df.('block_0_back_posface_nonlure_run_2_correct') +df.('block_0_back_negface_nonlure_run_1_correct') + df.('block_0_back_negface_nonlure_run_2_correct') +df.('block_0_back_neutface_nonlure_run_1_correct') +df.('block_0_back_neutface_nonlure_run_2_correct') + df.('block_0_back_place_nonlure_run_1_correct') +df.('block_0_back_place_nonlure_run_2_correct') + df.('block_0_back_posface_lure_run_1_correct') +df.('block_0_back_posface_lure_run_2_correct') + df.('block_0_back_negface_lure_run_1_correct') +df.('block_0_back_negface_lure_run_2_correct') + df.('block_0_back_neutface_lure_run_1_correct') +df.('block_0_back_neutface_lure_run_2_correct') + df.('block_0_back_place_lure_run_1_correct') +df.('block_0_back_place_lure_run_2_correct')) / (df.('block_0_back_posface_nonlure_run_1_total') +df.('block_0_back_posface_nonlure_run_2_total') +df.('block_0_back_negface_nonlure_run_1_total') +df.('block_0_back_negface_nonlure_run_2_total') +df.('block_0_back_neutface_nonlure_run_1_total') +df.('block_0_back_neutface_nonlure_run_2_total') +df.('block_0_back_place_nonlure_run_1_total') +df.('block_0_back_place_nonlure_run_2_total') +df.('block_0_back_posface_lure_run_1_correct') +df.('block_0_back_posface_lure_run_2_correct') +df.('block_0_back_negface_lure_run_1_correct') +df.('block_0_back_negface_lure_run_2_correct') +df.('block_0_back_neutface_lure_run_1_correct') +df.('block_0_back_neutface_lure_run_2_correct') +df.('block_0_back_place_lure_run_1_correct') +df.('block_0_back_place_lure_run_2_correct'));
    df.('false_alarm_0back') = 1 - df.('correct_rejection_0back');
    T = [T ; df];   
end


baseline = T( strcmp( 'baseline', T.VisitID ), : );
yr2 = T( strcmp( '2', T.VisitID ), : );

baseline.('dprime_val_2') = norminv(baseline.('hits_2back')) - norminv(baseline.('false_alarm_2back'));
histogram(baseline.('dprime_val_2'));
baseline.('dprime_val_0') = norminv(baseline.('hits_0back')) - norminv(baseline.('false_alarm_0back'));
histogram(baseline.('dprime_val_0'));

yr2.('dprime_val_2') = norminv(yr2.('hits_2back')) - norminv(yr2.('false_alarm_2back'));
yr2.('dprime_val_0') = norminv(yr2.('hits_0back')) - norminv(yr2.('false_alarm_0back'));


writetable(baseline,'21_baseline_dprimes.csv','Delimiter',',')
writetable(yr2,'21_yr2_dprimes.csv','Delimiter',',')

