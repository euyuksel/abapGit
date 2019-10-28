*&---------------------------------------------------------------------*
*& Report ZEMIY_REPORT01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEMIY_REPORT01.


TRY.
    cl_salv_gui_table_ida=>create(
       iv_table_name = 'TCURR' )->fullscreen( )->display( ).
  CATCH cx_salv_db_connection
        cx_salv_db_table_not_supported
        cx_salv_ida_contract_violation
        cx_root
    INTO DATA(lo_exc).
    MESSAGE lo_exc TYPE 'I'.
ENDTRY.
