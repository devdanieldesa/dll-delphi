unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    StatusBar1: TStatusBar;
    edtTelefone1: TEdit;
    edtTelefone2: TEdit;
    edtTelefone3: TEdit;
    edtTelefone4: TEdit;
    btnFormatar: TButton;
    edtTelefoneFormatado1: TEdit;
    edtTelefoneFormatado2: TEdit;
    edtTelefoneFormatado3: TEdit;
    edtTelefoneFormatado4: TEdit;
    procedure btnFormatarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TFormatarTelefone = function (Telefone : PChar):PChar;stdcall;

var
  Form1: TForm1;
  FormatarTelefone : TFormatarTelefone;
  Hdl : THandle;

implementation

{$R *.dfm}

procedure TForm1.btnFormatarClick(Sender: TObject);
begin
  Hdl := LoadLibrary('Formatador.dll');
  @FormatarTelefone := GetProcAddress(Hdl, 'FormatarTelefone');

  edtTelefoneFormatado1.Text := FormatarTelefone(PChar(edtTelefone1.Text));
  edtTelefoneFormatado2.Text := FormatarTelefone(PChar(edtTelefone2.Text));
  edtTelefoneFormatado3.Text := FormatarTelefone(PChar(edtTelefone3.Text));
  edtTelefoneFormatado4.Text := FormatarTelefone(PChar(edtTelefone4.Text));

  FreeLibrary(Hdl);
end;

end.
