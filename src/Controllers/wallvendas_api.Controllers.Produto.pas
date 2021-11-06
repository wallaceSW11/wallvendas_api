unit wallvendas_api.Controllers.Produto;

interface

uses
  wallvendas_api.Controllers.Interfaces,
  Horse,
  REST.Json,
  System.JSON;

type
  TControllerProduto = class(TInterfacedObject, IControllerBase)
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

constructor TControllerProduto.Create;
begin

end;

procedure TControllerProduto.Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure TControllerProduto.GetAll(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  lProduto: TJsonObject;
  lProdutos: TJsonArray;
begin
  lProduto := TJsonObject.Create();
  lProduto.AddPair('codigo', '001');
  lProduto.AddPair('descricao', 'Produto 1');

  lProdutos := TJsonArray.Create();
  lProdutos.Add(lProduto);

  Res.Send<TJSONArray>(lProdutos).Status(THTTPStatus.OK);
end;

procedure TControllerProduto.GetById(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  lProduto: TJsonObject;
  lProdutos: TJsonArray;
begin
  lProduto := TJsonObject.Create();
  lProduto.AddPair('id', Req.Params['id']);
  lProduto.AddPair('codigo', '001');
  lProduto.AddPair('descricao', 'Produto 1');

  Res.Send<TJSONObject>(lProduto).Status(THTTPStatus.OK);
end;

class function TControllerProduto.NovaInstancia: IControllerBase;
begin
  Result := Self.Create();
end;

procedure TControllerProduto.Post(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure TControllerProduto.Put(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure TControllerProduto.Routes();
begin
  THorse.Get('/produto/', GetAll);
  THorse.Get('/produto/:id', GetById);

end;

end.

