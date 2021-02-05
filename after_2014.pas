unit after_2014;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Ora, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxMemo, cxControls, cxContainer, cxEdit, cxTextEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, MemDS, frxClass, frxDBSet, frxDesgn, frxExportImage, frxExportPDF,
  frxExportXLS;

type
  TForm1 = class(TForm)
    OraSession1: TOraSession;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    cxButton7: TcxButton;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    OraQuery2: TOraQuery;
    frxDBDataset2: TfrxDBDataset;
    OraDataSource2: TOraDataSource;
    OraQuery3: TOraQuery;
    frxDBDataset3: TfrxDBDataset;
    OraSession2: TOraSession;
    OraQuery4: TOraQuery;
    frxDBDataset4: TfrxDBDataset;
    OraDataSource3: TOraDataSource;
    OraQuery5: TOraQuery;
    frxDBDataset5: TfrxDBDataset;
    OraDataSource4: TOraDataSource;
    OraQuery6: TOraQuery;
    frxDBDataset6: TfrxDBDataset;
    cxButton1: TcxButton;
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// тест для Git'a
// добавка для теста 
// commit 1
// commit 2

procedure TForm1.cxButton1Click(Sender: TObject);
begin
frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\FR3\smart_30_50.fr3');
frxReport1.DesignReport;
//frxReport1.PrepareReport();
//frxReport1.ShowPreparedReport;

end;

procedure TForm1.cxButton7Click(Sender: TObject);
begin
frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\FR3\smart.fr3');
frxReport1.DesignReport;
//frxReport1.PrepareReport();
//frxReport1.ShowPreparedReport;

end;

end.
