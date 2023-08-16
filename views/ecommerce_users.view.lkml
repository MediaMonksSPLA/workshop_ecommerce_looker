view: ecommerce_users {
<<<<<<< HEAD
  sql_table_name: `ecommerce_looker_workshop.ecommerce_users` ;;
=======
  sql_table_name: `mm-latam-growth-demos.ecommerce_looker_workshop.ecommerce_users` ;;
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
  dimension: ages {
    type: number
    sql: ${TABLE}.ages ;;
  }
  dimension: ccustomer_id {
    type: string
    sql: ${TABLE}.ccustomer_id ;;
  }
  dimension: children {
    type: number
    sql: ${TABLE}.children ;;
  }
  dimension: emails {
    type: string
    sql: ${TABLE}.emails ;;
  }
  dimension: marital_status {
    type: number
    sql: ${TABLE}.marital_status ;;
  }
  dimension: names {
    type: string
    sql: ${TABLE}.names ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  dimension: users_city {
    type: string
    sql: ${TABLE}.users_city ;;
  }
  measure: count {
    type: count
  }
}
