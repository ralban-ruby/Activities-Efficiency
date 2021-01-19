view: sales_avg_mql_duration {
  sql_table_name: "MASTERDATA"."SALES_AVG_MQL_DURATION"
    ;;

  dimension: converted_account_id {
    type: string
    sql: ${TABLE}."CONVERTED_ACCOUNT_ID" ;;
  }

  dimension_group: cor {
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
    sql: ${TABLE}."COR_DATE" ;;
  }

  dimension: date_diff {
    type: number
    sql: ${TABLE}."DATE_DIFF" ;;
  }

  dimension_group: mql {
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
    sql: ${TABLE}."MQL_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
