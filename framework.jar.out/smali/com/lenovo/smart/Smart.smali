.class public Lcom/lenovo/smart/Smart;
.super Ljava/lang/Object;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smart/Smart$ConductionProvider;,
        Lcom/lenovo/smart/Smart$HabitProvider;,
        Lcom/lenovo/smart/Smart$ConductionIntent;,
        Lcom/lenovo/smart/Smart$HabitIntent;,
        Lcom/lenovo/smart/Smart$Extra;
    }
.end annotation


# static fields
.field public static final MO_ENTRANCE_CALL_LOG:I = 0x14

.field public static final MO_ENTRANCE_DIALER_PAD:I = 0xa

.field public static final MO_ENTRANCE_END:I = 0x3c

.field public static final MO_ENTRANCE_PHONE_BOOK:I = 0x1e

.field public static final MO_ENTRANCE_SMS:I = 0x28

.field public static final MO_ENTRANCE_STARRED:I = 0x32

.field public static final SUPPORT_SMART:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 768
    return-void
.end method

.method public static addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "simId"
    .parameter "vtCall"

    .prologue
    .line 32
    new-instance v0, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v1, "telephony"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    if-nez p7, :cond_0

    .line 35
    const-string/jumbo v1, "transaction_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    :goto_0
    const-string/jumbo v1, "transaction_sub_type"

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "date"

    invoke-virtual {v0, v1, p3, p4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    const-string v1, "duration"

    invoke-virtual {v0, v1, p5}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "sim_ID"

    invoke-virtual {v0, v1, p6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    return-void

    .line 37
    :cond_0
    const-string/jumbo v1, "transaction_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static addMoMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public static addMoSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public static addMtMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static addMtSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string/jumbo v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    const-string/jumbo v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public static addRunApplicationLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "duration"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "application"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v3, "class_name"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    const-string v3, "duration"

    invoke-virtual {v2, v3, p3, p4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatics_ImportPhoneBook(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "importFrom"

    .prologue
    .line 479
    const/16 v1, 0xa

    .line 480
    .local v1, IMPORT_FROM_INIT:I
    const/16 v4, 0xa

    .line 481
    .local v4, IMPORT_FROM_SIM:I
    const/16 v3, 0x14

    .line 482
    .local v3, IMPORT_FROM_SD:I
    const/16 v0, 0x1e

    .line 483
    .local v0, IMPORT_FROM_CLOUD:I
    const/16 v2, 0x28

    .line 489
    .local v2, IMPORT_FROM_PC_SYNC:I
    sparse-switch p1, :sswitch_data_0

    .line 512
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 513
    .local v5, exception:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    .end local v5           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 491
    :sswitch_0
    const-string v7, "import_from_sim"

    .line 520
    .local v7, paramName:Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v8, "statics"

    invoke-direct {v6, v8}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v6, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v8, "statics_type"

    const-string v9, "import_phone_book"

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v8, "param_name"

    invoke-virtual {v6, v8, v7}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 496
    .end local v6           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_1
    const-string v7, "import_from_sd"

    .line 497
    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 501
    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_2
    const-string v7, "import_from_cloud"

    .line 502
    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 506
    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_3
    const-string v7, "import_from_pc_sync"

    .line 507
    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public static addStatics_InstallingThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 532
    const-string/jumbo v0, "package:"

    .line 537
    .local v0, PACKAGE_INTENT_PREFIX:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 538
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 539
    .local v1, exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 555
    .end local v1           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 544
    :cond_1
    const-string/jumbo v3, "package:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    const-string/jumbo v3, "package:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 549
    :cond_2
    new-instance v2, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v3, "statics"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 551
    .local v2, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v3, "statics_type"

    const-string v4, "installing_third_party_app"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string/jumbo v3, "param_name"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatics_MoCall(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "entrance"

    .prologue
    .line 344
    const-string v3, ""

    .line 345
    .local v3, paramName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 347
    .local v2, isEntranceError:Z
    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    .line 348
    const/4 v2, 0x1

    .line 398
    :goto_0
    if-eqz v2, :cond_b

    .line 399
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 400
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v0           #exception:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 349
    :cond_0
    const/16 v4, 0x14

    if-ge p1, v4, :cond_2

    .line 351
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0xa

    if-ge p1, v4, :cond_1

    .line 353
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0xa

    aget-object v3, v4, v5

    goto :goto_0

    .line 356
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 358
    :cond_2
    const/16 v4, 0x1e

    if-ge p1, v4, :cond_4

    .line 360
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x14

    if-ge p1, v4, :cond_3

    .line 362
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x14

    aget-object v3, v4, v5

    goto :goto_0

    .line 365
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 367
    :cond_4
    const/16 v4, 0x28

    if-ge p1, v4, :cond_6

    .line 369
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1e

    if-ge p1, v4, :cond_5

    .line 371
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1e

    aget-object v3, v4, v5

    goto :goto_0

    .line 374
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 376
    :cond_6
    const/16 v4, 0x32

    if-ge p1, v4, :cond_8

    .line 378
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x28

    if-ge p1, v4, :cond_7

    .line 380
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x28

    aget-object v3, v4, v5

    goto :goto_0

    .line 383
    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    .line 385
    :cond_8
    const/16 v4, 0x3c

    if-ge p1, v4, :cond_a

    .line 387
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x32

    if-ge p1, v4, :cond_9

    .line 389
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x32

    aget-object v3, v4, v5

    goto :goto_0

    .line 392
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 395
    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    .line 405
    :cond_b
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v4, "statics"

    invoke-direct {v1, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v4, "statics_type"

    const-string/jumbo v5, "mo_call_entrance"

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v4, "param_name"

    invoke-virtual {v1, v4, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public static addStatics_MoCallMistake(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 420
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "statics"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "statics_type"

    const-string/jumbo v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, "param_name"

    const-string/jumbo v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    return-void
.end method

.method public static addStatics_SwitchMasterCard(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "entrance"

    .prologue
    .line 435
    const/16 v1, 0xa

    .line 436
    .local v1, SWITCH_ENTRANCE_INIT:I
    const/16 v2, 0xa

    .line 437
    .local v2, SWITCH_ENTRANCE_NOTIFICATION:I
    const/16 v0, 0x14

    .line 443
    .local v0, SWITCH_ENTRANCE_DUAL_SIM_SETTING:I
    sparse-switch p1, :sswitch_data_0

    .line 456
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 457
    .local v3, exception:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    .end local v3           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 445
    :sswitch_0
    const-string/jumbo v5, "switch_master_call_from_notification_bar"

    .line 464
    .local v5, paramName:Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v6, "statics"

    invoke-direct {v4, v6}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v4, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v6, "statics_type"

    const-string/jumbo v7, "switch_master_call"

    invoke-virtual {v4, v6, v7}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string/jumbo v6, "param_name"

    invoke-virtual {v4, v6, v5}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 450
    .end local v4           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v5           #paramName:Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v5, "switch_master_call_from_dual_sim_setting"

    .line 451
    .restart local v5       #paramName:Ljava/lang/String;
    goto :goto_1

    .line 443
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addStatus_CallMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 259
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v1, "param_name"

    const-string v2, "call_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public static addStatus_ContactsNumber(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "storageType"
    .parameter "number"

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string v2, "contacts_number_phone_only"

    .line 292
    .local v2, paramName:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v3, "status"

    invoke-direct {v1, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v3, "status_type"

    const-string v4, "contacts_number"

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v3, "param_name"

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v3, "param_value"

    invoke-virtual {v1, v3, p2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    .end local v1           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v2           #paramName:Ljava/lang/String;
    :goto_1
    return-void

    .line 280
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 281
    const-string v2, "contacts_number_sim_only"

    .restart local v2       #paramName:Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v2           #paramName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 283
    const-string v2, "contacts_number_all"

    .restart local v2       #paramName:Ljava/lang/String;
    goto :goto_0

    .line 286
    .end local v2           #paramName:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 287
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static addStatus_DataMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 326
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string/jumbo v1, "param_name"

    const-string v2, "data_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public static addStatus_HaveDualSim(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "haveDualSim"

    .prologue
    .line 147
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string v2, "have_dual_sim"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static addStatus_IMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "imei"

    .prologue
    .line 163
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public static addStatus_InstalledThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 179
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string v2, "installed_third_party_app"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public static addStatus_ShowContactsFilter(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "showFilter"

    .prologue
    .line 211
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "show_contacts_filter"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public static addStatus_Slot1SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "simType"

    .prologue
    .line 227
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "slot1_sim_type"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public static addStatus_Slot2SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "simType"

    .prologue
    .line 243
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "slot2_sim_type"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public static addStatus_SmsMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 309
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string/jumbo v1, "param_name"

    const-string/jumbo v2, "sms_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string/jumbo v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public static addStatus_SwVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "swVersion"

    .prologue
    .line 195
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string/jumbo v1, "status_type"

    const-string/jumbo v2, "sw_version"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    return-void
.end method
