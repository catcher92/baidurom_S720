.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DurationTimeFormat"
.end annotation


# instance fields
.field private mTimeFormatter:Ljava/util/Formatter;

.field private mTimeText:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    .line 1464
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x3c

    .line 1467
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1468
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1469
    const-wide/16 v2, 0xe10

    div-long v2, v0, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1470
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%2d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%2d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0xe10

    div-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    div-long v5, v0, v7

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    rem-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1477
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1471
    :cond_0
    div-long v2, v0, v7

    rem-long/2addr v2, v7

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1472
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%2d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%2d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    div-long v5, v0, v7

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    rem-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 1474
    :cond_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%2d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    rem-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0
.end method
