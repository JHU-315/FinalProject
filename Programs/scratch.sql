set @query := (
  select concat(
    "Deaths",$Racial_Group
    )
  from jhu_315_final_project.COVID_Deaths_By_Race
;
prepare s1 from @query
;
execute s1
;
deallocate prepare s1
;