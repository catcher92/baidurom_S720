.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 260
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 261
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 262
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 266
    const/4 v7, 0x0

    .line 267
    .local v7, lookupUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 268
    .local v4, createUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 271
    .local v10, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 302
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_1
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v11, v7}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 307
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v11}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 309
    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    .line 311
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v13, 0x3

    iget-object v14, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v14, v14, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v11, v12, v7, v13, v14}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 357
    .end local p2
    :cond_2
    :goto_1
    return-void

    .line 273
    .restart local p2
    :pswitch_0
    const/4 v10, 0x1

    .line 274
    :try_start_0
    const-string/jumbo v12, "tel"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    const/4 v13, 0x0

    invoke-static {v12, v11, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 278
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 279
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 280
    .local v2, contactId:J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, lookupKey:Ljava/lang/String;
    invoke-static {v2, v3, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 282
    goto :goto_0

    .line 287
    .end local v2           #contactId:J
    .end local v6           #lookupKey:Ljava/lang/String;
    :pswitch_2
    const/4 v10, 0x1

    .line 288
    const-string/jumbo v12, "mailto"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    const/4 v13, 0x0

    invoke-static {v12, v11, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 292
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 293
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 294
    .restart local v2       #contactId:J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 295
    .restart local v6       #lookupKey:Ljava/lang/String;
    invoke-static {v2, v3, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 301
    .end local v2           #contactId:J
    .end local v6           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz p3, :cond_3

    .line 302
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v11

    .line 313
    :cond_4
    if-eqz v4, :cond_2

    .line 320
    const/4 v11, 0x3

    move/from16 v0, p1

    if-ne v11, v0, :cond_5

    .line 321
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    iget v1, v11, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 322
    .local v1, appScale:F
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 323
    .local v8, pos:[I
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11, v8}, Landroid/widget/QuickContactBadge;->getLocationOnScreen([I)V

    .line 325
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 326
    .local v9, rect:Landroid/graphics/Rect;
    const/4 v11, 0x0

    aget v11, v8, v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->left:I

    .line 327
    const/4 v11, 0x1

    aget v11, v8, v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->top:I

    .line 328
    const/4 v11, 0x0

    aget v11, v8, v11

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 329
    const/4 v11, 0x1

    aget v11, v8, v11

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 331
    new-instance v5, Landroid/content/Intent;

    const-string v11, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v5, intent:Landroid/content/Intent;
    const/high16 v11, 0x1420

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 336
    const-string/jumbo v11, "mode"

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v11, "exclude_mimes"

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v12, v12, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v11, "data_type"

    const-string/jumbo v12, "tel"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v11, "data"

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    :try_start_1
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 345
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 350
    .end local v1           #appScale:F
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #pos:[I
    .end local v9           #rect:Landroid/graphics/Rect;
    .restart local p2
    :cond_5
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string v11, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v5, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 351
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 352
    .end local v5           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v11

    goto/16 :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
