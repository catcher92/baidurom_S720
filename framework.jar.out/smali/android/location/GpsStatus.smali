.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Landroid/location/GpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "GpsStatus"

    sput-object v0, Landroid/location/GpsStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v1, 0xff

    new-array v1, v1, [Landroid/location/GpsSatellite;

    iput-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    .line 78
    new-instance v1, Landroid/location/GpsStatus$1;

    invoke-direct {v1, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v1, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    new-instance v2, Landroid/location/GpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Landroid/location/GpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    return-object v0
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 243
    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[F[I[I[I)V
    .locals 9
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"

    .prologue
    .line 163
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 165
    iget-object v6, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/location/GpsSatellite;->mValid:Z

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_7

    .line 169
    aget v6, p2, v1

    add-int/lit8 v3, v6, -0x1

    .line 170
    .local v3, prn:I
    div-int/lit8 v0, v3, 0x20

    .line 171
    .local v0, baseNum:I
    mul-int/lit8 v6, v0, 0x20

    sub-int v2, v3, v6

    .line 172
    .local v2, posInInt:I
    const/4 v6, 0x1

    shl-int v4, v6, v2

    .line 173
    .local v4, prnShift:I
    if-ltz v2, :cond_1

    const/16 v6, 0x20

    if-ge v2, v6, :cond_1

    if-ltz v0, :cond_1

    const/16 v6, 0x8

    if-lt v0, v6, :cond_2

    .line 175
    :cond_1
    sget-object v6, Landroid/location/GpsStatus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "an error has been happened posInInt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "baseNum:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    if-ltz v3, :cond_3

    iget-object v6, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 179
    iget-object v6, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v5, v6, v3

    .line 181
    .local v5, satellite:Landroid/location/GpsSatellite;
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/location/GpsSatellite;->mValid:Z

    .line 182
    aget v6, p3, v1

    iput v6, v5, Landroid/location/GpsSatellite;->mSnr:F

    .line 183
    aget v6, p4, v1

    iput v6, v5, Landroid/location/GpsSatellite;->mElevation:F

    .line 184
    aget v6, p5, v1

    iput v6, v5, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 185
    aget v6, p6, v0

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v5, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 186
    aget v6, p7, v0

    and-int/2addr v6, v4

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, v5, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 187
    aget v6, p8, v0

    and-int/2addr v6, v4

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v5, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v5           #satellite:Landroid/location/GpsSatellite;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .restart local v5       #satellite:Landroid/location/GpsSatellite;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 186
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 187
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 190
    .end local v0           #baseNum:I
    .end local v2           #posInInt:I
    .end local v3           #prn:I
    .end local v4           #prnShift:I
    .end local v5           #satellite:Landroid/location/GpsSatellite;
    :cond_7
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v1

    iput v1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .parameter "ttff"

    .prologue
    .line 210
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 211
    return-void
.end method
