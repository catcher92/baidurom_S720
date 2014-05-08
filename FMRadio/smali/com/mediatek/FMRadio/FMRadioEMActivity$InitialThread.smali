.class Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;
.super Ljava/lang/Thread;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 751
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 754
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->openDevice()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    const-string v0, "FMRadioEM"

    const-string v3, "Error: opendev failed."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 762
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 763
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 764
    const-string v4, "MSGID"

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 765
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 766
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 769
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isRDSSupported()I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    :goto_1
    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 772
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 780
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 781
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 783
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 784
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 785
    const-string v2, "MSGID"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 786
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 787
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 797
    :goto_3
    const-string v0, "FMRadioEM"

    const-string v1, "InitialThread terminated."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void

    .line 759
    :cond_0
    const-string v0, "FMRadioEM"

    const-string v3, "opendev succeed."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 769
    goto :goto_1

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    goto :goto_2

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    goto :goto_3
.end method
