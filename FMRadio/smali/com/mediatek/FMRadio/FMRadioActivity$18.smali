.class Lcom/mediatek/FMRadio/FMRadioActivity$18;
.super Landroid/os/Handler;
.source "FMRadioActivity.java"


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
    .line 1460
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4120

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1462
    const-string v0, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> handleMessage ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: app is being destroyed."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< handleMessage"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :goto_0
    return-void

    .line 1469
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "MSGID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1470
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: Already searching."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_1
    :goto_1
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< handleMessage"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1475
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1476
    const-string v0, "FMRadioActivity"

    const-string v2, "Start searching."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f040010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040011

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$18$1;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$18$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$18;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8002(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1495
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1496
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1533
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$18;)V

    .line 1674
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1677
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "MSGID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_4

    .line 1678
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->setSearchState(Z)V
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8500(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 1681
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->isSIMCardIdle()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1685
    :goto_2
    if-eqz v0, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "FIRST_SEARCHED_STATION"

    const/16 v4, 0x36b

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1691
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->resumeFMAudio()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1695
    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1696
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-class v3, Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1697
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_2

    .line 1692
    :catch_1
    move-exception v0

    .line 1693
    const-string v0, "FMRadioActivity"

    const-string v2, "Exception: resumeFMAudio"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1700
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "MSGID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_5

    .line 1701
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_1

    .line 1703
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 1705
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 1707
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1708
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1709
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    add-int/lit16 v1, v1, -0x36b

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1711
    :cond_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1712
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    add-int/lit16 v1, v1, -0x36b

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setValue(I)V

    .line 1714
    :cond_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1715
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1717
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1722
    :cond_8
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1725
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    invoke-static {v1, v2, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1731
    :cond_9
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 1732
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SEEK_STATION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1733
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(ZIZ)V
    invoke-static {v0, v1, v5, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7500(Lcom/mediatek/FMRadio/FMRadioActivity;ZIZ)V

    .line 1734
    const-string v0, "FMRadioPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mtk performance result]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1736
    :cond_a
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 1737
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(ZIZ)V
    invoke-static {v0, v1, v5, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7500(Lcom/mediatek/FMRadio/FMRadioActivity;ZIZ)V

    .line 1738
    const-string v0, "FMRadioPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mtk performance result]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1740
    :cond_b
    const/16 v0, 0xc

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_f

    .line 1741
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "TUNE_STATION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1743
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1744
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1745
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    add-int/lit16 v3, v3, -0x36b

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1747
    :cond_c
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1748
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    add-int/lit16 v3, v3, -0x36b

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setValue(I)V

    .line 1750
    :cond_d
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v2, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1751
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1752
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v3, v0, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    :goto_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneStation(ZI)V
    invoke-static {v0, v1, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7400(Lcom/mediatek/FMRadio/FMRadioActivity;ZI)V

    goto/16 :goto_1

    .line 1756
    :cond_e
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1759
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v3, v0, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1766
    :cond_f
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_10

    .line 1767
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v2, 0x7f02002d

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1768
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1770
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1771
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1772
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1774
    :cond_10
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_11

    .line 1775
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1776
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1777
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1779
    :cond_11
    const/16 v0, 0x9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_12

    .line 1780
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showDialog(I)V

    .line 1782
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1783
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1784
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1786
    :cond_12
    const/16 v0, 0xa

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 1787
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TYPE_TOAST_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1788
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1790
    :cond_13
    const/16 v0, 0xd

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1796
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: undefined message ID."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
