connection: "master_data"

include: "*.view"
explore: sales_ringdna_callduration {}

datagroup: sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sales_default_datagroup
