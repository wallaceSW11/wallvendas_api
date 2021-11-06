unit wallvendas_api.Controllers.Compra;

interface

uses
  wallvendas_api.Controllers.Interfaces,
  wallvendas_api.Models.Compra,
  Horse,
  REST.Json,
  System.JSON, System.SysUtils;

type
  TControllerCompra = class(TInterfacedObject, IControllerBase)
  private
    constructor Create( );
  public
    procedure Routes();
    procedure GetAll(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure GetById(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure Put(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class function NovaInstancia(): IControllerBase;
  end;

implementation

constructor TControllerCompra.Create;
begin

end;

procedure TControllerCompra.Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure TControllerCompra.GetAll(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  lCompra: TJsonObject;
  lCompras: TJsonArray;
begin
  lCompra := TJsonObject.Create();
  lCompra.AddPair('codigo', '001');
  lCompra.AddPair('descricao', 'Compra 1');

  lCompras := TJsonArray.Create();
  lCompras.Add(lCompra);

  Res.Send<TJSONArray>(lCompras).Status(THTTPStatus.OK);
end;

procedure TControllerCompra.GetById(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  lCompra: TJsonObject;
  lCompras: TJsonArray;
  FCompra: TCompra;
begin
  FCompra := TCompra.Create();

  FCompra := TJson.JsonToObject<TCompra>(Req.Body<TJSONObject>);





  lCompra := TJsonObject.Create();
  lCompra.AddPair('id', FCompra.ID);
  lCompra.AddPair('valorcustoreposicao', formatfloat('0.00', FCompra.ValorCustoReposicao));
  lCompra.AddPair('valorcustoreposicaounitario', formatfloat('0.00', FCompra.ValorCustoReposicaoUnitario));


  Res.Send<TJSONObject>(lCompra).Status(THTTPStatus.OK);
end;

class function TControllerCompra.NovaInstancia: IControllerBase;
begin
  Result := Self.Create();
end;

procedure TControllerCompra.Post(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure TControllerCompra.Put(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure TControllerCompra.Routes();
begin
  THorse.Get('/compra/', GetAll);
  THorse.Get('/compra/:id', GetById);

end;

end.


