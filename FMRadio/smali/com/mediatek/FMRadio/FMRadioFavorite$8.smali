.class Lcom/mediatek/FMRadio/FMRadioFavorite$8;
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
    .line 697
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$8;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$8;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 700
    return-void
.end method