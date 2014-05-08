.class Lcom/mediatek/FMRadio/FMRadioFavorite$1;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;->onCreate(Landroid/os/Bundle;)V
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
    .line 334
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 338
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    const-string v1, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 341
    const-string v2, "ACTIVITY_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setResult(ILandroid/content/Intent;)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->finish()V

    .line 365
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;

    .line 348
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mCbSelect:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 349
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    move-result-object v1

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mCbSelect:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->setCheckedByIndex(IZ)V

    .line 350
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$1;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
