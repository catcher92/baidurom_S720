.class Lcom/mediatek/FMRadio/FMRadioActivity$18$1;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity$18;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity$18;)V
    .locals 0
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1487
    const-string v0, "FMRadioActivity"

    const-string v1, "User canceled searching progress."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1489
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopScan()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    .line 1491
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8002(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1492
    return-void
.end method
