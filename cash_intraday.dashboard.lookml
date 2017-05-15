- dashboard: cash_intraday
  title: Cash Intraday
  layout: static
  width: 2400
  tile_size: 100
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: currency
    type: field_filter
    model: demo_cash
    explore: records
    field: records.currency

  elements:
  - name: net_cumulative_position
    title: Net Cumulative Position
    left: 0
    top: 0
    height: 4
    width: 24
    type: looker_area
    model: demo_cash
    explore: v_bcbs248
    dimensions: [v_bcbs248.post_date_time]
    measures: [v_bcbs248.sum_net]
    filters:
      v_bcbs248.post_date_date: 2016/01/29
    listen:
      currency: v_bcbs248.currency
    sorts: [v_bcbs248.post_date_time]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_datetime_label: "%H:%M"
    y_axis_unpin: false
    series_colors:
      v_bcbs248.sum_net: "#646569"
