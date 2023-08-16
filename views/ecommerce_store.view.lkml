view: ecommerce_store {
  sql_table_name: `mm-latam-growth-demos.ecommerce_looker_workshop.ecommerce_store` ;;

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }
  dimension: phone {
    type: number
    sql: ${TABLE}.PHONE ;;
  }
  dimension: store_currency {
    type: string
    sql: ${TABLE}.STORE_CURRENCY ;;
  }
  dimension: store_id {
    type: string
    sql: ${TABLE}.STORE_ID ;;
  }
  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }
  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }
  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
