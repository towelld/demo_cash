- dashboard: cash_summary
  title: Cash Summary
  layout: tile
  tile_size: 100
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:

  elements:
    - name: current_balance
      title: Current Balance
      type: looker_column
      model: democash
      explore: records
      dimensions: [records.currency, records.post_date_date]
      pivots: [records.currency]
      fill_fields: [records.post_date_date]
      measures: [records.sum_amount]
      filters:
        records.open_date: 2016/01/29
        records.currency: ''
      sorts: [records.currency, records.post_date_date desc]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: false
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_colors:
        EUR - Records Sum Amount: "#fa8d29"
        USD - Records Sum Amount: "#646569"

    - name: running_balance
      title: Running Balance
      type: looker_area
      model: democash
      explore: v_running_balance
      dimensions: [v_running_balance.currency, v_running_balance.time]
      pivots: [v_running_balance.currency]
      measures: [v_running_balance.sum_net]
      filters:
        v_running_balance.post_date: 29/01/2016
      sorts: [v_running_balance.currency 0, v_running_balance.time]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
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
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: none
      interpolation: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        EUR - V Running Balance Sum Net: "#fa8d29"
        USD - V Running Balance Sum Net: "#646569"

    - name: match_rate
      title: Match Rate
      type: looker_bar
      model: democash
      explore: records
      dimensions: [records.system, records.active_status]
      pivots: [records.active_status]
      measures: [records.count]
      sorts: [records.count desc 0, records.system, records.active_status]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: percent
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
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
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        Matched - Records Count: "#646569"
        Unmatched - Records Count: "#fa8d29"

    - name: matched_percentage
      title: Match Percentage
      type: looker_bar
      model: democash
      explore: records
      dimensions: [records.system, records.active_status]
      pivots: [records.active_status]
      measures: [records.count]
      sorts: [records.count desc 0, records.system, records.active_status]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: percent
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
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
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        Matched - Records Count: "#646569"
        Unmatched - Records Count: "#fa8d29"

    - name: outstanding
      title: Outstanding
      type: table
      model: democash
      explore: records
      dimensions: [records.account_no, records.system, records.currency, records.original_amount,
        records.sign, records.post_date_date, records.value_date, records.our_reference,
        records.reference1, records.reference2, records.reference3, records.transaction_code]
      filters:
        records.active_status: Unmatched
      sorts: [records.post_date_date desc]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
