.class Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMPhoneStateListener"
.end annotation


# instance fields
.field private simId:I

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 1
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 559
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> onCallStateChanged SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    if-eq p1, v3, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 566
    :cond_0
    if-ne p1, v3, :cond_2

    .line 567
    const-string v0, "FMRadioService"

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    if-nez v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 579
    :goto_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    const-string v0, "FMRadioService"

    const-string v1, "Already know current is in a call."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    :goto_2
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< onCallStateChanged SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void

    .line 569
    :cond_2
    const-string v0, "FMRadioService"

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$1402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_1

    .line 582
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 585
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 592
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 594
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setRDS(Z)I

    .line 595
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    :goto_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 604
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 605
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    goto :goto_2

    .line 586
    :catch_0
    move-exception v0

    .line 587
    const-string v0, "FMRadioService"

    const-string v1, "Exception: Cannot call binder function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 596
    :catch_1
    move-exception v0

    .line 597
    const-string v0, "FMRadioService"

    const-string v1, "Exception: Cannot call binder function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 600
    :cond_6
    const-string v0, "FMRadioService"

    const-string v1, "FM is not playing, so do nothing."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 606
    :cond_7
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 607
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    goto/16 :goto_2

    .line 612
    :cond_8
    if-nez p1, :cond_d

    .line 614
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    if-nez v0, :cond_9

    .line 615
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 621
    :goto_5
    const-string v0, "FMRadioService"

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 624
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 625
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 626
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 627
    const-string v0, "FMRadioService"

    const-string v1, "FM is already playing, no need to resume."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 617
    :cond_9
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_5

    .line 629
    :cond_a
    const-string v0, "FMRadioService"

    const-string v1, "Need to resume FM."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 632
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->sHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->sHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 646
    :catch_2
    move-exception v0

    .line 647
    const-string v0, "FMRadioService"

    const-string v1, "Exception: Cannot call binder function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 651
    :cond_b
    const-string v0, "FMRadioService"

    const-string v1, "Do not need to resume, so do nothing."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 654
    :cond_c
    const-string v0, "FMRadioService"

    const-string v1, "The other SIM is not idle. So do nothing."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 657
    :cond_d
    const-string v0, "FMRadioService"

    const-string v1, "Error: Invalid call status."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setSIMID(I)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    .line 556
    return-void
.end method
