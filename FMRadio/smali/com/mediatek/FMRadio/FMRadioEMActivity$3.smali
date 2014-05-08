.class Lcom/mediatek/FMRadio/FMRadioEMActivity$3;
.super Landroid/os/Handler;
.source "FMRadioEMActivity.java"


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
    .line 555
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 557
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> handleMessage ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "FMRadioEM"

    const-string v1, "Warning: app is being destroyed."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v0, "FMRadioEM"

    const-string v1, "<<< handleMessage"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MSGID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    const-string v0, "FMRadioEM"

    const-string v1, "The antenna is still not pluged in."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1
    :goto_1
    const-string v0, "FMRadioEM"

    const-string v1, "<<< handleMessage"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 572
    const-string v0, "FMRadioEM"

    const-string v1, "should search channel"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 574
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 575
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->showRDS()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    goto :goto_1

    .line 577
    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 579
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    goto :goto_1

    .line 582
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 583
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    goto :goto_1

    .line 585
    :cond_6
    const/16 v0, 0x9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 586
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    goto :goto_1

    .line 588
    :cond_7
    const/16 v0, 0xb

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 589
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TYPE_TOAST_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 592
    :cond_8
    const/16 v0, 0xd

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 594
    const-string v0, "FMRadioEM"

    const-string v1, "ENTER MSGID_INIT_OK"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnablePSRT(Landroid/app/Activity;)Z

    move-result v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 597
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 598
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnableAF(Landroid/app/Activity;)Z

    move-result v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 599
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setEnablePSRT(Landroid/app/Activity;Z)V

    .line 600
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->enablePSRT(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 601
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->enableAF(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 604
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isEarphoneUsed()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 605
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 606
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 612
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getChipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getECOVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPatchVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getDSPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    const-string v0, "FMRadioEM"

    const-string v1, "Leave MSGID_INIT_OK"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 609
    :cond_9
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 610
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 620
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v6, v0, :cond_e

    .line 621
    const-string v0, "FMRadioEM"

    const-string v1, "MSGID_TICK_EVENT msg arrived."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 624
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d%%"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readRdsBler()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStereoMono()Z

    move-result v0

    .line 627
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_c

    const-string v0, "Stereo"

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 630
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :cond_b
    :goto_4
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v6, v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 627
    :cond_c
    const-string v0, "Mono"

    goto :goto_3

    .line 634
    :cond_d
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readCapArray()I

    move-result v2

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->formatCapArray(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 642
    :cond_e
    const-string v0, "FMRadioEM"

    const-string v1, "Error: undefined message ID."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
