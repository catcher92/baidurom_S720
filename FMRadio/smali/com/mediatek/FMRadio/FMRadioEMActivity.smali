.class public Lcom/mediatek/FMRadio/FMRadioEMActivity;
.super Landroid/app/Activity;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;,
        Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;,
        Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field private static final FM_SAVE_INSTANCE_STATE_EARPHONEUSED:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_EARPHONEUSED"

.field private static final FM_SAVE_INSTANCE_STATE_INITED:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_INITED"

.field private static final FM_SAVE_INSTANCE_STATE_PLAYING:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_PLAYING"

.field public static final MSGID_ANTENNA_UNAVAILABE:I = 0xa

.field public static final MSGID_INIT_OK:I = 0xd

.field public static final MSGID_OK:I = 0x2

.field public static final MSGID_PLAY_FAIL:I = 0x9

.field public static final MSGID_PLAY_FINISH:I = 0x8

.field public static final MSGID_RETRY:I = 0x1

.field public static final MSGID_SEARCH_FINISH:I = 0x3

.field public static final MSGID_SEEK_FAIL:I = 0x7

.field public static final MSGID_SEEK_FINISH:I = 0x6

.field public static final MSGID_SHOW_TOAST:I = 0xb

.field public static final MSGID_TICK_EVENT:I = 0xc

.field public static final MSGID_UPDATE_CURRENT_STATION:I = 0x5

.field public static final MSGID_UPDATE_RDS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "FMRadioEM"

.field public static final TOAST_TIMER_DELAY:J = 0x7d0L

.field public static final TYPE_MSGID:Ljava/lang/String; = "MSGID"

.field public static final TYPE_TOAST_STRING:Ljava/lang/String; = "TYPE_TOAST_STRING"


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

.field private mButtonTune:Landroid/widget/Button;

.field private mCurrentStation:I

.field private mEditFreq:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

.field private mIsAFEnabled:Z

.field private mIsDestroying:Z

.field private mIsExitPressed:Z

.field private mIsPSRTEnabled:Z

.field private mIsPlaying:Z

.field private mIsRDSEnabled:Z

.field private mIsRDSSupported:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mRdAntennaL:Landroid/widget/RadioButton;

.field private mRdAntennaS:Landroid/widget/RadioButton;

.field private mRdMono:Landroid/widget/RadioButton;

.field private mRdStereo:Landroid/widget/RadioButton;

.field private mRgAntenna:Landroid/widget/RadioGroup;

.field private mRgSM:Landroid/widget/RadioGroup;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextCapArray:Landroid/widget/TextView;

.field private mTextChipID:Landroid/widget/TextView;

.field private mTextDSPVersion:Landroid/widget/TextView;

.field private mTextECOVersion:Landroid/widget/TextView;

.field private mTextPatchVersion:Landroid/widget/TextView;

.field private mTextRdsBler:Landroid/widget/TextView;

.field private mTextRdsPS:Landroid/widget/TextView;

.field private mTextRdsRT:Landroid/widget/TextView;

.field private mTextRssi:Landroid/widget/TextView;

.field private mTextStereoMono:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 111
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 112
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 113
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 115
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    .line 118
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 119
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    .line 123
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 126
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z

    .line 131
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z

    .line 133
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    .line 142
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    .line 144
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 145
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 146
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 147
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 148
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 149
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 150
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 151
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 152
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 153
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 154
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 155
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 156
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 157
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 158
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 159
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 160
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 161
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgSM:Landroid/widget/RadioGroup;

    .line 164
    const/16 v0, 0x38d

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 165
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 291
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    .line 292
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 294
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 746
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->initService(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isRDSSupported()I

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPSRTEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAFEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->showRDS()V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->enablePSRT(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->enableAF(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isEarphoneUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->formatCapArray(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->openDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->playFM()V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->cancelToast()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object p1
.end method

.method private activeAF()I
    .locals 4

    .prologue
    .line 1344
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.activeAF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v0, 0x0

    .line 1346
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1347
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return v0

    .line 1351
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->activeAF()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v1

    .line 1354
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private activeTA()I
    .locals 4

    .prologue
    .line 1362
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.activeTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v0, 0x0

    .line 1364
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1365
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.activeTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return v0

    .line 1369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->activeTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v1

    .line 1372
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1005
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1008
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    .line 1013
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1015
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    .line 1020
    :goto_1
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void

    .line 1011
    :cond_0
    const-string v0, "FMRadioEM"

    const-string v1, "Warning: The timer is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1018
    :cond_1
    const-string v0, "FMRadioEM"

    const-string v1, "Warning: The toast is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private closeDevice()Z
    .locals 4

    .prologue
    .line 1110
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.closeDevice"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v0, 0x0

    .line 1112
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1113
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return v0

    .line 1117
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->closeDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v1

    .line 1120
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deactiveTA()I
    .locals 4

    .prologue
    .line 1380
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.deactiveTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v0, 0x0

    .line 1382
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1383
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.deactiveTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return v0

    .line 1387
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->deactiveTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1389
    :catch_0
    move-exception v1

    .line 1390
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableAF(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1518
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioEMActivity.enableAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 1520
    const-string v0, "FMRadioEM"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.enableAF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return-void

    .line 1524
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableAF(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    const-string v0, "FMRadioEM"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enablePSRT(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1502
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioEMActivity.enablePSRT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 1504
    const-string v0, "FMRadioEM"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.enablePSRT"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1508
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enablePSRT(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    const-string v0, "FMRadioEM"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableTA(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1534
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioEMActivity.enableTA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 1536
    const-string v0, "FMRadioEM"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.enableTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return-void

    .line 1540
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableTA(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    const-string v0, "FMRadioEM"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private formatCapArray(I)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 658
    new-array v4, v8, [F

    fill-array-data v4, :array_0

    .line 661
    const/4 v0, 0x0

    move v2, v3

    .line 662
    :goto_0
    if-ge v2, v8, :cond_1

    .line 664
    float-to-double v5, v0

    add-int/lit8 v0, v2, 0x6

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_0

    aget v0, v4, v2

    float-to-double v0, v0

    :goto_1
    add-double/2addr v0, v5

    double-to-float v1, v0

    .line 662
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 664
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 666
    :cond_1
    const-string v1, "%.2f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 658
    :array_0
    .array-data 0x4
        0xe7t 0xfbt 0x29t 0x3et
        0xe7t 0xfbt 0xa9t 0x3et
        0xe7t 0xfbt 0x29t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
        0x71t 0x3dt 0x2at 0x40t
        0x85t 0xebt 0xa9t 0x40t
        0x9at 0x99t 0x29t 0x41t
        0xcdt 0xcct 0x94t 0x41t
    .end array-data
.end method

.method private getFrequency()I
    .locals 4

    .prologue
    .line 1604
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.getFrequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v0, 0x0

    .line 1606
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1607
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.getFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return v0

    .line 1611
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getFrequency()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1613
    :catch_0
    move-exception v1

    .line 1614
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1326
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.getLRText"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const/4 v0, 0x0

    .line 1328
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1329
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.getLRText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-object v0

    .line 1333
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getLRText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v1

    .line 1336
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1308
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.getPS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 v0, 0x0

    .line 1310
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1311
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.getPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-object v0

    .line 1315
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getPS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1317
    :catch_0
    move-exception v1

    .line 1318
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initService(I)V
    .locals 3
    .parameter

    .prologue
    .line 1468
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioEMActivity.initService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 1470
    const-string v0, "FMRadioEM"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.initService"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-void

    .line 1474
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->initService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    const-string v0, "FMRadioEM"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAFEnabled()Z
    .locals 4

    .prologue
    .line 1568
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isAFEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v0, 0x0

    .line 1570
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1571
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isAFEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return v0

    .line 1575
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isAFEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v1

    .line 1578
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isDeviceOpen()Z
    .locals 4

    .prologue
    .line 1128
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isDeviceOpen"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v0, 0x0

    .line 1130
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1131
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isDeviceOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v0

    .line 1135
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isDeviceOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEarphoneUsed()Z
    .locals 4

    .prologue
    .line 1450
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isEarphoneUsed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/4 v0, 0x1

    .line 1452
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1453
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isEarphoneUsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    return v0

    .line 1457
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isEarphoneUsed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1459
    :catch_0
    move-exception v1

    .line 1460
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPSRTEnabled()Z
    .locals 4

    .prologue
    .line 1550
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isPSRTEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const/4 v0, 0x0

    .line 1552
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1553
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isPSRTEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return v0

    .line 1557
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isPSRTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1559
    :catch_0
    move-exception v1

    .line 1560
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 4

    .prologue
    .line 1182
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isPowerUp"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v0, 0x0

    .line 1184
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1185
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isPowerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return v0

    .line 1189
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isPowerUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v1

    .line 1192
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRDSSupported()I
    .locals 4

    .prologue
    .line 1416
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isRDSSupported"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const/4 v0, -0x1

    .line 1418
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1419
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return v0

    .line 1423
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isRDSSupported()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1425
    :catch_0
    move-exception v1

    .line 1426
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isServiceInit()Z
    .locals 4

    .prologue
    .line 1484
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isServiceInit"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/4 v0, 0x0

    .line 1486
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1487
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isServiceInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return v0

    .line 1491
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isServiceInit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1493
    :catch_0
    move-exception v1

    .line 1494
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTAEnabled()Z
    .locals 4

    .prologue
    .line 1586
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isTAEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/4 v0, 0x0

    .line 1588
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1589
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isTAEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return v0

    .line 1593
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isTAEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1595
    :catch_0
    move-exception v1

    .line 1596
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isToasting()Z
    .locals 4

    .prologue
    .line 1024
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.isToasting"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x1

    .line 1026
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 1027
    const/4 v0, 0x0

    .line 1029
    :cond_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isToasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return v0
.end method

.method private onPauseFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 880
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 883
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 884
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 886
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 892
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void

    .line 889
    :cond_0
    const-string v0, "FMRadioEM"

    const-string v1, "Error: Can not power down."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPlayFM()V
    .locals 2

    .prologue
    .line 813
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onPlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 816
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->start()V

    .line 833
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onPlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void
.end method

.method private onUseEarphone()V
    .locals 2

    .prologue
    .line 896
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onUseEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->useEarphone(Z)V

    .line 898
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onUseEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method private onUseLoudspeaker()V
    .locals 2

    .prologue
    .line 902
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onUseLoudspeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->useEarphone(Z)V

    .line 904
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onUseLoudspeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method private openDevice()Z
    .locals 4

    .prologue
    .line 1092
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.openDevice"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v0, 0x0

    .line 1094
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1095
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.openDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return v0

    .line 1099
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->openDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 837
    const-string v0, "FMRadioEM"

    const-string v1, ">>> PlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 840
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 841
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerUp(F)Z

    move-result v0

    .line 842
    if-eqz v0, :cond_1

    .line 843
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 845
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 846
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 848
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 852
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 853
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 854
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 855
    const-string v2, "MSGID"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 857
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 876
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< PlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void

    .line 863
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 864
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerDown()Z

    .line 865
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 867
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 868
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 869
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 870
    const-string v2, "MSGID"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 871
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 872
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 874
    const-string v0, "FMRadioEM"

    const-string v1, "Error: Can not power up."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerDown()Z
    .locals 4

    .prologue
    .line 1164
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.powerDown"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v0, 0x0

    .line 1166
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1167
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.powerDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return v0

    .line 1171
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->powerDown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v1

    .line 1174
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 4
    .parameter

    .prologue
    .line 1146
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.powerUp"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/4 v0, 0x0

    .line 1148
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1149
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.powerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return v0

    .line 1153
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->powerUp(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v1

    .line 1156
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rdsset(Z)I
    .locals 2
    .parameter

    .prologue
    .line 971
    const/4 v0, -0x1

    .line 972
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z

    if-eqz v1, :cond_0

    .line 973
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setRDS(Z)I

    move-result v0

    .line 978
    :cond_0
    return v0
.end method

.method private readRDS()I
    .locals 4

    .prologue
    .line 1290
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.readRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v0, 0x0

    .line 1292
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1293
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.readRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    return v0

    .line 1297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->readRDS()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v1

    .line 1300
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshTextStatus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 938
    if-nez p1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 946
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 948
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private seek(FZ)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1218
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.seek"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/4 v0, 0x0

    .line 1220
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1221
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.seek: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return v0

    .line 1225
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/FMRadio/IFMRadioService;->seek(FZ)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v1

    .line 1228
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMute(Z)I
    .locals 4
    .parameter

    .prologue
    .line 1398
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.setMute"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v0, -0x1

    .line 1400
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1401
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return v0

    .line 1405
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v1

    .line 1408
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRDS(Z)I
    .locals 4
    .parameter

    .prologue
    .line 1272
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.setRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v0, -0x1

    .line 1274
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1275
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return v0

    .line 1279
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1281
    :catch_0
    move-exception v1

    .line 1282
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRDS()V
    .locals 2

    .prologue
    .line 1034
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.showRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.showRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v2, 0x7d0

    .line 988
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioEMActivity.showToast: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    .line 991
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 999
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    .line 1000
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1001
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.showToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void
.end method

.method private startScan()[I
    .locals 4

    .prologue
    .line 1236
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.startScan"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v0, 0x0

    .line 1238
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1239
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.startScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return-object v0

    .line 1243
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->startScan()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v1

    .line 1246
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopScan()Z
    .locals 4

    .prologue
    .line 1254
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.stopScan"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v0, 0x0

    .line 1256
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1257
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return v0

    .line 1261
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1263
    :catch_0
    move-exception v1

    .line 1264
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tune(F)Z
    .locals 4
    .parameter

    .prologue
    .line 1200
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.tune"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v0, 0x0

    .line 1202
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1203
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return v0

    .line 1207
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1209
    :catch_0
    move-exception v1

    .line 1210
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4120

    .line 908
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> tuneToStation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 910
    const-string v0, "FMRadioEM"

    const-string v1, "FM is playing."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 912
    int-to-float v0, p1

    div-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->tune(F)Z

    move-result v0

    .line 913
    if-eqz v0, :cond_0

    .line 914
    const-string v0, "FMRadioEM"

    const-string v1, "Tune to the station succeeded."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 916
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 918
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    invoke-static {p0, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 933
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< tuneToStation"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void

    .line 921
    :cond_0
    const-string v0, "FMRadioEM"

    const-string v1, "Error: Can not tune to the station."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 925
    :cond_1
    const-string v0, "FMRadioEM"

    const-string v1, "FM is paused."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 928
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    invoke-static {p0, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 930
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->onPlayFM()V

    goto :goto_0
.end method

.method private useEarphone(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1434
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioEMActivity.useEarphone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 1436
    const-string v0, "FMRadioEM"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.useEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return-void

    .line 1440
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    const-string v0, "FMRadioEM"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getChipId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1046
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 1048
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1049
    aget v0, v1, v0

    .line 1051
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSPVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 1082
    const/4 v0, 0x0

    .line 1083
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 1084
    const/4 v0, 0x2

    aget v0, v1, v0

    .line 1086
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    return-object v0
.end method

.method public getECOVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 1056
    const/4 v0, 0x0

    .line 1057
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1058
    const/4 v0, 0x1

    aget v0, v1, v0

    .line 1060
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    return-object v0
.end method

.method public getHardwareVersion()[I
    .locals 4

    .prologue
    .line 1733
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.getHardwareversion"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v0, 0x0

    .line 1735
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1736
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.getHardwareversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return-object v0

    .line 1740
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getHardwareVersion()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1742
    :catch_0
    move-exception v1

    .line 1743
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPatchVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 1066
    const/4 v0, 0x0

    .line 1067
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 1068
    const/4 v0, 0x3

    aget v0, v1, v0

    .line 1070
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    const/4 v0, 0x0

    .line 1073
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 1077
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1074
    :catch_0
    move-exception v1

    .line 1075
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 4

    .prologue
    .line 1661
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v0, 0x0

    .line 1663
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1664
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.getStereoMono: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    return v0

    .line 1668
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getStereoMono()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1670
    :catch_0
    move-exception v1

    .line 1671
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1751
    const-string v0, ""

    .line 1754
    :goto_0
    if-lez p1, :cond_0

    .line 1755
    rem-int/lit8 v1, p1, 0x10

    .line 1756
    div-int/lit8 p1, p1, 0x10

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1759
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1760
    const-string v1, ""

    .line 1761
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-char v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1761
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1764
    :cond_1
    return-object v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 965
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 967
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 982
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 984
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 345
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 350
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setContentView(I)V

    .line 352
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 355
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 356
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 358
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 360
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 361
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 362
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 363
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 364
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 365
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 366
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 367
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 368
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 369
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgSM:Landroid/widget/RadioGroup;

    .line 371
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgSM:Landroid/widget/RadioGroup;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    const-string v0, "FMRadioEM"

    const-string v1, "clocwork worked..."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 399
    if-nez v0, :cond_2

    .line 400
    const-string v0, "FMRadioEM"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_3

    .line 523
    const-string v0, "FMRadioEM"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->finish()V

    .line 525
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_1
    return-void

    .line 403
    :cond_2
    const-string v0, "FMRadioEM"

    const-string v1, "Start FM service successfully."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 406
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    goto :goto_0

    .line 529
    :cond_3
    const-string v0, "FMRadioEM"

    const-string v1, "Bind FM service successfully."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 534
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioEMActivity$1;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    .line 541
    const-string v1, "FMRadioEM"

    const-string v2, "Register broadcast receiver."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 545
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 546
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioEMActivity$1;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 548
    const-string v1, "FMRadioEM"

    const-string v2, "Register HeadsetConnectionReceiver"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 552
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 555
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    .line 651
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 653
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 654
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 696
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 701
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "FMRadioEM"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 704
    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "FMRadioEM"

    const-string v1, "Unregister headset broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 710
    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 714
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    .line 715
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    if-eqz v0, :cond_2

    .line 717
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 718
    const-string v0, "FMRadioEM"

    const-string v1, "FM is Playing. So stop it."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 720
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 721
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerDown()Z

    .line 722
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 727
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 729
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 732
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    if-eqz v0, :cond_5

    .line 733
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    if-eqz v0, :cond_5

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 735
    if-nez v0, :cond_4

    .line 736
    const-string v0, "FMRadioEM"

    const-string v1, "Error: Cannot stop the FM service."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_4
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 742
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 743
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 1041
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1043
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 683
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 686
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 676
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 678
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 679
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 957
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 959
    const-string v0, "FM_SAVE_INSTANCE_STATE_INITED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 960
    const-string v0, "FM_SAVE_INSTANCE_STATE_PLAYING"

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 961
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 670
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 672
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 690
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 692
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method public readCapArray()I
    .locals 4

    .prologue
    .line 1625
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.readCapArray"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const/4 v0, 0x0

    .line 1627
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1628
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.readCapArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return v0

    .line 1632
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->readCapArray()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1634
    :catch_0
    move-exception v1

    .line 1635
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRdsBler()I
    .locals 4

    .prologue
    .line 1715
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.readRdsBler"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/4 v0, 0x0

    .line 1717
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1718
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.readRdsBler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return v0

    .line 1722
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->readRdsBler()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1724
    :catch_0
    move-exception v1

    .line 1725
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRssi()I
    .locals 4

    .prologue
    .line 1643
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.readRssi"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v0, 0x0

    .line 1645
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1646
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.readRssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    return v0

    .line 1650
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->readRssi()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1652
    :catch_0
    move-exception v1

    .line 1653
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 4
    .parameter

    .prologue
    .line 1679
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.setStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v0, 0x0

    .line 1681
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1682
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.setStereoMono: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    return v0

    .line 1686
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setStereoMono(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1688
    :catch_0
    move-exception v1

    .line 1689
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchAntenna(I)I
    .locals 4
    .parameter

    .prologue
    .line 1697
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.switchAntenna"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const/4 v0, 0x2

    .line 1699
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1700
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :goto_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.switchAntenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    return v0

    .line 1704
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1706
    :catch_0
    move-exception v1

    .line 1707
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
