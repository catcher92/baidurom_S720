.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final AUTOREJECTED_TYPE:I = 0x5

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri; = null

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IP_PREFIX:Ljava/lang/String; = "ip_prefix"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"

.field public static final VTCALL:Ljava/lang/String; = "vtcall"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 83
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    .locals 10
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"

    .prologue
    .line 287
    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;
    .locals 10
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "simId"

    .prologue
    .line 307
    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;
    .locals 19
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "simId"
    .parameter "vtCall"

    .prologue
    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 331
    .local v2, resolver:Landroid/content/ContentResolver;
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 332
    const-string p2, "-2"

    .line 333
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 343
    :cond_0
    :goto_0
    new-instance v18, Landroid/content/ContentValues;

    const/4 v3, 0x5

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 345
    .local v18, values:Landroid/content/ContentValues;
    const-string/jumbo v3, "number"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v3, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v3, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    const-string v3, "duration"

    move/from16 v0, p7

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const-string/jumbo v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 351
    const-string v3, "is_read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    :cond_1
    if-eqz p0, :cond_2

    .line 354
    const-string/jumbo v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v3, "numbertype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string/jumbo v3, "numberlabel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_2
    const-string/jumbo v3, "simid"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    if-ltz p9, :cond_3

    .line 360
    const-string/jumbo v3, "vtcall"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    :cond_3
    if-eqz p0, :cond_5

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 373
    .local v14, normalizedPhoneNumber:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data4 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v14, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 387
    .end local v14           #normalizedPhoneNumber:Ljava/lang/String;
    .local v11, cursor:Landroid/database/Cursor;
    :goto_1
    if-eqz v11, :cond_5

    .line 389
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    sget-object v3, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string v5, "call"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 395
    .local v12, feedbackUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v12           #feedbackUri:Landroid/net/Uri;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 404
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_5
    const/4 v13, 0x0

    .line 406
    .local v13, ipPrefix:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipprefix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 410
    if-eqz v13, :cond_6

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_6

    .line 412
    const-string v3, "ip_prefix"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 414
    .local v17, tmpNumber:Ljava/lang/String;
    const-string/jumbo v3, "number"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .end local v17           #tmpNumber:Ljava/lang/String;
    :cond_6
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 420
    .local v16, result:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 423
    invoke-static/range {v3 .. v10}, Lcom/lenovo/smart/Smart;->addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V

    .line 426
    return-object v16

    .line 334
    .end local v13           #ipPrefix:Ljava/lang/String;
    .end local v16           #result:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_7
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 335
    const-string p2, "-3"

    .line 336
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 337
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 339
    :cond_9
    const-string p2, "-1"

    .line 340
    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 379
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 380
    .local v15, phoneNumber:Ljava/lang/String;
    :goto_2
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data1 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .restart local v11       #cursor:Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v15           #phoneNumber:Ljava/lang/String;
    :cond_b
    move-object/from16 v15, p2

    .line 379
    goto :goto_2

    .line 398
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 439
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 445
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v1

    .line 448
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 450
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 456
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    return-void
.end method