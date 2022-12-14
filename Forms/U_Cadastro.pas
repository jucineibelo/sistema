unit U_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TfrmCadastro = class(TForm)
    Conexao: TFDConnection;
    qryCadastro: TFDQuery;
    dsCadastro: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryCadastroID_CONTATO: TIntegerField;
    qryCadastroNOME: TStringField;
    qryCadastroTELEFONE: TStringField;
    qryCadastroCELULAR: TStringField;
    qryCadastroEMAIL: TStringField;
    Label1: TLabel;
    idContato: TDBEdit;
    Label2: TLabel;
    dbNome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    btNovo: TBitBtn;
    dtAlterar: TBitBtn;
    btDeletar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btAtualizar: TBitBtn;
    btSair: TBitBtn;
    DBNavigator1: TDBNavigator;
    btPesquisar: TBitBtn;
    procedure btNovoClick(Sender: TObject);
    procedure dtAlterarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses U_Pesquisa;

procedure TfrmCadastro.btAtualizarClick(Sender: TObject);
begin
  qryCadastro.Refresh;
  MessageDlg('Registro atualizado!', mtConfirmation, [mbOk, mbNo], 0);
end;

procedure TfrmCadastro.btCancelarClick(Sender: TObject);
begin
  qryCadastro.Cancel;
end;

procedure TfrmCadastro.btDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja exclui esse registro?', mtConfirmation, [mbOk, mbNo], 0)
    = mrOk then
  begin
    qryCadastro.Delete;
  end
  else
    abort;
end;

procedure TfrmCadastro.btGravarClick(Sender: TObject);
begin
  qryCadastro.Post;
  MessageDlg('Registro salvo com sucesso!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadastro.btNovoClick(Sender: TObject);
var
  prox: Integer;
begin
  qryCadastro.Active := true;
  qryCadastro.Last;
  prox := qryCadastroID_CONTATO.AsInteger + 1;
  qryCadastro.Append;
  qryCadastroID_CONTATO.AsInteger := prox;
  dbNome.SetFocus;

end;

procedure TfrmCadastro.btPesquisarClick(Sender: TObject);
begin
  frmPesquisa := TfrmPesquisa.Create(self);
  frmPesquisa.ShowModal;
  try

  finally
  frmPesquisa.Free;
  frmPesquisa :=nil;



  end;
end;

procedure TfrmCadastro.btSairClick(Sender: TObject);
begin

  // codigo do bot?o sair
  if MessageDlg('Deseja sair do sistema?', mtConfirmation, [mbOk, mbNo], 0) = mrOk
  then
  begin
    Application.Terminate;
  end
  else
    abort;

end;

procedure TfrmCadastro.dtAlterarClick(Sender: TObject);
begin
  if MessageDlg('Deseja alterar esse registro?', mtConfirmation, [mbOk, mbNo],
    0) = mrOk then
  begin
    qryCadastro.Edit;
  end
  else
    abort;
end;

end.
