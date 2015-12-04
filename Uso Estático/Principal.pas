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

var
  Form1: TForm1;

implementation

function FormatarTelefone(Telefone : PChar):PChar;stdcall;external 'Formatador.dll';

{$R *.dfm}

procedure TForm1.btnFormatarClick(Sender: TObject);
begin
  edtTelefoneFormatado1.Text := FormatarTelefone(PChar(edtTelefone1.Text));
  edtTelefoneFormatado2.Text := FormatarTelefone(PChar(edtTelefone2.Text));
  edtTelefoneFormatado3.Text := FormatarTelefone(PChar(edtTelefone3.Text));
  edtTelefoneFormatado4.Text := FormatarTelefone(PChar(edtTelefone4.Text));
end;

end.
