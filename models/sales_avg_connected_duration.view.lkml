view: sales_avg_connected_duration {
  sql_table_name: "MASTERDATA"."SALES_AVG_CONNECTED_DURATION"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension_group: connected {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CONNECTED_DATE" ;;
  }

  dimension: date_diff {
    type: number
    sql: ${TABLE}."DATE_DIFF" ;;
  }

  dimension_group: needs_analysis {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."NEEDS_ANALYSIS_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
