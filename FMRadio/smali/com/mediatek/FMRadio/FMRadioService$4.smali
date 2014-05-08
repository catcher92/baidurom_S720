.class Lcom/mediatek/FMRadio/FMRadioService$4;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 1505
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1551
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1552
    return-void

    .line 1508
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-wide/16 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3502(Lcom/mediatek/FMRadio/FMRadioService;J)J

    .line 1510
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1513
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopScan()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1517
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_3

    .line 1518
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1519
    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 1520
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1524
    :cond_2
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1525
    const-string v1, "EXTRA_RECORDING_STATE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1526
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1529
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1532
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1521
    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1522
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1537
    :catch_1
    move-exception v0

    .line 1539
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1545
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateExpiredSleepTime()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$4200(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto :goto_0

    .line 1514
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1505
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
