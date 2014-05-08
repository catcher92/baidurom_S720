.class Lcom/mediatek/FMRadio/FMRadioActivity$12;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 1273
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    new-instance v1, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;-><init>(Landroid/content/Context;Lcom/mediatek/FMRadio/IFMRadioService;)V

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7302(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMFreqNumPickDialog;)Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    .line 1279
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    move-result-object v0

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$12$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$12$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->setOnFreqSetListener(Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;)V

    .line 1288
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->setCanceledOnTouchOutside(Z)V

    .line 1289
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->show()V

    .line 1290
    return-void
.end method
