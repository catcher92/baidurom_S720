.class Lcom/android/internal/telephony/gemini/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 24

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 528
    const/4 v2, 0x0

    .line 529
    const/4 v1, 0x0

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 531
    if-eqz v3, :cond_6

    .line 532
    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 533
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllIccIdsDone old IccId In Slot0 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 535
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 536
    const-string/jumbo v5, "slot"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    sget-object v5, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 539
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllIccIdsDone reset Slot0 to -1, mIccId1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 545
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 546
    if-eqz v2, :cond_7

    .line 547
    iget-object v1, v2, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 548
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllIccIdsDone old IccId In Slot1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 550
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 551
    const-string/jumbo v5, "slot"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    sget-object v5, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 554
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllIccIdsDone reset Slot1 to -1, mIccId2 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    .line 562
    :goto_1
    const/4 v2, 0x0

    .line 563
    const/4 v1, 0x0

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 565
    :cond_2
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone No SIM inserted in Slot 0, set the slot for Removed SIM to NONE "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 583
    :cond_4
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone No SIM inserted in Slot 1, set the slot for Removed SIM to NONE "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v1

    move v14, v2

    .line 598
    :goto_3
    const-wide/16 v4, -0x3

    .line 599
    const-wide/16 v6, -0x3

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 601
    if-nez v16, :cond_10

    const/4 v1, 0x0

    move v9, v1

    .line 602
    :goto_4
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v9, :cond_12

    .line 603
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 604
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_11

    .line 605
    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 602
    :cond_5
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 542
    :cond_6
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone No sim in slot0 for last time "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    goto/16 :goto_0

    .line 557
    :cond_7
    const-string v2, "PHONE"

    const-string v3, "getAllIccIdsDone No sim in slot1 for last time "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto/16 :goto_1

    .line 567
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 570
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 571
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 577
    const/4 v2, 0x1

    .line 578
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 572
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 573
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 585
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 586
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 587
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 593
    add-int/lit8 v2, v2, 0x1

    .line 594
    or-int/lit8 v1, v1, 0x2

    move v13, v1

    move v14, v2

    goto/16 :goto_3

    .line 588
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 589
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_8

    .line 601
    :cond_10
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    move v9, v1

    goto/16 :goto_4

    .line 606
    :cond_11
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    .line 607
    iget-wide v6, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_6

    .line 610
    :cond_12
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllIccIdsDone simIdForSlot ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-lez v14, :cond_13

    .line 613
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone New SIM detected. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 615
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v15, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 617
    if-lez v1, :cond_1f

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 623
    :cond_13
    :goto_9
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone set PROPERTY_SIM_INFO_READY to true. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v1, "gsm.siminfo.ready"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllIccIdsDone  PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.siminfo.ready"

    const/4 v8, 0x0

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string/jumbo v1, "video_call_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 629
    const-string/jumbo v1, "voice_call_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v15, v1, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 631
    const-string/jumbo v1, "sms_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v15, v1, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    .line 632
    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v15, v1, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    .line 634
    const/4 v10, 0x0

    .line 638
    const-wide/16 v11, -0x5

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v8

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 641
    const/4 v1, 0x1

    if-ne v8, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move-wide v11, v6

    .line 652
    :cond_14
    :goto_a
    const-string/jumbo v1, "video_call_sim_setting"

    invoke-static {v15, v1, v11, v12}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 654
    const/4 v10, 0x1

    .line 658
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v8, v0

    .line 659
    const/4 v1, 0x1

    if-le v9, v1, :cond_24

    .line 660
    const-wide/16 v1, -0x5

    cmp-long v1, v17, v1

    if-nez v1, :cond_16

    .line 661
    const-string/jumbo v1, "voice_call_sim_setting"

    const-wide/16 v2, -0x1

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 665
    :cond_16
    const-wide/16 v1, -0x5

    cmp-long v1, v19, v1

    if-nez v1, :cond_17

    .line 666
    const-string/jumbo v1, "sms_sim_setting"

    const-wide/16 v2, -0x1

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 670
    :cond_17
    const-wide/16 v1, -0x5

    cmp-long v1, v21, v1

    if-nez v1, :cond_18

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 673
    invoke-virtual {v8, v6, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    .line 702
    :cond_18
    :goto_b
    const-wide/16 v1, -0x5

    .line 703
    const/4 v3, 0x1

    if-le v9, v3, :cond_28

    .line 704
    const-wide/16 v1, -0x1

    move-wide v11, v1

    .line 709
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v17

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 710
    const-string/jumbo v1, "voice_call_sim_setting"

    invoke-static {v15, v1, v11, v12}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 711
    const/4 v10, 0x1

    .line 714
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v19

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 715
    const-string/jumbo v1, "sms_sim_setting"

    invoke-static {v15, v1, v11, v12}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 716
    const/4 v10, 0x1

    .line 719
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v21

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 721
    const/4 v1, 0x1

    if-le v9, v1, :cond_2a

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 723
    invoke-virtual {v8, v6, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    .line 733
    :cond_1b
    :goto_d
    const/4 v1, 0x1

    .line 736
    :goto_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v4, "broadCast intent ACTION_SIM_INFO_UPDATE "

    invoke-static {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 738
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 740
    if-lez v14, :cond_2c

    .line 741
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone. New SIM detected. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v9, v13}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V

    .line 749
    :cond_1c
    :goto_f
    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 750
    const-wide/16 v3, -0x5

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1d

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1d

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 756
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 757
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone. New SIM detected. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :cond_1e
    monitor-exit p0

    return-void

    .line 620
    :cond_1f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    goto/16 :goto_9

    .line 643
    :cond_20
    if-nez v8, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-wide v11, v4

    .line 644
    goto/16 :goto_a

    .line 647
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-wide v11, v4

    .line 648
    goto/16 :goto_a

    .line 675
    :cond_22
    invoke-virtual {v8, v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_b

    .line 677
    :cond_23
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_b

    .line 680
    :cond_24
    const/4 v1, 0x1

    if-ne v9, v1, :cond_18

    .line 681
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v1, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 682
    const-string v3, "enable_internet_call_value"

    const/4 v11, 0x0

    invoke-static {v15, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 683
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_25

    if-eqz v3, :cond_25

    const-wide/16 v11, -0x5

    cmp-long v3, v17, v11

    if-nez v3, :cond_26

    .line 686
    :cond_25
    const-string/jumbo v3, "voice_call_sim_setting"

    invoke-static {v15, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 690
    :cond_26
    const-string/jumbo v3, "sms_sim_setting"

    invoke-static {v15, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 693
    const-wide/16 v11, -0x5

    cmp-long v3, v21, v11

    if-nez v3, :cond_18

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 695
    invoke-virtual {v8, v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_b

    .line 697
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_b

    .line 705
    :cond_28
    const/4 v3, 0x1

    if-ne v9, v3, :cond_2e

    .line 706
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v1, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide v11, v1

    goto/16 :goto_c

    .line 725
    :cond_29
    invoke-virtual {v8, v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_d

    .line 727
    :cond_2a
    if-lez v9, :cond_1b

    .line 728
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v1, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v8, v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_d

    .line 731
    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    .line 743
    :cond_2c
    if-eqz v1, :cond_1c

    if-lez v9, :cond_1c

    .line 744
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone No new SIM detected and Default SIM for some service has been removed. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/b;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    :cond_2d
    move v1, v10

    goto/16 :goto_e

    :cond_2e
    move-wide v11, v1

    goto/16 :goto_c

    :cond_2f
    move v13, v1

    move v14, v2

    goto/16 :goto_3

    :cond_30
    move-object v3, v1

    goto/16 :goto_1

    :cond_31
    move-object v4, v2

    goto/16 :goto_0
.end method
