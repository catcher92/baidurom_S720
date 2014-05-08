.class Lcom/mediatek/FMRadio/FMRadioActivity$3;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
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
    .line 596
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 717
    :goto_0
    return-void

    .line 601
    :sswitch_0
    const-string v0, "FMRadioActivity"

    const-string v1, "btn record: CLICK!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v2, 0x7f040032

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 606
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v2, 0x7f04002e

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2802(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    const-string v1, "FMRadioActivity"

    const-string v2, "failed to startRecording: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 618
    :sswitch_1
    const-string v0, "FMRadioActivity"

    const-string v1, "btn stop: CLICK!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/FMRadio/IFMRadioService;->setStopPressed(Z)V

    .line 621
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->stopRecording()V

    .line 622
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->stopPlayback()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 623
    :catch_1
    move-exception v0

    .line 624
    const-string v0, "FMRadioActivity"

    const-string v1, "failed to stopRecording/stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 628
    :sswitch_2
    const-string v0, "FMRadioActivity"

    const-string v1, "btn playback: CLICK!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->startPlayback()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 631
    :catch_2
    move-exception v0

    .line 632
    const-string v0, "FMRadioActivity"

    const-string v1, "failed to startPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 636
    :sswitch_3
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onClick AddToFavorite"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isToasting()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 647
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-static {v1, v0, v2, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 655
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v2, 0x7f04001f

    const v3, 0x7f04001e

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getProjectString(II)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;II)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    .line 689
    :cond_2
    :goto_1
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onClick AddToFavorite"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-static {v1, v2, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 674
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-static {v1, v0, v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 681
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v2, 0x7f040021

    const v3, 0x7f040020

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getProjectString(II)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;II)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 693
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 694
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onUseLoudspeaker()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_0

    .line 697
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onUseEarphone()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_0

    .line 701
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->performRecord()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_0

    .line 704
    :sswitch_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->startSearch()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_0

    .line 707
    :sswitch_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isThereAnyStation()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showChannelList()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_0

    .line 711
    :cond_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v2, 0x7f040061

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x7f060036 -> :sswitch_4
        0x7f060037 -> :sswitch_5
        0x7f06003c -> :sswitch_7
        0x7f06003d -> :sswitch_3
        0x7f060041 -> :sswitch_6
        0x7f060049 -> :sswitch_0
        0x7f06004a -> :sswitch_1
        0x7f06004b -> :sswitch_2
    .end sparse-switch
.end method
