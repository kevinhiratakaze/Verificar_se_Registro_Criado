unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Registry;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    function ChaveNoRegistroExiste: Boolean;
    function ExcluirRegistro: Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if ChaveNoRegistroExiste then
    Edit1.Text := 'Chave Criada'
  else
    Edit1.Text := 'Chave N�o criada';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if ExcluirRegistro then
    Edit2.Text := 'Excluido com sucesso.'
  else
    Edit2.Text := 'Erro na exclus�o';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Registry: TRegistry;
begin
  Registry := TRegistry.Create;
  if not ChaveNoRegistroExiste then
  begin
    Registry.CreateKey('Computador\HKEY_USERS\.DEFAULT\Software\Teste');
    
  end;
end;

function TForm1.ChaveNoRegistroExiste: Boolean;
var
  Registry: TRegistry;
begin
  Registry := TRegistry.Create;
  try
    if Registry.OpenKeyReadOnly('Computador\HKEY_USERS\.DEFAULT\Software\Teste') then
    begin
      Registry.CloseKey;
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  finally
    Registry.Free;
  end;
end;

function TForm1.ExcluirRegistro: Boolean;
var
  Registry: TRegistry;
begin
  Registry := TRegistry.Create;
  try
    if Registry.OpenKey('Computador\HKEY_USERS\.DEFAULT\Software\Teste', False) then
    begin
      Registry.DeleteKey('Teste');
      Registry.CloseKey;
      Result := True;
    end
    else
    Result := False;
  finally
    Registry.Free;
  end;
end;

end.
