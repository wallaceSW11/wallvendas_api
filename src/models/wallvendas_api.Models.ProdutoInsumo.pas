unit wallvendas_api.Models.ProdutoInsumo;

interface

uses
  wallvendas_api.models.ModeloBase;

type
  TProdutoInsumo = class(TModeloBase)
  private
    FValorUnitario: Currency;
    FIdProdutoOrigem: string;
    FIdProduto: string;
    FValorTotal: Currency;
    FQuantidade: Double;
    FMedida: string;
  public
    property IdProdutoOrigem: string read FIdProdutoOrigem write FIdProdutoOrigem;
    property IdProduto: string read FIdProduto write FIdProduto;
    property Quantidade: Double read FQuantidade write FQuantidade;
    property Medida: string read FMedida write FMedida;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
    property ValorTotal: Currency read FValorTotal write FValorTotal;
  end;

implementation

end.
