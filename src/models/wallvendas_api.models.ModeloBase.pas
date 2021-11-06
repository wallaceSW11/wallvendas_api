unit wallvendas_api.models.ModeloBase;

interface

uses
  System.SysUtils;

type
  TModeloBase = class
  private
    FID: string;
    FCodigo: string;
  protected
    constructor Create();
  public
    property ID: string read FID write FID;
    property Codigo: string read FCodigo write FCodigo;
  end;

implementation

{ TCadastroBase }

constructor TModeloBase.Create();
var
  lGuid: TGuid;
begin
  CreateGUID(lGuid);
  Self.ID := GUIDToString(lGuid).Replace('{', EmptyStr).Replace('}', EmptyStr);
end;

end.
