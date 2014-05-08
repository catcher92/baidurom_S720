.class Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x36b

    const/16 v4, 0x8

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onReceive"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 322
    const-string v1, "FMRadioActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    const-string v0, "EXTRA_FMRADIO_ISPOWERUP"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 325
    if-eqz v0, :cond_1

    .line 326
    const-string v0, "FMRadioActivity"

    const-string v1, "FM Radio is power up."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 329
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 516
    :cond_0
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onReceive"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void

    .line 332
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "FM Radio is power down."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 335
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 337
    :cond_2
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_EXIT_FM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->exitFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 340
    :cond_3
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v1, "EXTRA_RDS_PS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 347
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 348
    const-string v2, "MSGID"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 350
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 352
    :cond_4
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v1, "EXTRA_RDS_RT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 359
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 360
    const-string v2, "MSGID"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 364
    :cond_5
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 365
    const-string v0, "EXTRA_RDS_AF_ACTIVED"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 366
    if-lt v0, v8, :cond_6

    const/16 v1, 0x438

    if-gt v0, v1, :cond_6

    .line 369
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 370
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 372
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 373
    const-string v2, "MSGID"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 378
    :cond_6
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: invalid alternative frequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    :cond_7
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 382
    const-string v0, "EXTRA_RDS_TA_ACTIVED"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 383
    if-lt v0, v8, :cond_8

    const/16 v1, 0x438

    if-gt v0, v1, :cond_8

    .line 386
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 387
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 388
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 389
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 390
    const-string v2, "MSGID"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 392
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 395
    :cond_8
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: invalid activeTA frequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    :cond_9
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 399
    const-string v0, "EXTRA_RDS_TA_DEACTIVED"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 400
    if-lt v0, v8, :cond_a

    const/16 v1, 0x438

    if-gt v0, v1, :cond_a

    .line 403
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 404
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 405
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 406
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 407
    const-string v2, "MSGID"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 412
    :cond_a
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: invalid activeTA frequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_b
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 415
    const-string v0, "EXTRA_RECORDING_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1002(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 417
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 418
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 423
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 420
    :cond_d
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z
    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto :goto_1

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f04002d

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 426
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 427
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 431
    :cond_e
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 435
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 436
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 443
    :cond_f
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 445
    const-string v0, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDER_ERROR_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 446
    const-string v1, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_RECORDER_ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    packed-switch v0, :pswitch_data_1

    .line 461
    :goto_3
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 449
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f04002e

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 452
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f04002f

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 455
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f040030

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 458
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f040031

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 462
    :cond_10
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 463
    const-string v0, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDING_MODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 464
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 467
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 468
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 469
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 471
    :cond_11
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 474
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f04002b

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 477
    const v0, 0x7f020030

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 478
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 483
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 484
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 486
    :cond_12
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 487
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    :goto_6
    invoke-virtual {v5, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setEnabled(Z)V

    .line 489
    :cond_13
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 490
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v3, v2

    :cond_14
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 492
    :cond_15
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f060048

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 493
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v4

    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_9
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 476
    :cond_16
    const/high16 v0, 0x7f04

    goto/16 :goto_4

    :cond_17
    move v1, v3

    .line 484
    goto :goto_5

    :cond_18
    move v1, v3

    .line 487
    goto :goto_6

    :cond_19
    move v3, v2

    .line 493
    goto :goto_7

    :cond_1a
    move v1, v4

    .line 496
    goto :goto_8

    :cond_1b
    move v4, v2

    .line 497
    goto :goto_9

    .line 501
    :cond_1c
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_USE_EARPHONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 502
    const-string v0, "EXTRA_IS_USE_EARPHONE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 503
    if-eqz v0, :cond_1d

    .line 504
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 508
    :cond_1d
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 514
    :cond_1e
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: undefined action."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 447
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
