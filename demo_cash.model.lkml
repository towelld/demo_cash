connection: "ctc1611demo"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: bcbs248 {}

explore: bcbshours {}

explore: bcbsliquidity {}

explore: exception_record_link {}

explore: exceptions {}

explore: file_record_link {
  join: files {
    type: left_outer
    sql_on: ${file_record_link.file_id} = ${files.id} ;;
    relationship: many_to_one
  }
}

explore: files {}

explore: group_record_link {}

explore: groups {}

explore: load_jobs {}

explore: match_jobs {}

explore: matches {}

explore: records {}

explore: user_audit {}

explore: v_cash_ageing {}

explore: v_running_balance {
  join: records {
    type: left_outer
    sql_on: ${v_running_balance.currency} = ${records.currency} and  ${v_running_balance.post_date}= ${records.post_date_date};;
    relationship: many_to_one
  }
}
explore: v_bcbs248 {
  join: records {
    type: left_outer
    sql_on: ${v_bcbs248.currency} = ${records.currency} and  ${v_bcbs248.post_date_date}= ${records.post_date_date};;
    relationship: many_to_one
  }
}
