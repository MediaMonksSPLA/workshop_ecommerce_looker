view: ecommerce_sales {
<<<<<<< HEAD
  sql_table_name: `ecommerce_looker_workshop.ecommerce_sales` ;;
=======
  sql_table_name: `mm-latam-growth-demos.ecommerce_looker_workshop.ecommerce_sales` ;;
>>>>>>> branch 'master' of https://github.com/MediaMonksSPLA/workshop_ecommerce_looker

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
  dimension: ccustomer_id {
    type: string
    sql: ${TABLE}.ccustomer_id ;;
  }
  dimension: cost {
    type: string
    sql: ${TABLE}.cost ;;
  }
  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }
  dimension: items {
    type: number
    sql: ${TABLE}.items ;;
  }
  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }
  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }
  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }
  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }
  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
