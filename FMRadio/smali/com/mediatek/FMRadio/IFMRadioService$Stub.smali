.class public abstract Lcom/mediatek/FMRadio/IFMRadioService$Stub;
.super Landroid/os/Binder;
.source "IFMRadioService.java"

# interfaces
.implements Lcom/mediatek/FMRadio/IFMRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/IFMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/IFMRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.FMRadio.IFMRadioService"

.field static final TRANSACTION_activeAF:I = 0xf

.field static final TRANSACTION_activeTA:I = 0x10

.field static final TRANSACTION_closeDevice:I = 0x2

.field static final TRANSACTION_deactiveTA:I = 0x11

.field static final TRANSACTION_enableAF:I = 0x19

.field static final TRANSACTION_enablePSRT:I = 0x18

.field static final TRANSACTION_enableTA:I = 0x1a

.field static final TRANSACTION_endSleepTime:I = 0x37

.field static final TRANSACTION_getFrequency:I = 0x1e

.field static final TRANSACTION_getHardwareVersion:I = 0x34

.field static final TRANSACTION_getLRText:I = 0xe

.field static final TRANSACTION_getPS:I = 0xd

.field static final TRANSACTION_getPlaybackPosition:I = 0x2f

.field static final TRANSACTION_getRecordTime:I = 0x2c

.field static final TRANSACTION_getRecorderState:I = 0x2b

.field static final TRANSACTION_getRecordingMode:I = 0x2e

.field static final TRANSACTION_getRecordingName:I = 0x30

.field static final TRANSACTION_getRemainingSeconds:I = 0x3b

.field static final TRANSACTION_getResumeAfterCall:I = 0x32

.field static final TRANSACTION_getSleepTime:I = 0x3a

.field static final TRANSACTION_getStereoMono:I = 0x22

.field static final TRANSACTION_initService:I = 0x16

.field static final TRANSACTION_isAFEnabled:I = 0x1c

.field static final TRANSACTION_isDeviceOpen:I = 0x3

.field static final TRANSACTION_isEarphoneUsed:I = 0x15

.field static final TRANSACTION_isFMOverBTActive:I = 0x31

.field static final TRANSACTION_isPSRTEnabled:I = 0x1b

.field static final TRANSACTION_isPowerUp:I = 0x6

.field static final TRANSACTION_isRDSSupported:I = 0x13

.field static final TRANSACTION_isSIMCardIdle:I = 0x33

.field static final TRANSACTION_isServiceInit:I = 0x17

.field static final TRANSACTION_isSleepTimerActive:I = 0x38

.field static final TRANSACTION_isSleepTimerExpired:I = 0x39

.field static final TRANSACTION_isTAEnabled:I = 0x1d

.field static final TRANSACTION_openDevice:I = 0x1

.field static final TRANSACTION_powerDown:I = 0x5

.field static final TRANSACTION_powerUp:I = 0x4

.field static final TRANSACTION_readCapArray:I = 0x21

.field static final TRANSACTION_readRDS:I = 0xc

.field static final TRANSACTION_readRdsBler:I = 0x25

.field static final TRANSACTION_readRssi:I = 0x20

.field static final TRANSACTION_resumeFMAudio:I = 0x1f

.field static final TRANSACTION_saveRecording:I = 0x28

.field static final TRANSACTION_seek:I = 0x8

.field static final TRANSACTION_setMute:I = 0x12

.field static final TRANSACTION_setRDS:I = 0xb

.field static final TRANSACTION_setRecordingMode:I = 0x2d

.field static final TRANSACTION_setStereoMono:I = 0x23

.field static final TRANSACTION_setStopPressed:I = 0x35

.field static final TRANSACTION_startPlayback:I = 0x29

.field static final TRANSACTION_startRecording:I = 0x26

.field static final TRANSACTION_startScan:I = 0x9

.field static final TRANSACTION_startSleepTime:I = 0x36

.field static final TRANSACTION_stopPlayback:I = 0x2a

.field static final TRANSACTION_stopRecording:I = 0x27

.field static final TRANSACTION_stopScan:I = 0xa

.field static final TRANSACTION_switchAntenna:I = 0x24

.field static final TRANSACTION_tune:I = 0x7

.field static final TRANSACTION_useEarphone:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 2
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/FMRadio/IFMRadioService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/FMRadio/IFMRadioService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/FMRadio/IFMRadioService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->openDevice()Z

    move-result v2

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->closeDevice()Z

    move-result v2

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isDeviceOpen()Z

    move-result v2

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    :sswitch_4
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 74
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerUp(F)Z

    move-result v2

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    :sswitch_5
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z

    move-result v2

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    :sswitch_6
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isPowerUp()Z

    move-result v2

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    :sswitch_7
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 100
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->tune(F)Z

    move-result v2

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    :sswitch_8
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 112
    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->seek(FZ)F

    move-result v0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 119
    :sswitch_9
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->startScan()[I

    move-result-object v0

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 127
    :sswitch_a
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopScan()Z

    move-result v2

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    :sswitch_b
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 138
    :cond_9
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setRDS(Z)I

    move-result v0

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    :sswitch_c
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->readRDS()I

    move-result v0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    :sswitch_d
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getPS()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :sswitch_e
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getLRText()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :sswitch_f
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->activeAF()I

    move-result v0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    :sswitch_10
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->activeTA()I

    move-result v0

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    :sswitch_11
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->deactiveTA()I

    move-result v0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    :sswitch_12
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 196
    :cond_a
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setMute(Z)I

    move-result v0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    :sswitch_13
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isRDSSupported()I

    move-result v0

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    :sswitch_14
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    .line 214
    :cond_b
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->useEarphone(Z)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 220
    :sswitch_15
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isEarphoneUsed()Z

    move-result v2

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v2, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 228
    :sswitch_16
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->initService(I)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 237
    :sswitch_17
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isServiceInit()Z

    move-result v2

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v2, :cond_d

    move v0, v1

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    :sswitch_18
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    .line 248
    :cond_e
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->enablePSRT(Z)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 254
    :sswitch_19
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 257
    :cond_f
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->enableAF(Z)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 263
    :sswitch_1a
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    .line 266
    :cond_10
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->enableTA(Z)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 272
    :sswitch_1b
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isPSRTEnabled()Z

    move-result v2

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v2, :cond_11

    move v0, v1

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 280
    :sswitch_1c
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isAFEnabled()Z

    move-result v2

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v2, :cond_12

    move v0, v1

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 288
    :sswitch_1d
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isTAEnabled()Z

    move-result v2

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v2, :cond_13

    move v0, v1

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_1e
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getFrequency()I

    move-result v0

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 304
    :sswitch_1f
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->resumeFMAudio()V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 311
    :sswitch_20
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->readRssi()I

    move-result v0

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    :sswitch_21
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->readCapArray()I

    move-result v0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    :sswitch_22
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getStereoMono()Z

    move-result v2

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v2, :cond_14

    move v0, v1

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    :sswitch_23
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    move v2, v1

    .line 338
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setStereoMono(Z)Z

    move-result v2

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v2, :cond_15

    move v0, v1

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_16
    move v2, v0

    .line 337
    goto :goto_1

    .line 345
    :sswitch_24
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->switchAntenna(I)I

    move-result v0

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    :sswitch_25
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->readRdsBler()I

    move-result v0

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    :sswitch_26
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->startRecording()V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 370
    :sswitch_27
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopRecording()V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 377
    :sswitch_28
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->saveRecording(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 386
    :sswitch_29
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->startPlayback()V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 393
    :sswitch_2a
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopPlayback()V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 400
    :sswitch_2b
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getRecorderState()I

    move-result v0

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 408
    :sswitch_2c
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getRecordTime()J

    move-result-wide v2

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 416
    :sswitch_2d
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 419
    :cond_17
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setRecordingMode(Z)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 425
    :sswitch_2e
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getRecordingMode()Z

    move-result v2

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v2, :cond_18

    move v0, v1

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    :sswitch_2f
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getPlaybackPosition()I

    move-result v0

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    :sswitch_30
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :sswitch_31
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isFMOverBTActive()Z

    move-result v2

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v2, :cond_19

    move v0, v1

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 457
    :sswitch_32
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getResumeAfterCall()Z

    move-result v2

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v2, :cond_1a

    move v0, v1

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 465
    :sswitch_33
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isSIMCardIdle()Z

    move-result v2

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    if-eqz v2, :cond_1b

    move v0, v1

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 473
    :sswitch_34
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getHardwareVersion()[I

    move-result-object v0

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 481
    :sswitch_35
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    move v0, v1

    .line 484
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setStopPressed(Z)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 490
    :sswitch_36
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 493
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->startSleepTime(J)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 499
    :sswitch_37
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->endSleepTime()V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 506
    :sswitch_38
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isSleepTimerActive()Z

    move-result v2

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v2, :cond_1d

    move v0, v1

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 514
    :sswitch_39
    const-string v2, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isSleepTimerExpired()Z

    move-result v2

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v2, :cond_1e

    move v0, v1

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 522
    :sswitch_3a
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getSleepTime()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :sswitch_3b
    const-string v0, "com.mediatek.FMRadio.IFMRadioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->getRemainingSeconds()J

    move-result-wide v2

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
