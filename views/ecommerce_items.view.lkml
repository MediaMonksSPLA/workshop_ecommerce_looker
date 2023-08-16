view: ecommerce_items {
<<<<<<< HEAD
  sql_table_name: `mm-latam-growth-demos.ecommerce_looker_workshop.ecommerce_items` ;;
=======
<<<<<<< HEAD
  sql_table_name: `ecommerce_looker_workshop.ecommerce_items` ;;
=======
  sql_table_name: `mm-latam-growth-demos.ecommerce_looker_workshop.ecommerce_items` ;;
>>>>>>> branch 'master' of https://github.com/MediaMonksSPLA/workshop_ecommerce_looker
>>>>>>> branch 'master' of https://github.com/MediaMonksSPLA/workshop_ecommerce_looker

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }
  dimension: stock {
    type: number
    sql: ${TABLE}.stock ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    type: count
  }
}
