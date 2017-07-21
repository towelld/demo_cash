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
  - name: lbl_ours
    left: 4
    top: 0
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.lbl_ours]
    show_single_value_title: false

  - name: lbl_bank
    left: 8
    top: 0
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.lbl_bank]
    show_single_value_title: false

  - name: lbl_net
    left: 12
    top: 0
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.lbl_net]
    show_single_value_title: false

  - name: lbl_previous_close_date
    left: 0
    top: 1
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.lbl_previous_close_date]
    show_single_value_title: false

  - name: ldgr_previous_close_bal_date
    left: 4
    top: 1
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.ldgr_previous_close_bal_date_date]
    show_single_value_title: false

  - name: stmt_previous_close_bal_date
    left: 8
    top: 1
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.stmt_previous_close_bal_date_date]
    show_single_value_title: false

  - name: lbl_previous_close_balance
    left: 0
    top: 2
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.lbl_previous_close_balance]
    show_single_value_title: false

  - name: ldgr_previous_close_bal
    left: 4
    top: 2
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.ldgr_previous_close_bal]
    show_single_value_title: false

  - name: stmt_previous_close_bal
    left: 8
    top: 2
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.stmt_previous_close_bal]
    show_single_value_title: false

  - name: lbl_open_balance
    left: 0
    top: 3
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.lbl_open_balance]
    show_single_value_title: false

  - name: ldgr_current_open_bal
    left: 4
    top: 3
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.ldgr_current_open_bal]
    show_single_value_title: false

  - name: stmt_current_open_bal
    left: 8
    top: 3
    height: 1
    width: 4
    type: single_value
    model: demo_cash
    explore: v_cash_proof
    dimensions: [v_cash_proof.stmt_current_open_bal]
    show_single_value_title: false
