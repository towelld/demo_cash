- dashboard: cash_control_summary
  title: Cash Control Summary
  layout: static
  width: 2000
  tile_size: 100
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:

  elements:
    - name: files_loaded_chart
      title: Files Loaded
      left: 0
      top: 0
      height: 4
      width: 5
      type: looker_bar
      model: democash
      explore: files
      dimensions: [files.file_name]
      pivots: [files.file_name]
      measures: [files.sum_records_loaded]
      sorts: [files.sum_records_loaded desc 0, files.file_name]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: true
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
      series_types: {}
      series_colors:
        bank.txt - Files Sum Records Loaded: "#5e8ab4"
        our.txt - Files Sum Records Loaded: "#646569"

    - name: files_loaded_detail
      title: Detail
      left: 0
      top: 4
      height: 2
      width: 5
      type: table
      model: democash
      explore: load_jobs
      dimensions: [load_jobs.file_name, load_jobs.number_of_loaded_records, load_jobs.number_of_discarded_records,
        load_jobs.load_duration]
      sorts: [load_jobs.file_name]
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

    - name: match_rate_chart
      title: Match Rate
      left: 5
      top: 0
      height: 6
      width: 5
      type: looker_area
      model: democash
      explore: groups
      dimensions: [groups.date_time_stamp_time]
      measures: [groups.count]
      sorts: [groups.date_time_stamp_time]
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
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: none
      interpolation: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_colors:
        groups.count: "#5e8ab4"
      x_axis_datetime_label: "%H:%M:%S"
