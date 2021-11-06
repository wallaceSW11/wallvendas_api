program wallvendas_api;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Horse,
  Horse.Jhonson,
  Horse.HandleException,
  System.JSON,
  wallvendas_api.models.produto in 'src\models\wallvendas_api.models.produto.pas',
  wallvendas_api.models.ModeloBase in 'src\models\wallvendas_api.models.ModeloBase.pas',
  wallvendas_api.Controllers.Interfaces in 'src\Controllers\wallvendas_api.Controllers.Interfaces.pas',
  wallvendas_api.Controllers.Produto in 'src\Controllers\wallvendas_api.Controllers.Produto.pas',
  wallvendas_api.Models.ProdutoInsumo in 'src\models\wallvendas_api.Models.ProdutoInsumo.pas',
  wallvendas_api.Models.Compra in 'src\models\wallvendas_api.Models.Compra.pas',
  wallvendas_api.Controllers.Compra in 'src\Controllers\wallvendas_api.Controllers.Compra.pas';

var
  FControllerProduto: IControllerBase;
  FControllerCompra: IControllerBase;

begin
  THorse
    .Use(Jhonson)
    .Use(HandleException);

  FControllerProduto := TControllerProduto.NovaInstancia();
  FControllerCompra := TControllerCompra.NovaInstancia();

  FControllerProduto.Routes();
  FControllerCompra.Routes();



  THorse.Listen(9000);
end.
