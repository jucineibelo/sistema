unit U_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPesquisa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    edPesquisa: TEdit;
    Label1: TLabel;
    btnPesquisar: TBitBtn;
    btnImprimir: TBitBtn;
    cbOpcao: TComboBox;
    Label3: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

{$R *.dfm}

uses U_Cadastro;

procedure TfrmPesquisa.btnPesquisarClick(Sender: TObject);
begin
  frmCadastro.qryCadastro.Close;
  frmCadastro.qryCadastro.Params.Clear;
  frmCadastro.qryCadastro.SQL.Add('');
  frmCadastro.qryCadastro.SQL.Clear;
  frmCadastro.qryCadastro.SQL.Add('select * from contato');

  case cbOpcao.ItemIndex of
    0:
      begin
        frmCadastro.qryCadastro.SQL.Add('where ID_CONTATO =:pcodigo');
        frmCadastro.qryCadastro.ParamByName('pcodigo').AsInteger :=
          strtoint(edPesquisa.Text);
      end;

    1:
      begin
        frmCadastro.qryCadastro.SQL.Add('where NOME =:pnome');
        frmCadastro.qryCadastro.ParamByName('pnome').AsString :=
          (edPesquisa.Text);
      end;
  end;

  frmCadastro.qryCadastro.Open;

  if frmCadastro.qryCadastro.IsEmpty then
  begin
    MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOk], 0); end;

    end;

    end.
