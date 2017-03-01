view: sign_off_pit {
  sql_table_name: DemoCash.SignOffPIT ;;

  dimension_group: execution_date {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ExecutionDateTime ;;
  }

  dimension: linked_pk {
    type: string
    sql: ${TABLE}.LinkedPk ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: output_file_name {
    type: string
    sql: ${TABLE}.OutputFileName ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.RecName ;;
  }

  dimension: report {
    type: string
    sql: ${TABLE}.Report ;;
  }

  dimension: report_format {
    type: string
    sql: ${TABLE}.ReportFormat ;;
  }

  dimension: report_name {
    type: string
    sql: ${TABLE}.ReportName ;;
  }

  dimension: report_size {
    type: number
    sql: ${TABLE}.ReportSize ;;
  }

  dimension: schema_rec {
    type: string
    sql: ${TABLE}.SchemaRec ;;
  }

  dimension: schema_tenant {
    type: string
    sql: ${TABLE}.SchemaTenant ;;
  }

  measure: count {
    type: count
    drill_fields: [name, report_name, output_file_name, rec_name]
  }
}
