.class Lcom/mediatek/FMRadio/FMRadioActivity$18$2;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


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
    .line 1533
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 1535
    const-string v0, "FMRadioActivity"

    const-string v2, ">>> searchThread.run()"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->startScan()[I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8300(Lcom/mediatek/FMRadio/FMRadioActivity;)[I

    move-result-object v4

    .line 1538
    if-eqz v4, :cond_0

    .line 1539
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1544
    :cond_0
    if-eqz v4, :cond_5

    .line 1545
    const-string v0, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stations found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v2, v1

    move v3, v1

    .line 1547
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_6

    .line 1548
    const-string v5, "FMRadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stations found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    aget v5, v4, v0

    const/16 v6, 0x438

    if-ge v5, v6, :cond_1

    aget v5, v4, v0

    const/16 v6, 0x36b

    if-gt v5, v6, :cond_2

    .line 1551
    :cond_1
    const-string v5, "FMRadioActivity"

    const-string v6, "Ignore the invalid station."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1554
    :cond_2
    if-nez v3, :cond_3

    .line 1555
    aget v3, v4, v0

    .line 1557
    :cond_3
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v5, v5, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    aget v6, v4, v0

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1558
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v5, v5, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v6, v6, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v7, 0x7f040015

    invoke-virtual {v6, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v4, v0

    const/4 v8, 0x3

    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 1564
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    move v3, v1

    .line 1569
    :cond_6
    const-string v0, "FMRadioPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mtk performance result]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1571
    if-eqz v4, :cond_c

    .line 1573
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1577
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1586
    :goto_2
    if-lez v3, :cond_7

    .line 1587
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1588
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1589
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1590
    const-string v5, "MSGID"

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1591
    const-string v5, "FIRST_SEARCHED_STATION"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1592
    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1593
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1594
    const-string v0, "FMRadioActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing. Send message to tune station: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1638
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1639
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8002(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1643
    :cond_8
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1644
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isToasting()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1645
    const-string v0, ""

    .line 1646
    if-nez v2, :cond_d

    .line 1647
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v2, 0x7f040023

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1653
    :goto_4
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1654
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1655
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1656
    const-string v4, "MSGID"

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1657
    const-string v4, "TYPE_TOAST_STRING"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1659
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1663
    :cond_9
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1664
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1671
    :goto_5
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< searchThread.run()"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void

    .line 1584
    :cond_a
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v0

    int-to-short v3, v0

    goto/16 :goto_2

    .line 1599
    :cond_b
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    if-lez v3, :cond_7

    .line 1600
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1601
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1602
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1603
    const-string v5, "MSGID"

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1604
    const-string v5, "FIRST_SEARCHED_STATION"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1605
    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1606
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1607
    const-string v0, "FMRadioActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not playing. Send message to tune station: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1618
    :cond_c
    const-string v0, "FMRadioActivity"

    const-string v3, "No stations found."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getResumeAfterCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1625
    :goto_6
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    .line 1627
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8400(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 1629
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->resumeFMAudio()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    const-string v3, "FMRadioActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in resumeFMAudio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1622
    :catch_1
    move-exception v0

    .line 1623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_6

    .line 1650
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18$2;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$18;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v4, 0x7f040022

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 1668
    :cond_e
    const-string v0, "FMRadioActivity"

    const-string v1, "FMRadio is being destroyed."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method
