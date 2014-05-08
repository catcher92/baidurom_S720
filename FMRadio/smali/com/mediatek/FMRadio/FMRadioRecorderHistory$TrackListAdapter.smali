.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;,
        Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;,
        Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field bIsMulSel:Z

.field private mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDisableNowPlayingIndicator:Z

.field mDurationIdx:I

.field private mDurationTimeFormat:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

.field mTitleIdx:I

.field mViewHold:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mediatek/FMRadio/FMRadioRecorderHistory;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1539
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1443
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    .line 1445
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mConstraintIsValid:Z

    .line 1447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mViewHold:Ljava/util/ArrayList;

    .line 1460
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mDurationTimeFormat:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

    .line 1540
    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    .line 1541
    invoke-direct {p0, p4}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1542
    iput-boolean p7, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mIsNowPlaying:Z

    .line 1543
    iput-boolean p8, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 1545
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mQueryHandler:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    .line 1546
    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory;
    .locals 1
    .parameter

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 1561
    if-eqz p1, :cond_0

    .line 1562
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mTitleIdx:I

    .line 1563
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mArtistIdx:I

    .line 1564
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mDurationIdx:I

    .line 1569
    :try_start_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 1579
    :cond_0
    return-void

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1637
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1638
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2700()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1639
    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->reCalc(Landroid/database/Cursor;)V
    invoke-static {p3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2800(Landroid/database/Cursor;)V

    .line 1640
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2702(I)I

    .line 1642
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;

    .line 1643
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1645
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1646
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1647
    if-eqz v3, :cond_2

    .line 1648
    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->size(Ljava/io/File;)I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2900(Ljava/io/File;)I

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getFileSizeStr(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$3000(I)Ljava/lang/String;

    move-result-object v4

    .line 1649
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1650
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1651
    if-lez v5, :cond_1

    .line 1652
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1654
    :cond_1
    iget-object v5, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2_size:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 1658
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1659
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1662
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mTitleIdx:I

    iget-object v3, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v1, v3}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1663
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v4, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v4, v4, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v1, v3, v7, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 1664
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1665
    if-eqz v1, :cond_4

    .line 1666
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1667
    iget-object v3, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mDurationTimeFormat:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->bIsMulSel:Z

    if-eqz v1, :cond_5

    .line 1678
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1679
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1680
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1681
    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1682
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1683
    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2_size:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1703
    :goto_1
    return-void

    .line 1671
    :cond_4
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    const v3, 0x7f040076

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1691
    :cond_5
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1692
    iget-object v1, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1693
    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2_size:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1707
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1708
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1709
    const/4 p1, 0x0

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #setter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1102(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1713
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1714
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1716
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1717
    if-eqz p1, :cond_2

    move v0, v1

    .line 1719
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1721
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1722
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1725
    :cond_2
    return-void
.end method

.method public getQueryHandler()Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mQueryHandler:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1583
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1584
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1585
    const v0, 0x7f060062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1586
    sget-object v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1587
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;-><init>()V

    .line 1588
    const v0, 0x7f060067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 1589
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$1;

    invoke-direct {v4, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$1;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1605
    const v0, 0x7f060063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 1607
    const v0, 0x7f060065

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 1608
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v0, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1610
    const v0, 0x7f060064

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    .line 1612
    const v0, 0x7f060066

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2_size:Landroid/widget/TextView;

    .line 1614
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->bIsMulSel:Z

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1617
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1618
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1619
    iget-object v2, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1620
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1621
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2_size:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1629
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1630
    iput-object v1, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->V:Landroid/view/View;

    .line 1631
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mViewHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    return-object v1

    .line 1625
    :cond_0
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1626
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1627
    iget-object v0, v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2_size:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter

    .prologue
    .line 1729
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1730
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1738
    :goto_0
    return-object v0

    .line 1735
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mQueryHandler:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    const/4 v3, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getTrackCursor(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, v2, v1, v3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$700(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1736
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1737
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    .line 1550
    return-void
.end method

.method public setIsMulti(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1553
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->bIsMulSel:Z

    .line 1554
    return-void
.end method
