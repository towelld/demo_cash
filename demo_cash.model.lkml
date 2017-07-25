connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: bcbs248 {}

explore: bcbshours {}

explore: bcbsliquidity {}

explore: exception_record_link {}

explore: exceptions {
  join: exception_record_link {
    type: inner
    sql_on: ${exception_record_link.exception_pk} = ${exceptions.pk} ;;
    relationship: many_to_one
  }
  join: records {
    type: inner
    sql_on: ${records.pk} = ${exception_record_link.record_pk} ;;
    relationship: one_to_many
  }
}

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

explore: records {
  persist_for: "5 minutes"
}

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

explore: cash_proof_ca {
  persist_for: "1 minutes"
}
explore: v_cash_proof_ageing_ca {
  persist_for: "1 minutes"
}
