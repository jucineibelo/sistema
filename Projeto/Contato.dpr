program Contato;

uses
  Vcl.Forms,
  U_Cadastro in '..\Forms\U_Cadastro.pas' {frmCadastro},
  U_Pesquisa in '..\Forms\U_Pesquisa.pas' {frmPesquisa},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TfrmPesquisa, frmPesquisa);
  Application.Run;
end.
