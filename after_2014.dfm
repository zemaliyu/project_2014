object Form1: TForm1
  Left = 356
  Top = 305
  Caption = 'Form1'
  ClientHeight = 374
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton7: TcxButton
    Left = 296
    Top = 61
    Width = 128
    Height = 25
    Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1099
    TabOrder = 0
    OnClick = cxButton7Click
  end
  object cxButton1: TcxButton
    Left = 296
    Top = 237
    Width = 128
    Height = 25
    Caption = '30 50 1.5%'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'brunsweek_user'
    Password = 'brunsweek_user'
    Server = 'db.cbgroupe.com:1521:cbgroupe'
    Connected = True
    LoginPrompt = False
    Left = 8
    Top = 8
  end
  object OraQuery1: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select distinct to_char(date_pr1,'#39'YYYY'#39') years'
      'from t_prop '
      
        '--where forma_oplat in (select forma_oplat from t_forma_oplat wh' +
        'ere for_sum>0)'
      'order by 1')
    Active = True
    Left = 8
    Top = 56
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 72
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41809.844787847220000000
    ReportOptions.LastChange = 41809.844787847220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 16
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 328
    Top = 16
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 360
    Top = 16
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = OraQuery1
    BCDToCurrency = False
    Left = 40
    Top = 56
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 392
    Top = 16
  end
  object OraQuery2: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select years,years_months,months '
      'from'
      '('
      
        'select distinct to_char(date_pr1,'#39'YYYY'#39') years,to_char(date_pr1,' +
        #39'YYYY.MM'#39') years_months,to_char(date_pr1,'#39'MM'#39') months '
      'from t_prop '
      
        '--where forma_oplat in (select forma_oplat from t_forma_oplat wh' +
        'ere for_sum>0)'
      ')'
      'order by 2')
    MasterSource = OraDataSource1
    MasterFields = 'YEARS'
    DetailFields = 'YEARS'
    Active = True
    Left = 72
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'YEARS'
        ParamType = ptInput
        Value = '1899'
      end>
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = OraQuery2
    BCDToCurrency = False
    Left = 104
    Top = 88
  end
  object OraDataSource2: TOraDataSource
    DataSet = OraQuery2
    Left = 136
    Top = 88
  end
  object OraQuery3: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select years,years_months,months,name_prog,'
      
        'sum(in_sum_bul) in_sum_bul,sum(in_sum_kaz) in_sum_kaz,sum(honora' +
        'r) honorar,sum(out_sum_bul) out_sum_bul,sum(out_sum_kaz) out_sum' +
        '_kaz,'
      
        'sum(in_sum_bul)+sum(in_sum_kaz)-sum(honorar)+sum(out_sum_bul)+su' +
        'm(out_sum_kaz) delta_sum'
      'from'
      '('
      
        'select to_char(date_pr1,'#39'YYYY'#39') years,to_char(date_pr1,'#39'YYYY.MM'#39 +
        ') years_months,to_char(date_pr1,'#39'MM'#39') months,F_NAME_PROG_ID(id_p' +
        'rog,1) name_prog,'
      
        'trunc(sum(pkg_consultant_params.f_fact_sum_pr_by_id_prop(id_prop' +
        '))) in_sum_bul,0 in_sum_kaz ,trunc(sum(f_honorar_id_prop(id_prop' +
        '))) honorar, 0 out_sum_bul,0 out_sum_kaz '
      'from t_prop where '
      
        'forma_oplat in (select forma_oplat from t_forma_oplat where form' +
        'a_oplat in (26,34,33)) -- Bul'
      
        '--forma_oplat in (select forma_oplat from t_forma_oplat where fo' +
        'rma_oplat in (27,30,35)) -- Kaz'
      
        '--and id_my in (select id_my from t_anketa_main where dircode in' +
        '(:v_dircode))'
      
        'and id_my in (select id_my from t_anketa_main where dircode in(s' +
        'elect dircode from t_direct where ru_kz=0))'
      
        'group by to_char(date_pr1,'#39'YYYY'#39'),to_char(date_pr1,'#39'YYYY.MM'#39'),to' +
        '_char(date_pr1,'#39'MM'#39'),F_NAME_PROG_ID(id_prog,1)--,id_prog '
      ''
      'union'
      ''
      
        'select to_char(date_pr1,'#39'YYYY'#39') years,to_char(date_pr1,'#39'YYYY.MM'#39 +
        ') years_months,to_char(date_pr1,'#39'MM'#39') months,F_NAME_PROG_ID(id_p' +
        'rog,1) name_prog,'
      
        '0 in_sum_bul,trunc(sum(pkg_consultant_params.f_fact_sum_pr_by_id' +
        '_prop(id_prop))) in_sum_kaz ,trunc(sum(f_honorar_id_prop(id_prop' +
        '))) honorar, 0 out_sum_bul,0 out_sum_kaz '
      'from t_prop where '
      
        '--forma_oplat in (select forma_oplat from t_forma_oplat where fo' +
        'rma_oplat in (26,34,33)) -- Bul'
      
        'forma_oplat in (select forma_oplat from t_forma_oplat where form' +
        'a_oplat in (27,30,35)) -- Kaz'
      
        '--and id_my in (select id_my from t_anketa_main where dircode in' +
        '(:v_dircode))'
      
        'and id_my in (select id_my from t_anketa_main where dircode in(s' +
        'elect dircode from t_direct where ru_kz=0))'
      
        'group by to_char(date_pr1,'#39'YYYY'#39'),to_char(date_pr1,'#39'YYYY.MM'#39'),to' +
        '_char(date_pr1,'#39'MM'#39'),F_NAME_PROG_ID(id_prog,1)--,id_prog '
      ''
      'union'
      ''
      
        'select to_char(date_out,'#39'YYYY'#39') years,to_char(date_out,'#39'YYYY.MM'#39 +
        ') years_months,to_char(date_out,'#39'MM'#39') months,F_NAME_PROG_ID(f_id' +
        '_prog_by_id_dokum(id_dokum),1) name_prog,--f_id_prog_by_id_dokum' +
        '(id_dokum) id_prog,'
      
        '0 in_sum_bul,0 in_sum_kaz,0 honorar,-trunc(sum(sum_out)) out_sum' +
        '_bul,0 out_sum_kaz'
      'from t_in_out_pe where paid=1 and id_company_to=5 '
      
        '--and id_my in (select id_my from t_anketa_main where dircode in' +
        '(:v_dircode))'
      
        'and id_my in (select id_my from t_anketa_main where dircode in(s' +
        'elect dircode from t_direct where ru_kz=0))'
      'and id_company_from=141 -- '#1080#1079' '#1041#1086#1083#1075#1072#1088#1080#1080
      '--and id_company_from<>141 -- '#1080#1079' '#1050#1072#1079#1072#1093#1089#1090#1072#1085#1072
      'and f_id_prog_by_id_dokum(id_dokum)<>503 -- '#1073#1083#1072#1075#1086#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '
      '--and f_id_prog_by_id_dokum(id_dokum)=504 -- '#1092#1086#1085#1076' '#1079#1072#1097#1080#1090#1099
      
        'group by to_char(date_out,'#39'YYYY'#39'),to_char(date_out,'#39'YYYY.MM'#39'),to' +
        '_char(date_out,'#39'MM'#39'),F_NAME_PROG_ID(f_id_prog_by_id_dokum(id_dok' +
        'um),1)--,f_id_prog_by_id_dokum(id_dokum)'
      ''
      'union'
      ''
      
        'select to_char(date_out,'#39'YYYY'#39') years,to_char(date_out,'#39'YYYY.MM'#39 +
        ') years_months,to_char(date_out,'#39'MM'#39') months,F_NAME_PROG_ID(f_id' +
        '_prog_by_id_dokum(id_dokum),1) name_prog,--f_id_prog_by_id_dokum' +
        '(id_dokum) id_prog,'
      
        '0 in_sum_bul,0 in_sum_kaz,0 honorar,0 out_sum_bul,-trunc(sum(sum' +
        '_out)) out_sum_kaz'
      'from t_in_out_pe where paid=1 and id_company_to=5 '
      
        '--and id_my in (select id_my from t_anketa_main where dircode in' +
        ' (:v_dircode))'
      
        'and id_my in (select id_my from t_anketa_main where dircode in(s' +
        'elect dircode from t_direct where ru_kz=0))'
      '--and id_company_from=141 -- '#1080#1079' '#1041#1086#1083#1075#1072#1088#1080#1080
      'and id_company_from<>141 -- '#1080#1079' '#1050#1072#1079#1072#1093#1089#1090#1072#1085#1072
      'and f_id_prog_by_id_dokum(id_dokum)<>503 -- '#1073#1083#1072#1075#1086#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '
      '--and f_id_prog_by_id_dokum(id_dokum)=504 -- '#1092#1086#1085#1076' '#1079#1072#1097#1080#1090#1099
      
        'group by to_char(date_out,'#39'YYYY'#39'),to_char(date_out,'#39'YYYY.MM'#39'),to' +
        '_char(date_out,'#39'MM'#39'),F_NAME_PROG_ID(f_id_prog_by_id_dokum(id_dok' +
        'um),1)--,f_id_prog_by_id_dokum(id_dokum)'
      ')'
      'where years_months>='#39'2013.11'#39
      'group by years,years_months,months,name_prog'
      'order by 2,3')
    MasterSource = OraDataSource2
    MasterFields = 'YEARS_MONTHS'
    DetailFields = 'YEARS_MONTHS'
    Active = True
    Left = 136
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'YEARS_MONTHS'
        ParamType = ptInput
        Value = '1899.12'
      end>
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = OraQuery3
    BCDToCurrency = False
    Left = 168
    Top = 120
  end
  object OraSession2: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'trust'
    Password = 'trust'
    Server = 'db.cbgroupe.com:1521:cbgroupe'
    Connected = True
    LoginPrompt = False
    Left = 8
    Top = 192
  end
  object OraQuery4: TOraQuery
    Session = OraSession2
    SQL.Strings = (
      'select distinct to_char(date_pr,'#39'YYYY'#39') years'
      'from t_product_sub_prop '
      'where date_pr>=to_date('#39'01.11.2013'#39','#39'DD.MM.YYYY'#39')'
      'order by 1')
    Active = True
    Left = 8
    Top = 232
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    DataSet = OraQuery4
    BCDToCurrency = False
    Left = 40
    Top = 232
  end
  object OraDataSource3: TOraDataSource
    DataSet = OraQuery4
    Left = 72
    Top = 232
  end
  object OraQuery5: TOraQuery
    Session = OraSession2
    SQL.Strings = (
      'select years,years_months,months '
      'from'
      '('
      
        'select distinct to_char(date_pr,'#39'YYYY'#39') years,to_char(date_pr,'#39'Y' +
        'YYY.MM'#39') years_months,to_char(date_pr,'#39'MM'#39') months '
      'from t_product_sub_prop'
      'where date_pr>=to_date('#39'01.11.2013'#39','#39'DD.MM.YYYY'#39')'
      ')'
      'order by 2')
    MasterSource = OraDataSource3
    MasterFields = 'YEARS'
    DetailFields = 'YEARS'
    Active = True
    Left = 72
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'YEARS'
        ParamType = ptInput
        Value = '2013'
      end>
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    DataSet = OraQuery5
    BCDToCurrency = False
    Left = 104
    Top = 264
  end
  object OraDataSource4: TOraDataSource
    DataSet = OraQuery5
    Left = 136
    Top = 264
  end
  object OraQuery6: TOraQuery
    Session = OraSession2
    SQL.Strings = (
      'select years,years_months,months,name_prog,'
      'sum(in_sum_bul) in_sum_bul,sum(in_sum_kaz) in_sum_kaz'
      'from'
      '('
      
        'select to_char(a.date_pr,'#39'YYYY'#39') years,to_char(a.date_pr,'#39'YYYY.M' +
        'M'#39') years_months,to_char(a.date_pr,'#39'MM'#39') months,decode(b.type_pr' +
        'oduct_sub,110,'#39'30-'#1082#1080#39',130,'#39'Alz'#39',132,'#39'P-fund'#39','#39'1.5%'#39') name_prog,'
      'trunc(sum(a.summ_pr)) in_sum_bul,0 in_sum_kaz  '
      
        'from t_product_sub_prop a,t_product_sub b where a.id_product_sub' +
        '=b.id_product_sub and b.type_product_sub in (110,120,130,132)'
      'and F_BANK_PAY(a.id_sum) in (7,11,12) -- Bul'
      'and f__id_my_at_id_app(f__id_app_at_prop(a.id_prop)) '
      
        '--in (select id_my from brunsweek_user.t_anketa_main where dirco' +
        'de in (:v_dircode))'
      
        'in (select id_my from brunsweek_user.t_anketa_main where dircode' +
        ' in (select dircode from brunsweek_user.t_direct where ru_kz=0))'
      
        'group by to_char(a.date_pr,'#39'YYYY'#39'),to_char(a.date_pr,'#39'YYYY.MM'#39'),' +
        'to_char(a.date_pr,'#39'MM'#39'),decode(b.type_product_sub,110,'#39'30-'#1082#1080#39',13' +
        '0,'#39'Alz'#39',132,'#39'P-fund'#39','#39'1.5%'#39')--,id_prog '
      'union'
      
        'select to_char(a.date_pr,'#39'YYYY'#39') years,to_char(a.date_pr,'#39'YYYY.M' +
        'M'#39') years_months,to_char(a.date_pr,'#39'MM'#39') months,decode(b.type_pr' +
        'oduct_sub,110,'#39'30-'#1082#1080#39',130,'#39'Alz'#39',132,'#39'P-fund'#39','#39'1.5%'#39') name_prog,'
      '0 in_sum_bul,trunc(sum(a.summ_pr)) in_sum_kaz  '
      
        'from t_product_sub_prop a,t_product_sub b where a.id_product_sub' +
        '=b.id_product_sub and b.type_product_sub in (110,120,130,132)'
      'and F_BANK_PAY(a.id_sum) in (8,9,13) -- kaz'
      'and f__id_my_at_id_app(f__id_app_at_prop(a.id_prop)) '
      
        '--in (select id_my from brunsweek_user.t_anketa_main where dirco' +
        'de in(:v_dircode))'
      
        'in (select id_my from brunsweek_user.t_anketa_main where dircode' +
        ' in (select dircode from brunsweek_user.t_direct where ru_kz=0))'
      
        'group by to_char(a.date_pr,'#39'YYYY'#39'),to_char(a.date_pr,'#39'YYYY.MM'#39'),' +
        'to_char(a.date_pr,'#39'MM'#39'),decode(b.type_product_sub,110,'#39'30-'#1082#1080#39',13' +
        '0,'#39'Alz'#39',132,'#39'P-fund'#39','#39'1.5%'#39')--,id_prog '
      ')'
      'where years_months>='#39'2013.11'#39' and years_months<='#39'2019.11'#39
      'group by years,years_months,months,name_prog'
      'order by 2,3')
    MasterSource = OraDataSource4
    MasterFields = 'YEARS_MONTHS'
    DetailFields = 'YEARS_MONTHS'
    Active = True
    Left = 136
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'YEARS_MONTHS'
        ParamType = ptInput
        Value = '2013.11'
      end>
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    DataSet = OraQuery6
    BCDToCurrency = False
    Left = 168
    Top = 296
  end
end
