.class public Lcom/mediatek/FMRadio/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"

# interfaces
.implements Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;,
        Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_EXIT_FM:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_EXIT_FM"

.field private static final ACTION_FM_BUTTON:Ljava/lang/String; = "android.intent.action.FM_BUTTON"

.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field public static final ACTION_RDS_AF_ACTIVED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

.field public static final ACTION_RDS_PS_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

.field public static final ACTION_RDS_RT_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

.field public static final ACTION_RDS_TA_ACTIVED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

.field public static final ACTION_RDS_TA_DEACTIVED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

.field public static final ACTION_RECORDER_ERROR:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

.field public static final ACTION_RECORDING_MODE_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

.field public static final ACTION_RECORDING_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final ACTION_USE_EARPHONE:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_USE_EARPHONE"

.field private static final AUDIO_PATH_EARPHONE:Ljava/lang/String; = "AudioSetForceToSpeaker=0"

.field private static final AUDIO_PATH_LOUDSPEAKER:Ljava/lang/String; = "AudioSetForceToSpeaker=1"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREV:Ljava/lang/String; = "prev"

.field public static final CONVERT_RATE:I = 0xa

.field public static final EXTRA_FMRADIO_ISPOWERUP:Ljava/lang/String; = "EXTRA_FMRADIO_ISPOWERUP"

.field public static final EXTRA_IS_USE_EARPHONE:Ljava/lang/String; = "EXTRA_IS_USE_EARPHONE"

.field public static final EXTRA_RDS_AF_ACTIVED:Ljava/lang/String; = "EXTRA_RDS_AF_ACTIVED"

.field public static final EXTRA_RDS_PS:Ljava/lang/String; = "EXTRA_RDS_PS"

.field public static final EXTRA_RDS_RT:Ljava/lang/String; = "EXTRA_RDS_RT"

.field public static final EXTRA_RDS_TA_ACTIVED:Ljava/lang/String; = "EXTRA_RDS_TA_ACTIVED"

.field public static final EXTRA_RDS_TA_DEACTIVED:Ljava/lang/String; = "EXTRA_RDS_TA_DEACTIVED"

.field public static final EXTRA_RECORDER_ERROR_STATE:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDER_ERROR_STATE"

.field public static final EXTRA_RECORDING_MODE:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDING_MODE"

.field public static final EXTRA_RECORDING_STATE:Ljava/lang/String; = "EXTRA_RECORDING_STATE"

.field private static final FM_AUDIO_DISABLE:Ljava/lang/String; = "AudioSetFmEnable=0"

.field private static final FM_AUDIO_ENABLE:Ljava/lang/String; = "AudioSetFmEnable=1"

.field public static final MESSAGE_FROMSOUNDER_TOFM_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final MSG_FM_POWER_DOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final MSG_FM_POWER_UP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field public static final MSG_RESUME_FM:I = 0x3e8

.field private static final NOTIFICATION_ID:I = 0x1

.field public static final RDS_EVENT_AF:I = 0x80

.field public static final RDS_EVENT_AFON_LIST:I = 0x200

.field public static final RDS_EVENT_AF_LIST:I = 0x100

.field public static final RDS_EVENT_FLAGS:I = 0x1

.field public static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field public static final RDS_EVENT_LOCDATETIME:I = 0x20

.field public static final RDS_EVENT_NO_RDS:I = 0x4000

.field public static final RDS_EVENT_PI_CODE:I = 0x2

.field public static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field public static final RDS_EVENT_PTY_CODE:I = 0x4

.field public static final RDS_EVENT_RDS:I = 0x2000

.field public static final RDS_EVENT_RDS_TIMER:I = 0x8000

.field public static final RDS_EVENT_TAON:I = 0x400

.field public static final RDS_EVENT_TAON_OFF:I = 0x800

.field public static final RDS_EVENT_UTCDATETIME:I = 0x10

.field private static final SLEEPTIMER_EXPIRED:I = 0x1001

.field private static final SLEEPTIMER_UPDATE:I = 0x1002

.field private static final SLEEP_TOGGLE_SECONDS:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "FMRadioService"

.field private static mStrSleepTime:Ljava/lang/String;

.field private static sFMService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/FMRadio/FMRadioService;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private doSleepProcessing:Ljava/lang/Runnable;

.field private mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

.field private mCurrentStation:I

.field private mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mFMPlayer:Landroid/media/MediaPlayer;

.field mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

.field private mICallBack:Landroid/os/IBinder;

.field private mIsAFEnabled:Z

.field private mIsConnectBluetooth:Z

.field private mIsDeviceOpen:Z

.field private mIsEarphoneUsed:Z

.field private mIsExit:Z

.field private mIsLostFocus:Z

.field private mIsPSRTEnabled:Z

.field private mIsPowerUp:Z

.field private mIsRecording:Z

.field private mIsResumeAfterCall:Z

.field private mIsSIM1Idle:Z

.field private mIsSIM2Idle:Z

.field private mIsSearching:Z

.field private mIsServiceInit:Z

.field private mIsStopPressed:Z

.field private mIsStopScanCalled:Z

.field private mIsTAEnabled:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

.field private mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

.field private mRDSThread:Ljava/lang/Thread;

.field private mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mSDListener:Landroid/content/BroadcastReceiver;

.field private mSeeking:Z

.field private mSleepAtPhoneTime:J

.field private mSleepUpdateHandlerThread:Ljava/lang/Thread;

.field private mUIUpdateHandlerHandler:Landroid/os/Handler;

.field private mUsingFMViaBTController:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    .line 1460
    const-string v0, ""

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->mStrSleepTime:Ljava/lang/String;

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1480
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/mediatek/FMRadio/FMRadioService;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->sFormatter:Ljava/util/Formatter;

    .line 1482
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 137
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    .line 138
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z

    .line 140
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 141
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;

    .line 143
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 144
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 166
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 173
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    .line 174
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    .line 175
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z

    .line 177
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z

    .line 178
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 179
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 180
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    .line 181
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    .line 182
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 183
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 184
    const/16 v0, 0x38d

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 185
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 186
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 187
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 188
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 197
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z

    .line 198
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z

    .line 200
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    .line 201
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z

    .line 203
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z

    .line 204
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 205
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 665
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$1;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->sHandler:Landroid/os/Handler;

    .line 691
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$2;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    .line 1388
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 1393
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    .line 1414
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$3;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->doSleepProcessing:Ljava/lang/Runnable;

    .line 1503
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$4;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    .line 1948
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSeeking:Z

    .line 2228
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsLostFocus:Z

    .line 2229
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$9;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$9;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2326
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$10;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$10;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2338
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$11;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$11;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/mediatek/FMRadio/FMRadioService;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioService;)J
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/mediatek/FMRadio/FMRadioService;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->initiateSleepThread()V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->hasSleepTimerExpired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->hasSleepTimerActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioService;->mStrSleepTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->updateExpiredSleepTime()V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSeeking:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsLostFocus:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    return p1
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return p1
.end method

.method private enableFMAudio(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1910
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    if-eqz p1, :cond_2

    .line 1912
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1913
    if-ne v3, v0, :cond_1

    .line 1914
    const-string v0, "FMRadioService"

    const-string v1, "FM get audio Focus"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    const-string v0, "FMRadioService"

    const-string v1, "warning: FM audio is already enabled."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :goto_0
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.enableFMAudio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsLostFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return-void

    .line 1919
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    :goto_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1924
    const-string v0, "FMRadioService"

    const-string v1, "Start FM audio."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1920
    :catch_0
    move-exception v0

    .line 1921
    const-string v1, "FMRadioService"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1927
    :cond_1
    const-string v0, "FMRadioService"

    const-string v1, "FM can\'t get audio focus"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1930
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsLostFocus:Z

    if-nez v0, :cond_3

    .line 1931
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1933
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1934
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 1936
    :cond_4
    const-string v0, "FMRadioService"

    const-string v1, "warning: FM audio is already disabled."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasSleepTimerActive()Z
    .locals 5

    .prologue
    .line 1452
    const/4 v0, 0x0

    .line 1453
    iget-wide v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1455
    const/4 v0, 0x1

    .line 1457
    :cond_0
    return v0
.end method

.method private hasSleepTimerExpired()Z
    .locals 5

    .prologue
    .line 1438
    const/4 v0, 0x1

    .line 1439
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->hasSleepTimerActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1443
    iget-wide v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1445
    const/4 v0, 0x0

    .line 1448
    :cond_0
    return v0
.end method

.method private initiateSleepThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1396
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 1404
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1412
    :cond_2
    return-void
.end method

.method private makeTimeString(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 1485
    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1491
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioService;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1493
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioService;->sTimeArgs:[Ljava/lang/Object;

    .line 1494
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1495
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1496
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1497
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1498
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1500
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioService;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2122
    const-string v0, "FMRadioService"

    const-string v1, ">>> onStateChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/FMRadioService;

    .line 2124
    if-nez v0, :cond_0

    .line 2125
    const-string v0, "FMRadioService"

    const-string v1, "onStateChanged: service ref is null!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :goto_0
    return-void

    .line 2128
    :cond_0
    if-nez p0, :cond_1

    .line 2130
    const-string v1, "FMRadioService"

    const-string v2, "onStateChanged: FM has been powered down"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-boolean v1, v0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v1, :cond_1

    .line 2133
    invoke-direct {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 2134
    invoke-direct {v0}, Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V

    .line 2135
    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    .line 2136
    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    .line 2137
    iput-boolean v3, v0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 2140
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2141
    const-string v2, "EXTRA_FMRADIO_ISPOWERUP"

    iget-boolean v3, v0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2142
    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2145
    :cond_1
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< onStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerSDListener()V
    .locals 2

    .prologue
    .line 2149
    const-string v0, "FMRadioService"

    const-string v1, "registerSDListener >>> "

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2151
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$8;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$8;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 2180
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2181
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2182
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2183
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2184
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2185
    const-string v0, "FMRadioService"

    const-string v1, "registerSDListener <<< "

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    return-void
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 2106
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.removeNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopForeground(Z)V

    .line 2108
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.removeNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    return-void
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1895
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.setLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1897
    const-string v0, "FMRadioService"

    const-string v1, "New RT is the same as current."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.setLRText"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    return-void

    .line 1899
    :cond_0
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 1902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1903
    const-string v1, "EXTRA_RDS_RT"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1904
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setPS(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1880
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.setPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1882
    const-string v0, "FMRadioService"

    const-string v1, "New PS is the same as current."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.setPS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    return-void

    .line 1884
    :cond_0
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 1887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1888
    const-string v1, "EXTRA_RDS_PS"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2052
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2054
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030009

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2056
    const v3, 0x7f060053

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2058
    new-instance v2, Landroid/content/Intent;

    const-string v3, "pause"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2059
    const-string v3, "command"

    const-string v4, "pause"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    const-class v3, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2061
    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2062
    const v3, 0x7f060055

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2064
    new-instance v2, Landroid/content/Intent;

    const-string v3, "prev"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2065
    const-string v3, "command"

    const-string v4, "prev"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    const-class v3, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2067
    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2068
    const v3, 0x7f060054

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2070
    new-instance v2, Landroid/content/Intent;

    const-string v3, "next"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2071
    const-string v3, "command"

    const-string v4, "next"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    const-class v3, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2073
    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2074
    const v3, 0x7f060056

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2076
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2077
    const-string v3, "collapse_statusbar"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2078
    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2080
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2081
    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2083
    const v1, 0x7f020032

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2084
    invoke-virtual {p0, v6, v0}, Lcom/mediatek/FMRadio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 2103
    return-void
.end method

.method private startRDSThread()V
    .locals 2

    .prologue
    .line 1733
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    .line 1735
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1736
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$5;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 1859
    const-string v0, "FMRadioService"

    const-string v1, "Start RDS Thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1864
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-void

    .line 1862
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "Error: RDS thread is already started."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopRDSThread()V
    .locals 2

    .prologue
    .line 1868
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1870
    const-string v0, "FMRadioService"

    const-string v1, "Error: RDS thread is not started."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return-void

    .line 1873
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    .line 1874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private updateExpiredSleepTime()V
    .locals 4

    .prologue
    .line 1463
    .line 1464
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->hasSleepTimerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1467
    iget-wide v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_1

    .line 1469
    iget-wide v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1470
    invoke-direct {p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->makeTimeString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->mStrSleepTime:Ljava/lang/String;

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    .line 2112
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.updateNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 2114
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 2118
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.updateNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    return-void

    .line 2116
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "FM is not power up."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter

    .prologue
    .line 1709
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onBind"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.onBind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 1715
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1718
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1719
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 1722
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1557
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1559
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    .line 1560
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1561
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1562
    const-string v1, "FMRadioService"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1563
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1564
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 1565
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1566
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1568
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const-string v1, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1581
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1584
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1585
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1586
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1587
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1588
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1589
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1590
    const-string v1, "android.intent.action.FM_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1597
    const-string v1, "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1598
    const-string v1, "android.server.a2dp.action.FM_OVER_BT_HOST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1599
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1601
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1602
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1603
    const-string v1, "FMRadioService"

    const-string v2, "Register broadcast receiver."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1607
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1609
    const-string v1, "FMRadioService"

    const-string v2, "Dual SIM phone"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-direct {v1, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 1611
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v1, v4}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->setSIMID(I)V

    .line 1612
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v0, v1, v6, v4}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1614
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-direct {v1, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 1615
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->setSIMID(I)V

    .line 1616
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v0, v1, v6, v3}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1626
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerSDListener()V

    .line 1628
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :goto_0
    return-void

    .line 1569
    :catch_0
    move-exception v0

    .line 1571
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1573
    :catch_1
    move-exception v0

    .line 1575
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1577
    :catch_2
    move-exception v0

    .line 1578
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1632
    sput-object v6, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    .line 1633
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isRDSSupported()I

    move-result v0

    if-ne v5, v0, :cond_8

    .line 1636
    const-string v0, "FMRadioService"

    const-string v1, "RDS is supported. Stop the RDS thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1646
    const-string v0, "FMRadioService"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1648
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1653
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1654
    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 1655
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1656
    const-string v0, "FMRadioService"

    const-string v1, "Stop playback FMRecorder."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setMute(Z)I

    .line 1666
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    if-nez v0, :cond_2

    .line 1667
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->useEarphone(Z)V

    .line 1669
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_3

    .line 1670
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z

    .line 1672
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-eqz v0, :cond_4

    .line 1673
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->closeDevice()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1680
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    .line 1681
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1685
    :cond_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1687
    const-string v1, "FMRadioService"

    const-string v2, "Dual SIM phone"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v0, v1, v4, v4}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1690
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v0, v1, v4, v5}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1697
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_6

    .line 1698
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1700
    :cond_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 1701
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1703
    :cond_7
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1704
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 1705
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return-void

    .line 1639
    :cond_8
    :try_start_2
    const-string v0, "FMRadioService"

    const-string v1, "RDS is not supported."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1657
    :cond_9
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    .line 1659
    const-string v0, "FMRadioService"

    const-string v1, "Discard Recording."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1675
    :catch_1
    move-exception v0

    .line 1676
    const-string v0, "FMRadioService"

    const-string v1, "Exception: Cannot call binder function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 1726
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 1728
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-void
.end method

.method public onRecorderError(I)V
    .locals 3
    .parameter

    .prologue
    .line 2205
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecorderError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2207
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2208
    const-string v1, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDER_ERROR_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2209
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2210
    packed-switch p1, :pswitch_data_0

    .line 2223
    :pswitch_0
    const-string v0, "FMRadioService"

    const-string v1, "onRecorderError: unknown error!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 2219
    :pswitch_2
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-nez v0, :cond_0

    .line 2220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 2210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRecorderStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 2189
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> onRecorderStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z

    if-nez v0, :cond_2

    .line 2191
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getPlayCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    if-nez v0, :cond_2

    .line 2192
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 2193
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setPlayCompleted(Z)V

    .line 2197
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2198
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2199
    const-string v1, "EXTRA_RECORDING_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2200
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2201
    const-string v0, "FMRadioService"

    const-string v1, "<<< onRecorderStateChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1951
    if-eqz p1, :cond_0

    .line 1952
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1953
    const-string v1, "command"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1954
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const-string v0, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1958
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSeeking:Z

    if-eqz v0, :cond_1

    .line 2037
    :cond_0
    :goto_0
    return v5

    .line 1961
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1965
    :catch_0
    move-exception v0

    .line 1967
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1969
    :cond_2
    const-string v0, "prev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1970
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSeeking:Z

    if-nez v0, :cond_0

    .line 1973
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$6;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioService$6;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2002
    :cond_3
    const-string v0, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSeeking:Z

    if-nez v0, :cond_0

    .line 2006
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$7;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioService$7;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
