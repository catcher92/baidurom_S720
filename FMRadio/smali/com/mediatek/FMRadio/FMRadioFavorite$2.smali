.class Lcom/mediatek/FMRadio/FMRadioFavorite$2;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 369
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f040007

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 374
    :cond_0
    const v0, 0x7f040006

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 375
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 376
    const-string v1, "STATION_TYPE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 377
    if-ne v6, v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v1, 0x7f040003

    const v2, 0x7f040002

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v6, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 381
    invoke-interface {p1, v3, v4, v3, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 382
    const v0, 0x7f040008

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {p1, v3, v4, v3, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 388
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v1, 0x7f040009

    const v2, 0x7f040008

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
