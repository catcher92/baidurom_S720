.class Lcom/mediatek/FMRadio/FMRadioEMActivity$2;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 408
    const-string v0, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.onServiceConnected"

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {p2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 410
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    const-string v0, "FMRadioEM"

    const-string v1, "Error: null interface"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->finish()V

    .line 508
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onServiceConnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isServiceInit()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    const-string v0, "FMRadioEM"

    const-string v1, "FM service is not init."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->initService(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 419
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    .line 421
    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->start()V

    goto :goto_0

    .line 433
    :cond_1
    const-string v0, "FMRadioEM"

    const-string v3, "FM service is already init."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 436
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getFrequency()I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v0

    .line 437
    const/16 v3, 0x438

    if-gt v0, v3, :cond_2

    const/16 v3, 0x36b

    if-ge v0, v3, :cond_5

    .line 439
    :cond_2
    const-string v0, "FMRadioEM"

    const-string v3, "Error: invalid frequency in service."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 454
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isRDSSupported()I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v0

    if-ne v1, v0, :cond_7

    move v0, v1

    :goto_2
    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 456
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 457
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 463
    :goto_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    const-string v0, "FMRadioEM"

    const-string v2, "FM is already power up."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 469
    const-string v0, "FMRadioEM"

    const-string v1, "RDS is supported."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPSRTEnabled()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 473
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAFEnabled()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 475
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPS()Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getLRText()Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 480
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 481
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 482
    const-string v2, "MSGID"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 484
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 498
    :cond_4
    :goto_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 499
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 500
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 501
    const-string v2, "MSGID"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 503
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 442
    :cond_5
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 443
    const-string v3, "FMRadioEM"

    const-string v4, "The frequency in FM service is not same as in database."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 446
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 449
    :cond_6
    const-string v0, "FMRadioEM"

    const-string v3, "The frequency in FM service is same as in database."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 454
    goto/16 :goto_2

    .line 460
    :cond_8
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    goto/16 :goto_3

    .line 488
    :cond_9
    const-string v0, "FMRadioEM"

    const-string v1, "RDS is not supported."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 496
    :cond_a
    const-string v0, "FMRadioEM"

    const-string v1, "Error: FM device is not open"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 512
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 514
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method
