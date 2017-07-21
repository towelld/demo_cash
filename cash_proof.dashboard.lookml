- dashboard: cash_proof
  title: Cash Proof
  layout: static
  width: 1632
  tile_size: 68
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:

  elements:
  - name: ldgr_previous_close_bal_date
    type: single_value
    left: 0
    top: 0
    height: 1
    width: 2
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.ldgr_previous_close_bal_date]
    fill_fields: [v_cash_proof.ldgr_previous_close_bal_date]
    sorts: [v_cash_proof.ldgr_previous_close_bal_date desc]
    show_single_value_title: false
    note:
    text: 'Ours'
    state: expanded
    display: above
