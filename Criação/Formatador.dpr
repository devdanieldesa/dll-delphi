library Formatador;

uses
  SysUtils,
  Classes;

{$R *.res}

function FormatarTelefone(Telefone : PChar):PChar;stdcall;
var
  DDD : String;
  PrimeiraParte : String;
  SegundaParte : String;
  TelefoneFormatado : String;
begin
  case Length(Telefone) of
     8 : begin
           DDD := '';
           PrimeiraParte := Copy(Telefone, 1, 4);
           SegundaParte := Copy(Telefone, 5, 4);
         end;
     9 : begin
           DDD := '';
           PrimeiraParte := Copy(Telefone, 1, 5);
           SegundaParte := Copy(Telefone, 6, 4);
         end;
    10 : begin
           DDD := '(' + Copy(Telefone, 1, 2) + ') ';
           PrimeiraParte := Copy(Telefone, 3, 4);
           SegundaParte := Copy(Telefone, 7, 4);
         end;
    11 : begin
           DDD := '(' + Copy(Telefone, 1, 2) + ') ';
           PrimeiraParte := Copy(Telefone, 3, 5);
           SegundaParte := Copy(Telefone, 8, 4);
         end;
  end;

  TelefoneFormatado :=  DDD + PrimeiraParte + '-' + SegundaParte;

  Result := PChar(TelefoneFormatado);
end;

exports
  FormatarTelefone;

begin
end.
 