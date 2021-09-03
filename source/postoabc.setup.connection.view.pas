unit postoabc.setup.connection.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, postoabc.conexao.datamodule;

type
  TfrmSetupConnection = class(TForm)
    edtServer: TEdit;
    Label1: TLabel;
    edtDatabase: TEdit;
    Label2: TLabel;
    edtUserName: TEdit;
    Label3: TLabel;
    edtPassword: TEdit;
    Label4: TLabel;
    edtPort: TEdit;
    Label5: TLabel;
    btnCancelar: TButton;
    btnSalvar: TButton;
    btnTestarConexao: TButton;
    spdbtnFindDatabase: TSpeedButton;
    fodFindDatabase: TFileOpenDialog;
    procedure spdbtnFindDatabaseClick(Sender: TObject);
    procedure btnTestarConexaoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtUserNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetupConnection: TfrmSetupConnection;

implementation

{$R *.dfm}



procedure TfrmSetupConnection.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSetupConnection.btnSalvarClick(Sender: TObject);
begin
  MinhaConexao.Server := edtServer.Text;
  MinhaConexao.Port := StrToInt(edtPort.Text);
  MinhaConexao.UserName := edtUserName.Text;
  MinhaConexao.Password := edtPassword.Text;
  MinhaConexao.Database := edtDatabase.Text;
  MinhaConexao.SetConnectionInfo;
end;

procedure TfrmSetupConnection.btnTestarConexaoClick(Sender: TObject);
begin
  if dmConexao.TestarConexao(edtServer.Text, StrToInt(edtPort.Text), edtUserName.Text, edtPassword.Text, edtDatabase.Text) then
  begin
    Application.MessageBox('Conex�o realizada com sucesso', 'Teste de Conex�o');
    if btnSalvar.CanFocus then
      btnSalvar.SetFocus;
  end
  else begin
    Application.MessageBox('N�o foi poss�vel conectar ao banco de dados com essas configura��es, verifique novamente!', 'Teste de Conex�o');
    if edtUserName.CanFocus then
      edtUserName.SetFocus;
  end;
end;

procedure TfrmSetupConnection.edtUserNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmSetupConnection.FormShow(Sender: TObject);
begin
  MinhaConexao.GetConnectionInfo;
  edtServer.Text := MinhaConexao.Server;
  edtPort.Text := MinhaConexao.Port.ToString;
  edtDatabase.Text := MinhaConexao.Database;
  edtUserName.Text := MinhaConexao.UserName;
  edtPassword.Text := MinhaConexao.Password;
  if edtUserName.CanFocus then
    edtUserName.SetFocus;
end;

procedure TfrmSetupConnection.spdbtnFindDatabaseClick(Sender: TObject);
begin
  if fodFindDatabase.Execute then
    edtDatabase.Text := fodFindDatabase.FileName;
end;

end.
