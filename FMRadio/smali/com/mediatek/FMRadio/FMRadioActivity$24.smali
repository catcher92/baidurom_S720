.class Lcom/mediatek/FMRadio/FMRadioActivity$24;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$24;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2692
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onClick Negative"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2694
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$24;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 2695
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$24;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 2696
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onClick Negative"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    return-void
.end method
