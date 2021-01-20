view: sales_avg_needs_analysis_duration {
  sql_table_name: "MASTERDATA"."SALES_AVG_NEEDS_ANALYSIS_DURATION"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
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

  dimension_group: proposal {
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
    sql: ${TABLE}."PROPOSAL_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
