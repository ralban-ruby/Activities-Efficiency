view: sales_avg_new_lead_duration {
  sql_table_name: "MASTERDATA"."SALES_AVG_NEW_LEAD_DURATION"
    ;;

  dimension: converted_account_id {
    type: string
    sql: ${TABLE}."CONVERTED_ACCOUNT_ID" ;;
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

  dimension_group: new_lead {
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
    sql: ${TABLE}."NEW_LEAD_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
