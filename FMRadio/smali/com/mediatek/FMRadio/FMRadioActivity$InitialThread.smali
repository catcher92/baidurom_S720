.class Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2052
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2055
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->openDevice()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2057
    const-string v0, "FMRadioActivity"

    const-string v3, "Error: opendev failed."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :goto_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isRDSSupported()I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6000(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    :goto_1
    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 2073
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2074
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 2081
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isPowerUp()Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 2082
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2083
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2084
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2085
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2086
    const-string v3, "MSGID"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2087
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2153
    :goto_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 2154
    return-void

    .line 2060
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2061
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2062
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2063
    const-string v4, "MSGID"

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2064
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2065
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2066
    const-string v0, "FMRadioActivity"

    const-string v3, "opendev succeed."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2070
    goto :goto_1

    .line 2077
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto :goto_2

    .line 2120
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_3
.end method
