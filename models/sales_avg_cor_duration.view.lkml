view: sales_avg_cor_duration {
  sql_table_name: "MASTERDATA"."SALES_AVG_COR_DURATION"
    ;;

  dimension: converted_account_id {
    type: string
    sql: ${TABLE}."CONVERTED_ACCOUNT_ID" ;;
  }

  dimension_group: cor_accepted {
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
    sql: ${TABLE}."COR_ACCEPTED_DATE" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
