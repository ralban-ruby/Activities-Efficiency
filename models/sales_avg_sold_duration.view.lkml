view: sales_avg_sold_duration {
  sql_table_name: "MASTERDATA"."SALES_AVG_SOLD_DURATION"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: difference {
    type: number
    sql: ${TABLE}."DIFFERENCE" ;;
  }

  dimension_group: oboarding_start {
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
    sql: ${TABLE}."OBOARDING_START" ;;
  }

  dimension_group: sold {
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
    sql: ${TABLE}."SOLD_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
