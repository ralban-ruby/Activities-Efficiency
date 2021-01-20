view: sales_avg_onboarding_duration {
  sql_table_name: "MASTERDATA"."SALES_AVG_ONBOARDING_DURATION"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}."CLOSE_DATE" ;;
  }

  dimension: date_diff {
    type: number
    sql: ${TABLE}."DATE_DIFF" ;;
  }

  dimension_group: onboarding_start {
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
    sql: ${TABLE}."ONBOARDING_START_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
