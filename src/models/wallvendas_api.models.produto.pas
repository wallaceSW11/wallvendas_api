unit wallvendas_api.models.produto;

interface

uses
  wallvendas_api.models.ModeloBase,
  System.Generics.Collections,
  wallvendas_api.Models.ProdutoInsumo,
  wallvendas_api.Models.Compra;

type
  TProduto = class(TModeloBase)
  private
    FDescricao: string;
    FTempoMontagem: TTime;
    FInsumos: TObjectList<TProdutoInsumo>;
    FUltimaCompra: TCompra;
  public
    property Descricao: string read FDescricao write FDescricao;
    property TempoMontagem: TTime read FTempoMontagem write FTempoMontagem;
    property Insumos: TObjectList<TProdutoInsumo> read FInsumos write FInsumos;
    property UltimaCompra: TCompra read FUltimaCompra write FUltimaCompra;
  end;


implementation

end.
