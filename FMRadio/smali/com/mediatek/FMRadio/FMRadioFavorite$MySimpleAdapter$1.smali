.class Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter$1;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

.field final synthetic val$stationValue:I


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter$1;->this$1:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter$1;->val$stationValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter$1;->this$1:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter$1;->val$stationValue:I

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->cancelFavorite(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$2500(Lcom/mediatek/FMRadio/FMRadioFavorite;I)V

    .line 1387
    return-void
.end method
