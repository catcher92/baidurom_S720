.class Lcom/mediatek/FMRadio/FMRadioFavorite$4;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 412
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$4;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$4;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->cancelDeleteMode()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$700(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    .line 417
    return-void
.end method
