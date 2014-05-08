.class Lcom/mediatek/FMRadio/FMRadioFavorite$13;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 923
    if-eqz v0, :cond_0

    .line 924
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const-string v2, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 932
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$810(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    .line 934
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->notifyDataSetChanged()V

    .line 935
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$13;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->reset()V

    .line 966
    return-void
.end method
