- dashboard: cash_control_summary
  title: Cash Control Summary
  layout: static
  width: 1620
  tile_size: 90
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: feature_description
    type: field_filter
    model: demo_cash
    explore: load_jobs
    field: load_jobs.file_name

  elements:
    - name: files_loaded_chart
      title: Files Loaded
      left: 0
      top: 0
      height: 4
      width: 6
      type: looker_bar
      model: demo_cash
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
      left: 1
      top: 4
      height: 2
      width: 4
      type: table
      model: demo_cash
      explore: load_jobs
      dimensions: [load_jobs.file_name, load_jobs.number_of_loaded_records, load_jobs.number_of_discarded_records,
        load_jobs.load_duration]
      sorts: [load_jobs.file_name]
      limit: '500'
      column_limit: '50'
      total: true
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
      left: 6
      top: 0
      height: 4
      width: 6
      type: looker_area
      model: demo_cash
      explore: groups
      dimensions: [groups.date_time_stamp_time]
      measures: [groups.count]
      filters:
        groups.match_status: '2'
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

    - name: match_rate_detail
      title: Detail
      left: 7
      top: 4
      height: 2
      width: 4
      type: table
      model: demo_cash
      explore: match_jobs
      dimensions: [match_jobs.start_date_time_stamp_time, match_jobs.duration_secs, match_jobs.number_of_matched_records,
        match_jobs.number_of_suggested_records]
      sorts: [match_jobs.start_date_time_stamp_time desc]
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
      series_labels:
        match_jobs.date_time_stamp_time: Started
        match_jobs.duration_secs: Duration
        match_jobs.number_of_matched_groups: Matched
        match_jobs.number_of_suggested_groups: Suggested
        match_jobs.number_of_matched_records: Matched
        match_jobs.number_of_suggested_records: Suggested

    - name: matched_percentage_chart
      title: Matched Percentage
      left: 12
      top: 0
      height: 4
      width: 6
      type: looker_bar
      model: demo_cash
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

    - name: matched_percentage_detail
      title: Detail
      left: 13
      top: 4
      height: 2
      width: 4
      type: table
      model: demo_cash
      explore: records
      dimensions: [records.system]
      measures: [records.count_matched, records.count]
      dynamic_fields:
      - table_calculation: calculation_1
        label: Calculation 1
        expression: "${records.count_matched}/${records.count}"
        value_format:
        value_format_name: percent_2
      sorts: [records.system desc]
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        records.system: System
        records.count_matched: Matched
        records.count: Total
        calculation_1: Rate


    - name: records_matched_chart
      title: Records Matched
      left: 18
      top: 0
      height: 4
      width: 6
      type: looker_pie
      model: demo_cash
      explore: records
      dimensions: [records.active_status]
      measures: [records.count]
      sorts: [records.count desc]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
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
        Matched: "#646569"
        Unmatched: "#fa8d29"

    - name: records_matched_detail
      title: Detail
      left: 19
      top: 4
      height: 2
      width: 4
      type: table
      model: demo_cash
      explore: records
      measures: [records.count, records.count_matched]
      dynamic_fields:
      - table_calculation: calculation_2
        label: Calculation 2
        expression: "${records.count}-${records.count_matched}"
        value_format:
        value_format_name:
      - table_calculation: calculation_1
        label: Calculation 1
        expression: "${records.count_matched}/${records.count}"
        value_format:
        value_format_name: percent_2
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        records.count: Loaded
        records.count_matched: Matched
        calculation_2: Unmatched
        calculation_1: Rate


    - name: records_loaded_chart
      title: Records Loaded
      left: 0
      top: 6
      height: 4
      width: 6
      type: looker_bar
      model: demo_cash
      explore: records
      dimensions: [records.system]
      pivots: [records.system]
      measures: [records.count]
      sorts: [records.count desc 0, records.system]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: true
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
      series_types: {}
      hide_legend: false
      series_colors:
        bank - Records Count: "#fa8d29"
        our - Records Count: "#646569"

    - name: records_loaded_detail
      title: Detail
      left: 1
      top: 10
      height: 4
      width: 4
      type: table
      model: demo_cash
      explore: records
      dimensions: [records.system]
      measures: [records.count]
      sorts: [records.count desc]
      limit: '500'
      column_limit: '50'
      total: true
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        records.count: Count



    - name: user_actions_chart
      title: User Actions
      left: 6
      top: 6
      height: 4
      width: 6
      type: looker_column
      model: demo_cash
      explore: user_audit
      dimensions: [user_audit.action]
      pivots: [user_audit.action]
      measures: [user_audit.count]
      sorts: [user_audit.count desc 0, user_audit.action]
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
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      colors: ["#fa8d29", "#646569", "#5e8ab4", "#0c9e9e", "#edc559", "#b34c59", "#76a2be"]
      series_colors: {}
      y_axis_value_format: '0'

    - name: user_actions_detail
      title: Detail
      left: 7
      top: 10
      width: 4
      type: table
      model: demo_cash
      explore: user_audit
      dimensions: [user_audit.action]
      measures: [user_audit.count]
      sorts: [user_audit.action]
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        user_audit.count: Count


    - name: assignments_chart
      title: Assignments
      left: 12
      top: 6
      height: 4
      width: 6
      type: looker_column
      model: demo_cash
      explore: records
      dimensions: [records.assigned_to]
      pivots: [records.assigned_to]
      measures: [records.count]
      filters:
        records.active_status: Unmatched
      sorts: [records.count desc 0, records.assigned_to]
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      colors: ["#fa8d29", "#646569", "#5e8ab4", "#0c9e9e", "#edc559", "#b34c59", "#76a2be"]
      series_colors: {}
      y_axis_value_format: '0'

    - name: assignments_detail
      title: Detail
      left: 13
      top: 10
      width: 4
      type: table
      model: demo_cash
      explore: records
      dimensions: [records.assigned_to]
      measures: [records.count]
      filters:
        records.active_status: Unmatched
      sorts: [records.assigned_to]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      show_view_names: true
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        records.assigned_to: User


    - name: exceptions_chart
      title: Exceptions
      left: 18
      top: 6
      height: 4
      width: 6
      type: looker_pie
      model: demo_cash
      explore: exceptions
      dimensions: [exceptions.name]
      measures: [exceptions.count]
      sorts: [exceptions.count desc]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      colors: ["#fa8d29", "#646569", "#5e8ab4", "#0c9e9e", "#edc559", "#b34c59", "#76a2be"]
      series_colors: {}

    - name: exceptions_detail
      title: Detail
      left: 19
      top: 10
      width: 4
      type: table
      model: demo_cash
      explore: exceptions
      dimensions: [exceptions.name]
      measures: [exceptions.count]
      sorts: [exceptions.name]
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
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        exceptions.count: Count
