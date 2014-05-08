.class public Lcom/mediatek/FMRadio/FMRadioActivity;
.super Landroid/app/Activity;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;,
        Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;,
        Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;,
        Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final DLGID_NOANTENNA:I = 0x1

.field public static final DLGID_RDS_SETTING:I = 0x3

.field public static final DLGID_SAVE_RECORDING:I = 0x4

.field public static final DLGID_SEARCHING:I = 0x2

.field private static final FM_INSTANCE_STATE_RECORDING_DLGSTATE:Ljava/lang/String; = "FM_INSTANCE_STATE_RECORDING_NAME"

.field private static final FREQ_START:I = 0x36b

.field public static final MSGID_ANTENNA_UNAVAILABE:I = 0x9

.field public static final MSGID_OK:I = 0x1

.field public static final MSGID_OPEN_DEVICE:I = 0xd

.field public static final MSGID_PLAY_FAIL:I = 0x8

.field public static final MSGID_PLAY_FINISH:I = 0x7

.field public static final MSGID_REFRESH:I = 0xb

.field public static final MSGID_SEARCH_FINISH:I = 0x2

.field public static final MSGID_SEEK_FAIL:I = 0x6

.field public static final MSGID_SEEK_FINISH:I = 0x5

.field public static final MSGID_SHOW_TOAST:I = 0xa

.field public static final MSGID_TUNE_FINISH:I = 0xc

.field public static final MSGID_UPDATE_CURRENT_STATION:I = 0x4

.field public static final MSGID_UPDATE_RDS:I = 0x3

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final SLEEPTIMER_EXPIRED:I = 0x1001

.field private static final SLEEPTIMER_UPDATE:I = 0x1002

.field private static final SLEEP_TOGGLE_SECONDS:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "FMRadioActivity"

.field private static final TEXTSIZE_PARAMETER_FOR_NUMBER_PICKER:I = 0xf

.field private static final TIME_FORMAT_LONG:Ljava/lang/String; = "%02d:%02d:%02d"

.field private static final TIME_FORMAT_SHORT:Ljava/lang/String; = "%02d:%02d"

.field public static final TOAST_TIMER_DELAY:J = 0x7d0L

.field public static final TYPE_FIRST_SEARCHED_STATION:Ljava/lang/String; = "FIRST_SEARCHED_STATION"

.field public static final TYPE_MSGID:Ljava/lang/String; = "MSGID"

.field public static final TYPE_SEEK_STATION:Ljava/lang/String; = "SEEK_STATION"

.field public static final TYPE_TOAST_STRING:Ljava/lang/String; = "TYPE_TOAST_STRING"

.field public static final TYPE_TUNE_STATION:Ljava/lang/String; = "TUNE_STATION"

.field private static mDisplayWidth:I

.field private static selectPos:I

.field private static sleepListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final OPTMENUID_EXIT:I

.field private final OPTMENUID_RECORD:I

.field private final OPTMENUID_SEARCH:I

.field private final OPTMENU_SLEEP:I

.field private final OPTMENU_SLEEP_CANCEL:I

.field private buttonClickListener:Landroid/view/View$OnClickListener;

.field private doSleepProcessing:Ljava/lang/Runnable;

.field private mAnimImage:Landroid/widget/ImageView;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

.field private mBtnMenu:Landroid/widget/ImageButton;

.field private mBtnRecord:Landroid/widget/ImageButton;

.field private mBtnSearch:Landroid/widget/ImageButton;

.field private mBtnSwitchMode:Landroid/widget/ImageButton;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private mButtonDecrease:Landroid/widget/ImageButton;

.field private mButtonIncrease:Landroid/widget/ImageButton;

.field private mButtonNextStation:Landroid/widget/ImageButton;

.field private mButtonPlayStop:Landroid/widget/ImageButton;

.field private mButtonPlayback:Landroid/widget/ImageButton;

.field private mButtonPrevStation:Landroid/widget/ImageButton;

.field private mButtonRecord:Landroid/widget/ImageButton;

.field private mButtonStop:Landroid/widget/ImageButton;

.field private mCurrentStation:I

.field private mDialogNoAntenna:Landroid/app/AlertDialog;

.field private mDialogRDSSetting:Landroid/app/AlertDialog;

.field private mDialogSearchProgress:Landroid/app/AlertDialog;

.field private mDlgSaveRecording:Landroid/app/Dialog;

.field private mEdRecordingName:Landroid/widget/EditText;

.field private mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsAFEnabled:Z

.field private mIsActivityBackground:Z

.field private mIsConfigChange:Z

.field private mIsDestroying:Z

.field private mIsExit:Z

.field private mIsExitPressed:Z

.field private mIsFreshRecordingStatus:Z

.field private mIsInited:Z

.field private mIsOnPowerUp:Z

.field private mIsPSRTEnabled:Z

.field private mIsPlaying:Z

.field private mIsRDSEnabled:Z

.field private mIsRDSSupported:Z

.field private mIsRecording:Z

.field private mIsSDListenerRegistered:Z

.field private mIsSearching:Z

.field private mIsSeeking:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mIsShowSaveDialog:Z

.field private mIsStorageWarning:Z

.field private mIsTAEnabled:Z

.field private mIsTuning:Z

.field private mIsUserCancelSearch:Z

.field private mLRTextString:Ljava/lang/String;

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mMenuItemChannelList:Landroid/view/MenuItem;

.field private mMenuItemEarLoud:Landroid/view/MenuItem;

.field private mMenuItemOverflow:Landroid/view/MenuItem;

.field private mPSString:Ljava/lang/String;

.field private mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPrevRecorderState:I

.field private mRLRecordInfo:Landroid/widget/LinearLayout;

.field private mRecordState:I

.field private mRefresher:Landroid/os/Handler;

.field private mSDDirectory:Ljava/lang/String;

.field private mSDListener:Landroid/content/BroadcastReceiver;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSleepMsgTV:Landroid/widget/TextView;

.field private mSleepTimeMins:I

.field private mSleepUpdateHandlerThread:Ljava/lang/Thread;

.field private mStorageWarningTextView:Landroid/widget/TextView;

.field private mTextFM:Landroid/widget/TextView;

.field private mTextMHz:Landroid/widget/TextView;

.field private mTextRDS:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mTextStationValue:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;

.field private mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

.field private mTxtRecInfoLeft:Landroid/widget/TextView;

.field private mTxtRecInfoRight:Landroid/widget/TextView;

.field private mUIUpdateHandlerHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timeChanged:Z

.field private timeScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2427
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/FMRadio/FMRadioActivity;->selectPos:I

    .line 2429
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$22;

    invoke-direct {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$22;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioActivity;->sleepListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 142
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 143
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 144
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 146
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 147
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    .line 150
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    .line 152
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    .line 153
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    .line 155
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z

    .line 156
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 157
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    .line 159
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    .line 162
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    .line 164
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    .line 166
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    .line 168
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    .line 170
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z

    .line 173
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    .line 174
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    .line 175
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTAEnabled:Z

    .line 178
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z

    .line 180
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z

    .line 182
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExit:Z

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 191
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    .line 193
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 194
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 195
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 196
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    .line 197
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 199
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 200
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 201
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 202
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 203
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    .line 204
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 206
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 207
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    .line 208
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 209
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 211
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 212
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 213
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 214
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    .line 215
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 216
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 219
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mEdRecordingName:Landroid/widget/EditText;

    .line 220
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 222
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 223
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 226
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 227
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 229
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMainView:Landroid/widget/RelativeLayout;

    .line 231
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 234
    const/16 v0, 0x38d

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 235
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 237
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 247
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->OPTMENUID_SEARCH:I

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->OPTMENUID_EXIT:I

    .line 249
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->OPTMENUID_RECORD:I

    .line 250
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->OPTMENU_SLEEP:I

    .line 251
    const/4 v0, 0x6

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->OPTMENU_SLEEP_CANCEL:I

    .line 253
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    .line 254
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    .line 255
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    .line 256
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    .line 259
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    .line 260
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    .line 261
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 262
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    .line 263
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 264
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    .line 266
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    .line 281
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 520
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 545
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    .line 596
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 806
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->timeChanged:Z

    .line 807
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->timeScrolled:Z

    .line 808
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepTimeMins:I

    .line 2314
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2346
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$20;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$20;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->doSleepProcessing:Ljava/lang/Runnable;

    .line 2380
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$21;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$21;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    .line 3060
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    .line 3130
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    .line 3131
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->checkRemainingStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isToasting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getProjectString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onUseLoudspeaker()V

    return-void
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onUseEarphone()V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->performRecord()V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startSearch()V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isThereAnyStation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showChannelList()V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->timeScrolled:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->timeScrolled:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->timeChanged:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepTimeMins:I

    return v0
.end method

.method static synthetic access$4302(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepTimeMins:I

    return p1
.end method

.method static synthetic access$4400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->initiateSleepThread()V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->initService(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitFM()V

    return-void
.end method

.method static synthetic access$5000(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->enablePSRT(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->enableAF(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    return-void
.end method

.method static synthetic access$5600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRDSSupported()I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isPSRTEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAFEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    return-void
.end method

.method static synthetic access$6802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMFreqNumPickDialog;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMFreqNumPickDialog;)Lcom/mediatek/FMRadio/FMFreqNumPickDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFreqNumPickDlg:Lcom/mediatek/FMRadio/FMFreqNumPickDialog;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/mediatek/FMRadio/FMRadioActivity;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneStation(ZI)V

    return-void
.end method

.method static synthetic access$7500(Lcom/mediatek/FMRadio/FMRadioActivity;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(ZIZ)V

    return-void
.end method

.method static synthetic access$7600(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onPauseFM()V

    return-void
.end method

.method static synthetic access$7700(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V

    return-void
.end method

.method static synthetic access$7800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z

    return v0
.end method

.method static synthetic access$8102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopScan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/mediatek/FMRadio/FMRadioActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->setSearchState(Z)V

    return-void
.end method

.method static synthetic access$8600(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS()V

    return-void
.end method

.method static synthetic access$8700(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V

    return-void
.end method

.method static synthetic access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;F)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->tune(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$9000(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$9100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->openDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->hasSleepTimerExpired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopSleepThread()V

    return-void
.end method

.method static synthetic access$9500(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateExpiredSleepTime()V

    return-void
.end method

.method static synthetic access$9600()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/mediatek/FMRadio/FMRadioActivity;->selectPos:I

    return v0
.end method

.method static synthetic access$9602(I)I
    .locals 0
    .parameter

    .prologue
    .line 108
    sput p0, Lcom/mediatek/FMRadio/FMRadioActivity;->selectPos:I

    return p0
.end method

.method static synthetic access$9702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->cancelToast()V

    return-void
.end method

.method private activeAF()I
    .locals 4

    .prologue
    .line 3744
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.activeAF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    const/4 v0, 0x0

    .line 3746
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3747
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    return v0

    .line 3751
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->activeAF()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3753
    :catch_0
    move-exception v1

    .line 3754
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private activeTA()I
    .locals 4

    .prologue
    .line 3762
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.activeTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    const/4 v0, 0x0

    .line 3764
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3765
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.activeTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    return v0

    .line 3769
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->activeTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3771
    :catch_0
    move-exception v1

    .line 3772
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addChangingListener(Lcom/lenovo/widget/WheelView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 800
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/FMRadio/FMRadioActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/widget/WheelView;->addChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V

    .line 805
    return-void
.end method

.method private cancelToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3395
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3397
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3398
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    .line 3403
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 3404
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3405
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 3410
    :goto_1
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    return-void

    .line 3401
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: The timer is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3408
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: The toast is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private changeBackground(Landroid/view/View;IIIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3184
    if-nez p2, :cond_2

    .line 3185
    if-eqz p5, :cond_1

    .line 3186
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3202
    :cond_0
    :goto_0
    return-void

    .line 3190
    :cond_1
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3193
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3194
    if-eqz p5, :cond_3

    .line 3195
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3199
    :cond_3
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private changeRecordingMode(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4022
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>changeRecordingMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-ne v2, p1, :cond_1

    .line 4025
    const-string v1, "FMRadioActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM already "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "in"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "recording mode!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :goto_1
    return-void

    .line 4025
    :cond_0
    const-string v0, "NOT in"

    goto :goto_0

    .line 4028
    :cond_1
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    .line 4029
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-eqz v2, :cond_f

    .line 4030
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 4031
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4032
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4033
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4034
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 4041
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setRecordingMode(Z)V

    .line 4050
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 4051
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_10

    move v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4053
    :cond_3
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_4

    .line 4054
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_11

    move v2, v0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 4056
    :cond_4
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v2, :cond_5

    .line 4057
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz p1, :cond_12

    move v2, v0

    :goto_5
    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setEnabled(Z)V

    .line 4059
    :cond_5
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 4060
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    move v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4062
    :cond_6
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    if-eqz v2, :cond_7

    .line 4063
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    if-eqz p1, :cond_14

    move v2, v0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4065
    :cond_7
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    if-eqz v2, :cond_8

    .line 4066
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    if-eqz p1, :cond_15

    move v2, v0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4068
    :cond_8
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v2, :cond_9

    .line 4069
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz p1, :cond_16

    move v2, v0

    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4071
    :cond_9
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    if-eqz v2, :cond_a

    .line 4072
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    if-eqz p1, :cond_17

    move v2, v0

    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4074
    :cond_a
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    if-eqz v2, :cond_b

    .line 4075
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    if-eqz p1, :cond_18

    move v2, v0

    :goto_b
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4077
    :cond_b
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    if-eqz v2, :cond_c

    .line 4078
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    if-eqz p1, :cond_19

    move v2, v0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4080
    :cond_c
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    if-eqz v2, :cond_d

    .line 4081
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1a

    move v2, v0

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4083
    :cond_d
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    if-eqz v2, :cond_e

    .line 4084
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1b

    :goto_e
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4104
    :cond_e
    :goto_f
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<changeRecordingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4036
    :cond_f
    :try_start_1
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-eqz v2, :cond_2

    .line 4037
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4038
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 4101
    :catch_0
    move-exception v0

    .line 4102
    const-string v1, "FMRadioActivity"

    const-string v2, "setRecordingMode: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 4051
    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_3

    :cond_11
    move v2, v1

    .line 4054
    goto/16 :goto_4

    :cond_12
    move v2, v1

    .line 4057
    goto/16 :goto_5

    :cond_13
    move v2, v1

    .line 4060
    goto/16 :goto_6

    :cond_14
    move v2, v1

    .line 4063
    goto/16 :goto_7

    :cond_15
    move v2, v1

    .line 4066
    goto/16 :goto_8

    :cond_16
    move v2, v1

    .line 4069
    goto/16 :goto_9

    :cond_17
    move v2, v1

    .line 4072
    goto :goto_a

    :cond_18
    move v2, v1

    .line 4075
    goto :goto_b

    :cond_19
    move v2, v1

    .line 4078
    goto :goto_c

    :cond_1a
    move v2, v1

    .line 4081
    goto :goto_d

    :cond_1b
    move v0, v1

    .line 4084
    goto :goto_e
.end method

.method private checkRemainingStorage()Z
    .locals 5

    .prologue
    .line 4191
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4192
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 4193
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 4194
    mul-long v0, v1, v3

    .line 4195
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRemainingStorage: available space="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 4

    .prologue
    .line 3506
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.closeDevice"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const/4 v0, 0x0

    .line 3508
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3509
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    return v0

    .line 3513
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->closeDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3515
    :catch_0
    move-exception v1

    .line 3516
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deactiveTA()I
    .locals 4

    .prologue
    .line 3780
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.deactiveTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    const/4 v0, 0x0

    .line 3782
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3783
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.deactiveTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    return v0

    .line 3787
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->deactiveTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3789
    :catch_0
    move-exception v1

    .line 3790
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableAF(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3918
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.enableAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 3920
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.enableAF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    return-void

    .line 3924
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableAF(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3926
    :catch_0
    move-exception v0

    .line 3927
    const-string v0, "FMRadioActivity"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enablePSRT(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3902
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.enablePSRT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 3904
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.enablePSRT"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    return-void

    .line 3908
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enablePSRT(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3910
    :catch_0
    move-exception v0

    .line 3911
    const-string v0, "FMRadioActivity"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableTA(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3934
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.enableTA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 3936
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.enableTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    return-void

    .line 3940
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableTA(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3942
    :catch_0
    move-exception v0

    .line 3943
    const-string v0, "FMRadioActivity"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private exitFM()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    .line 316
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 317
    return-void
.end method

.method private getFrequency()I
    .locals 4

    .prologue
    .line 4004
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.getFrequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    const/4 v0, 0x0

    .line 4006
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 4007
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.getFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    return v0

    .line 4011
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getFrequency()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4013
    :catch_0
    move-exception v1

    .line 4014
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3726
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.getLRText"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    const/4 v0, 0x0

    .line 3728
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3729
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.getLRText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    return-object v0

    .line 3733
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getLRText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3735
    :catch_0
    move-exception v1

    .line 3736
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3708
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.getPS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    const/4 v0, 0x0

    .line 3710
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3711
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.getPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    return-object v0

    .line 3715
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getPS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3717
    :catch_0
    move-exception v1

    .line 3718
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProjectString(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4311
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->IS_CMCC:Z

    if-eqz v0, :cond_0

    .line 4312
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4314
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasSleepTimerExpired()Z
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 2372
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->isSleepTimerExpired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2378
    :goto_0
    return v0

    .line 2373
    :catch_0
    move-exception v0

    .line 2375
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2378
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initService(I)V
    .locals 3
    .parameter

    .prologue
    .line 3868
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.initService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 3870
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.initService"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    return-void

    .line 3874
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->initService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3876
    :catch_0
    move-exception v0

    .line 3877
    const-string v0, "FMRadioActivity"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initiateSleepThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2317
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2319
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2323
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2325
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2329
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 2331
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2333
    :cond_2
    return-void
.end method

.method private isAFEnabled()Z
    .locals 4

    .prologue
    .line 3968
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isAFEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    const/4 v0, 0x0

    .line 3970
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3971
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isAFEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    return v0

    .line 3975
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isAFEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3977
    :catch_0
    move-exception v1

    .line 3978
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isDeviceOpen()Z
    .locals 4

    .prologue
    .line 3524
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isDeviceOpen"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    const/4 v0, 0x0

    .line 3526
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3527
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isDeviceOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    return v0

    .line 3531
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isDeviceOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3533
    :catch_0
    move-exception v1

    .line 3534
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEarphoneUsed()Z
    .locals 4

    .prologue
    .line 3850
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isEarphoneUsed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    const/4 v0, 0x1

    .line 3852
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3853
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isEarphoneUsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    return v0

    .line 3857
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isEarphoneUsed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3859
    :catch_0
    move-exception v1

    .line 3860
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPSRTEnabled()Z
    .locals 4

    .prologue
    .line 3950
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isPSRTEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    const/4 v0, 0x0

    .line 3952
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3953
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isPSRTEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    return v0

    .line 3957
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isPSRTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3959
    :catch_0
    move-exception v1

    .line 3960
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 4

    .prologue
    .line 3581
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isPowerUp"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    const/4 v0, 0x0

    .line 3583
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3584
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isPowerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    return v0

    .line 3588
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isPowerUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3590
    :catch_0
    move-exception v1

    .line 3591
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRDSSupported()I
    .locals 4

    .prologue
    .line 3816
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isRDSSupported"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    const/4 v0, -0x1

    .line 3818
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3819
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    return v0

    .line 3823
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isRDSSupported()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3825
    :catch_0
    move-exception v1

    .line 3826
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isServiceInit()Z
    .locals 4

    .prologue
    .line 3884
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isServiceInit"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    const/4 v0, 0x0

    .line 3886
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3887
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isServiceInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    return v0

    .line 3891
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isServiceInit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3893
    :catch_0
    move-exception v1

    .line 3894
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTAEnabled()Z
    .locals 4

    .prologue
    .line 3986
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isTAEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    const/4 v0, 0x0

    .line 3988
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3989
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isTAEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    return v0

    .line 3993
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->isTAEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3995
    :catch_0
    move-exception v1

    .line 3996
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isThereAnyStation()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 273
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 274
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v6, :cond_0

    move v0, v6

    .line 278
    :goto_0
    return v0

    :cond_0
    move v0, v7

    .line 276
    goto :goto_0

    :cond_1
    move v0, v7

    .line 278
    goto :goto_0
.end method

.method private isToasting()Z
    .locals 4

    .prologue
    .line 3414
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.isToasting"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    const/4 v0, 0x1

    .line 3416
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 3417
    const/4 v0, 0x0

    .line 3419
    :cond_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isToasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    return v0
.end method

.method private onPauseFM()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2943
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2946
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    .line 2947
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2949
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 2950
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    .line 2958
    :goto_0
    const-string v0, "FMRadioPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mtk performance result]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    return-void

    .line 2956
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Can not power down."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPlayFM()V
    .locals 2

    .prologue
    .line 2866
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onPlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 2869
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$28;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$28;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$28;->start()V

    .line 2884
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 2886
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onPlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    return-void
.end method

.method private onUseEarphone()V
    .locals 2

    .prologue
    .line 2963
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onUseEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->useEarphone(Z)V

    .line 2967
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2971
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onUseEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    return-void
.end method

.method private onUseLoudspeaker()V
    .locals 2

    .prologue
    .line 2975
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onUseLoudspeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->useEarphone(Z)V

    .line 2979
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2980
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2983
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onUseLoudspeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    return-void
.end method

.method private openDevice()Z
    .locals 4

    .prologue
    .line 3488
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.openDevice"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    const/4 v0, 0x0

    .line 3490
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3491
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.openDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    return v0

    .line 3495
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->openDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3497
    :catch_0
    move-exception v1

    .line 3498
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private performRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 721
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-nez v0, :cond_2

    .line 722
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 723
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 776
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 731
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 732
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    const-string v1, "FMRadioActivity"

    const-string v2, "failed to startRecording: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 746
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 747
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/FMRadio/IFMRadioService;->setStopPressed(Z)V

    .line 748
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->stopRecording()V

    .line 749
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->stopPlayback()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 752
    :catch_1
    move-exception v0

    .line 753
    const-string v0, "FMRadioActivity"

    const-string v1, "failed to stopRecording/stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFM()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4120

    const/4 v2, 0x1

    .line 2890
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> PlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2893
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    .line 2894
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUp(F)Z

    move-result v0

    .line 2895
    if-eqz v0, :cond_1

    .line 2896
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    .line 2898
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 2899
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2901
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2903
    const/4 v0, -0x1

    .line 2905
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I

    move-result v0

    .line 2906
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2910
    :goto_0
    if-eqz v0, :cond_0

    .line 2911
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while trying to switch to short antenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2916
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2917
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2918
    const-string v2, "MSGID"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2919
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2938
    :goto_1
    const-string v0, "FMRadioPerformanceTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mtk performance result]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< PlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    return-void

    .line 2907
    :catch_0
    move-exception v1

    .line 2908
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: switchAntenna(1)"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2926
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2927
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerDown()Z

    .line 2929
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2930
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2931
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2932
    const-string v2, "MSGID"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2933
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2934
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2936
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Can not power up."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private powerDown()Z
    .locals 4

    .prologue
    .line 3562
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.powerDown"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    const/4 v0, 0x0

    .line 3564
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3565
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.powerDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    return v0

    .line 3568
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopSleepThread()V

    .line 3570
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->powerDown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3572
    :catch_0
    move-exception v1

    .line 3573
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3542
    const-string v0, "FMRadioActivity"

    const-string v2, ">>> FMRadioActivity.powerUp"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    .line 3545
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 3546
    const-string v0, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3556
    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    .line 3557
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.powerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    return v0

    .line 3550
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->powerUp(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3552
    :catch_0
    move-exception v0

    .line 3553
    const-string v0, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private rdsset(Z)I
    .locals 2
    .parameter

    .prologue
    .line 3346
    const/4 v0, -0x1

    .line 3347
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z

    if-eqz v1, :cond_0

    .line 3367
    :cond_0
    return v0
.end method

.method private readRDS()I
    .locals 4

    .prologue
    .line 3690
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.readRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    const/4 v0, 0x0

    .line 3692
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3693
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.readRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    return v0

    .line 3697
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->readRDS()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3699
    :catch_0
    move-exception v1

    .line 3700
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshButtonStatus()V
    .locals 2

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3206
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3207
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3208
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3210
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3211
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3214
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 3215
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3217
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_2

    .line 3225
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 3226
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 3228
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v0, :cond_4

    .line 3229
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setEnabled(Z)V

    .line 3234
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 3235
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3237
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 3238
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3240
    :cond_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    .line 3241
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3249
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3250
    :cond_8
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    .line 3251
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3258
    :cond_9
    :goto_0
    return-void

    .line 3254
    :cond_a
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    .line 3255
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private refreshButtonStatus(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3262
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3263
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3264
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3265
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3268
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 3272
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3274
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3275
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 3276
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3279
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 3280
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 3282
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v0, :cond_4

    .line 3283
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setEnabled(Z)V

    .line 3288
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 3289
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3291
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 3292
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3294
    :cond_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    .line 3295
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3303
    :cond_7
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 4
    .parameter

    .prologue
    .line 4108
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 4109
    const-string v0, "FMRadioActivity"

    const-string v1, "mService is null when refreshRecordingStatus()"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    :goto_0
    return-void

    .line 4115
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 4116
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecorderState()I

    move-result p1

    .line 4120
    :cond_1
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRecordingStatus: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    packed-switch p1, :pswitch_data_0

    .line 4183
    :goto_1
    :pswitch_0
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4184
    :catch_0
    move-exception v0

    .line 4185
    const-string v1, "FMRadioActivity"

    const-string v2, "refreshRecordingStatus: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4123
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 4127
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 4129
    if-eqz v0, :cond_2

    .line 4130
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    const-string v3, "Audio"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".3gpp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4133
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4134
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4137
    :cond_2
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 4138
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->checkRemainingStorage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    .line 4140
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    .line 4149
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4150
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4151
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    goto :goto_1

    .line 4142
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    .line 4143
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    goto :goto_2

    .line 4147
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    .line 4155
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4156
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4157
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4158
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4159
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4160
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4161
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 4164
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 4165
    if-nez v0, :cond_6

    .line 4166
    const-string v0, ""

    .line 4167
    :cond_6
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4168
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4169
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4170
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4171
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4172
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4173
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 4177
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4178
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4179
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4180
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4121
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeAndShowDialog(I)V
    .locals 0
    .parameter

    .prologue
    .line 2794
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeDialog(I)V

    .line 2795
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showDialog(I)V

    .line 2796
    return-void
.end method

.method private seek(FZ)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3617
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.seek"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    const/4 v0, 0x0

    .line 3619
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3620
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.seek: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    return v0

    .line 3624
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/FMRadio/IFMRadioService;->seek(FZ)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3626
    :catch_0
    move-exception v1

    .line 3627
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seekStation(ZIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3039
    if-nez p1, :cond_1

    .line 3041
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    if-eqz v0, :cond_0

    .line 3042
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: already seeking"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :goto_0
    return-void

    .line 3045
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    .line 3046
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 3047
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 3049
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    .line 3050
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->start()V

    goto :goto_0

    .line 3053
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V

    .line 3054
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 3055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    .line 3056
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    goto :goto_0
.end method

.method private setMute(Z)I
    .locals 4
    .parameter

    .prologue
    .line 3798
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.setMute"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    const/4 v0, -0x1

    .line 3800
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3801
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    return v0

    .line 3805
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3807
    :catch_0
    move-exception v1

    .line 3808
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRDS(Z)I
    .locals 4
    .parameter

    .prologue
    .line 3672
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.setRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    const/4 v0, -0x1

    .line 3674
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3675
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    return v0

    .line 3679
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3681
    :catch_0
    move-exception v1

    .line 3682
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSearchState(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2275
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2276
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    if-nez p1, :cond_9

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 2279
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    if-nez p1, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2281
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 2282
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    if-nez p1, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2284
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2285
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-nez p1, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2287
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v0, :cond_4

    .line 2288
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-nez p1, :cond_d

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setEnabled(Z)V

    .line 2291
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 2292
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-nez p1, :cond_e

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2294
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 2295
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    if-nez p1, :cond_f

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2297
    :cond_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    .line 2298
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    if-nez p1, :cond_10

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2300
    :cond_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    .line 2301
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    if-nez p1, :cond_11

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2303
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 2276
    goto :goto_0

    :cond_a
    move v0, v2

    .line 2279
    goto :goto_1

    :cond_b
    move v0, v2

    .line 2282
    goto :goto_2

    :cond_c
    move v0, v2

    .line 2285
    goto :goto_3

    :cond_d
    move v0, v2

    .line 2288
    goto :goto_4

    :cond_e
    move v0, v2

    .line 2292
    goto :goto_5

    :cond_f
    move v0, v2

    .line 2295
    goto :goto_6

    :cond_10
    move v0, v2

    .line 2298
    goto :goto_7

    :cond_11
    move v1, v2

    .line 2301
    goto :goto_8
.end method

.method private showChannelList()V
    .locals 2

    .prologue
    .line 2307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2308
    const-class v1, Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2309
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2310
    return-void
.end method

.method private showRDS()V
    .locals 2

    .prologue
    .line 3424
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.showRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    .line 3426
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3427
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3430
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3432
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3433
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3434
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.showRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    return-void
.end method

.method private showSleepDlg()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 810
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 811
    const v1, 0x7f03000c

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 813
    const v0, 0x7f060060

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/widget/WheelView;

    .line 814
    new-instance v1, Lcom/lenovo/widget/NumericWheelAdapter;

    const/16 v3, 0x17

    invoke-direct {v1, v6, v3}, Lcom/lenovo/widget/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/WheelView;->setAdapter(Lcom/lenovo/widget/WheelAdapter;)V

    .line 815
    const-string v1, "hour"

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/WheelView;->setLabel(Ljava/lang/String;)V

    .line 817
    const v1, 0x7f060061

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/WheelView;

    .line 818
    new-instance v3, Lcom/lenovo/widget/NumericWheelAdapter;

    const/16 v4, 0x3b

    const-string v5, "%02d"

    invoke-direct {v3, v6, v4, v5}, Lcom/lenovo/widget/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/lenovo/widget/WheelView;->setAdapter(Lcom/lenovo/widget/WheelAdapter;)V

    .line 819
    const-string v3, "mins"

    invoke-virtual {v1, v3}, Lcom/lenovo/widget/WheelView;->setLabel(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1, v7}, Lcom/lenovo/widget/WheelView;->setCyclic(Z)V

    .line 822
    invoke-virtual {v0, v6}, Lcom/lenovo/widget/WheelView;->setCurrentItem(I)V

    .line 823
    invoke-virtual {v1, v7}, Lcom/lenovo/widget/WheelView;->setCurrentItem(I)V

    .line 826
    const-string v3, "min"

    invoke-direct {p0, v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->addChangingListener(Lcom/lenovo/widget/WheelView;Ljava/lang/String;)V

    .line 827
    const-string v3, "hour"

    invoke-direct {p0, v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->addChangingListener(Lcom/lenovo/widget/WheelView;Ljava/lang/String;)V

    .line 829
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/lenovo/widget/WheelView;Lcom/lenovo/widget/WheelView;)V

    .line 839
    invoke-virtual {v0, v3}, Lcom/lenovo/widget/WheelView;->addChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V

    .line 840
    invoke-virtual {v1, v3}, Lcom/lenovo/widget/WheelView;->addChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V

    .line 842
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity$6;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/lenovo/widget/WheelView;Lcom/lenovo/widget/WheelView;)V

    .line 854
    invoke-virtual {v0, v3}, Lcom/lenovo/widget/WheelView;->addScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V

    .line 855
    invoke-virtual {v1, v3}, Lcom/lenovo/widget/WheelView;->addScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V

    .line 857
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "quit app on time"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "ok"

    new-instance v4, Lcom/mediatek/FMRadio/FMRadioActivity$7;

    invoke-direct {v4, p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity$7;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/lenovo/widget/WheelView;Lcom/lenovo/widget/WheelView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 877
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v2, 0x7d0

    .line 3378
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioActivity.showToast: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    .line 3381
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$30;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$30;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 3389
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 3390
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3391
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.showToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    return-void
.end method

.method private startAnimation()V
    .locals 0

    .prologue
    .line 2858
    return-void
.end method

.method private startScan()[I
    .locals 4

    .prologue
    .line 3635
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.startScan"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    const/4 v0, 0x0

    .line 3637
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3638
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.startScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    return-object v0

    .line 3642
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->startScan()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3644
    :catch_0
    move-exception v1

    .line 3645
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2264
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->setSearchState(Z)V

    .line 2265
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->cleanSearchedStations(Landroid/app/Activity;)V

    .line 2267
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2268
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2270
    const-string v2, "MSGID"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2271
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2273
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2862
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2863
    return-void
.end method

.method private stopScan()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3653
    const-string v1, "FMRadioActivity"

    const-string v2, ">>> FMRadioActivity.stopScan"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->setSearchState(Z)V

    .line 3656
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3657
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    return v0

    .line 3661
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3663
    :catch_0
    move-exception v1

    .line 3664
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopSleepThread()V
    .locals 2

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2344
    :cond_1
    return-void
.end method

.method private tune(F)Z
    .locals 4
    .parameter

    .prologue
    .line 3599
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.tune"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    const/4 v0, 0x0

    .line 3601
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3602
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    return v0

    .line 3606
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3608
    :catch_0
    move-exception v1

    .line 3609
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tuneStation(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3112
    if-nez p1, :cond_1

    .line 3114
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    if-eqz v0, :cond_0

    .line 3115
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: already tuning"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :goto_0
    return-void

    .line 3117
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    .line 3118
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 3120
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    .line 3121
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->start()V

    goto :goto_0

    .line 3124
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 3125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    .line 3126
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 4
    .parameter

    .prologue
    .line 2987
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> tuneToStation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$29;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity$29;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$29;->start()V

    .line 3035
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< tuneToStation"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    return-void
.end method

.method private updateExpiredSleepTime()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 2401
    .line 2403
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-eqz v2, :cond_3

    .line 2404
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isSleepTimerActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2405
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2406
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v3}, Lcom/mediatek/FMRadio/IFMRadioService;->getSleepTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2408
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getRemainingSeconds()J

    move-result-wide v2

    .line 2409
    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2411
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2412
    if-ne v2, v1, :cond_2

    .line 2424
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2425
    return-void

    :cond_2
    move v0, v1

    .line 2412
    goto :goto_0

    .line 2420
    :catch_0
    move-exception v0

    .line 2422
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private useEarphone(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3834
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.useEarphone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v0, :cond_0

    .line 3836
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: No service interface."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.useEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    return-void

    .line 3840
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3842
    :catch_0
    move-exception v0

    .line 3843
    const-string v0, "FMRadioActivity"

    const-string v1, "Exception: Cannot call service function."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2798
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2

    .line 2799
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2800
    const-string v0, "ACTIVITY_RESULT"

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2801
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v1, :cond_1

    .line 2816
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2820
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    goto :goto_0

    .line 2832
    :cond_2
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {p0, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2833
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2834
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2849
    :goto_1
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The activity for requestcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not return any data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2839
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2842
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 3316
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 3324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 3325
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 3326
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3330
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    .line 3342
    :goto_1
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    return-void

    .line 3328
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3332
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 3371
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3373
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->invalidateOptionsMenu()V

    .line 3374
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 881
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 883
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 885
    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->requestWindowFeature(I)Z

    .line 886
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->setVolumeControlStream(I)V

    .line 887
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDisplayWidth:I

    .line 888
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 889
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 890
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->setContentView(I)V

    .line 892
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    .line 893
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    sget v2, Lcom/mediatek/FMRadio/FMRadioActivity;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setTextSize(I)V

    .line 895
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setDensity(I)V

    .line 896
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$8;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$8;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setOnScrollFinishedListener(Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;)V

    .line 918
    :cond_0
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    .line 920
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 921
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 924
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 927
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    .line 930
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    .line 933
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnRecord:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    .line 936
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSearch:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    .line 939
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 940
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnMenu:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 944
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {p0, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v1

    .line 945
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 946
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    if-eqz v1, :cond_1

    .line 950
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f020007

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 955
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$9;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$9;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 975
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$10;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$10;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1008
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 1009
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 1010
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/LinearLayout;

    .line 1013
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1014
    if-nez v0, :cond_2

    .line 1015
    const-string v0, "FMRadioActivity"

    const-string v2, "Error: Cannot start FM service"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :goto_1
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_3

    .line 1219
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 1221
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :goto_2
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f020005

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1018
    :cond_2
    const-string v0, "FMRadioActivity"

    const-string v2, "Start FM service successfully."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 1021
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$11;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$11;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1213
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    goto :goto_1

    .line 1225
    :cond_3
    const-string v0, "FMRadioActivity"

    const-string v2, "Bind FM service successfully."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1230
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1234
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1237
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_USE_EARPHONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1238
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_EXIT_FM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1243
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1245
    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 1246
    const-string v2, "FMRadioActivity"

    const-string v3, "Register broadcast receiver."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1252
    const/high16 v0, 0x7f02

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 1253
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 1254
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1256
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 1257
    if-eqz v1, :cond_4

    .line 1258
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    :goto_3
    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 1270
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$12;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$12;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 1297
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1298
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    add-int/lit16 v1, v1, -0x36b

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1300
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 1301
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 1307
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    const-string v1, "MHz"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 1310
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$13;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$13;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    const v0, 0x7f060044

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 1327
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$14;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$14;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    const v0, 0x7f060046

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 1340
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$15;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$15;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1352
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 1353
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$16;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$16;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1369
    const v0, 0x7f060045

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    .line 1370
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v0, :cond_5

    .line 1371
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1389
    :goto_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$17;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$17;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$18;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$18;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    .line 1802
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1808
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    .line 1809
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1264
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1374
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2657
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.onCreateDialog ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/4 v0, 0x0

    .line 2660
    if-ne p1, v4, :cond_0

    .line 2661
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2662
    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000c

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$25;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$25;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000d

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$24;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$24;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 2701
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 2776
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.onCreateDialog"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    return-object v0

    .line 2703
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 2704
    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 2707
    const v1, 0x7f040026

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2708
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2709
    new-array v1, v5, [Z

    .line 2711
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    aput-boolean v2, v1, v3

    .line 2712
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    aput-boolean v2, v1, v4

    .line 2714
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f040025

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$27;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$27;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000e

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$26;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$26;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    .line 2761
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    goto :goto_0

    .line 2762
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 2763
    new-instance v0, Lcom/mediatek/FMRadio/FMRecorderDialog;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/FMRadio/FMRecorderDialog;-><init>(Landroid/content/Context;Lcom/mediatek/FMRadio/IFMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    .line 2764
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2765
    const-string v0, "FMRadioActivity"

    const-string v1, "Show save recording file dialog."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2770
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    goto :goto_0

    .line 2773
    :cond_2
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: Invalid dialog id in main UI."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2159
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    const v0, 0x7f040004

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2164
    const/4 v0, 0x4

    const v1, 0x7f040079

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2166
    const/4 v0, 0x5

    const v1, 0x7f040084

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2167
    const v0, 0x7f040005

    invoke-interface {p1, v2, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2170
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2171
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2180
    :cond_1
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    return v3

    .line 2175
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBtnSwitchMode:Landroid/widget/ImageButton;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1962
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z

    .line 1965
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    if-eqz v0, :cond_1

    .line 1966
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1968
    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    .line 1971
    :cond_0
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$19;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$19;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$19;->start()V

    .line 1995
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1996
    const-string v0, "FMRadioActivity"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1998
    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 2001
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-eqz v0, :cond_3

    .line 2002
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2003
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 2006
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    if-eqz v0, :cond_4

    .line 2008
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v0, :cond_4

    .line 2009
    const-string v0, "FMRadioActivity"

    const-string v1, "FM is Playing. So stop it."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2011
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    .line 2012
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerDown()Z

    .line 2013
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 2018
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_5

    .line 2019
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2020
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 2023
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    if-eqz v0, :cond_7

    .line 2024
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    if-eqz v0, :cond_7

    .line 2025
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 2026
    if-nez v0, :cond_6

    .line 2027
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Cannot stop the FM service."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_6
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 2034
    :cond_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 2035
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2037
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopSleepThread()V

    .line 2040
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2041
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    if-eqz v0, :cond_9

    .line 2042
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 2044
    :cond_9
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3444
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    const/4 v0, 0x1

    .line 3446
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 3447
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    if-nez v1, :cond_0

    .line 3448
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3457
    :cond_0
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.onKeyDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    return v0

    .line 3455
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3480
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.onKeyLongPress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3482
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.onKeyLongPress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3462
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioActivity.onKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    const/4 v0, 0x1

    .line 3464
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 3465
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    if-nez v1, :cond_0

    .line 3466
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3475
    :cond_0
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.onKeyUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    return v0

    .line 3473
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 3438
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 3440
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 4221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4307
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2530
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 2533
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2643
    :cond_0
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    return v2

    .line 2536
    :sswitch_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startSearch()V

    goto :goto_0

    .line 2540
    :sswitch_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onBackPressed()V

    goto :goto_0

    .line 2543
    :sswitch_2
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    .line 2544
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    goto :goto_0

    .line 2559
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2560
    const-class v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2561
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2567
    :sswitch_4
    invoke-virtual {p0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->setSleepAlarm(Landroid/app/Activity;)V

    goto :goto_0

    .line 2572
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-eqz v0, :cond_0

    .line 2574
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->endSleepTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2575
    :catch_0
    move-exception v0

    .line 2577
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2533
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1922
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    .line 1924
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1926
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 1944
    :cond_0
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {p0, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1945
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020009

    const v4, 0x7f020007

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    .line 1950
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1952
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    return-void

    .line 1948
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020006

    const v4, 0x7f020005

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2781
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2782
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mStorageWarningTextView:Landroid/widget/TextView;

    .line 2784
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mStorageWarningTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2791
    :goto_0
    return-void

    .line 2786
    :cond_0
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsStorageWarning= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2789
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: invalid id"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2205
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-eqz v2, :cond_0

    .line 2232
    :goto_0
    return v0

    .line 2212
    :cond_0
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2213
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2214
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2219
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-eqz v2, :cond_1

    .line 2220
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isFMOverBTActive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2225
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v0, :cond_2

    .line 2231
    :cond_2
    const-string v0, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2232
    goto :goto_0

    .line 2222
    :catch_0
    move-exception v2

    .line 2223
    const-string v3, "FMRadioActivity"

    const-string v4, "Exception while isFMOverBTActive(): "

    invoke-static {v3, v4, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 528
    if-eqz p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit16 v1, v1, 0x36b

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1872
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1873
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v0, :cond_0

    .line 1875
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->setDisplayvalue()V

    .line 1877
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    .line 1878
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    if-eqz v0, :cond_5

    .line 1879
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    .line 1880
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    .line 1884
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    if-nez v0, :cond_1

    .line 1885
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    .line 1886
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 1888
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-eqz v0, :cond_2

    .line 1889
    const/4 v1, 0x0

    .line 1894
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1898
    :goto_1
    if-eqz v0, :cond_2

    .line 1899
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    const-string v3, "Audio"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".3gpp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1903
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1910
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v0, :cond_3

    .line 1911
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    add-int/lit16 v1, v1, -0x36b

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setValue(I)V

    .line 1913
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-nez v0, :cond_4

    .line 1914
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    .line 1916
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->initiateSleepThread()V

    .line 1917
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    return-void

    .line 1882
    :cond_5
    const-string v0, "FMRadioActivity"

    const-string v1, "doesn\'t need to refresh recording status"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 4204
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4205
    const/4 v0, 0x0

    .line 4207
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4212
    :goto_0
    const-string v1, "isInRecordingMode"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4213
    const-string v0, "mPrevRecorderState"

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4214
    const-string v0, "mIsFreshRecordingStatus"

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4215
    const-string v0, "mRecordState"

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4216
    const-string v0, "mIsShowSaveDialog"

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4217
    return-object v2

    .line 4209
    :catch_0
    move-exception v1

    .line 4210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 3306
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3308
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    const-string v0, "FM_INSTANCE_STATE_RECORDING_NAME"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3312
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1813
    const-string v0, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.onStart"

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1816
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1817
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    .line 1818
    const-string v0, "FMRadioActivity"

    const-string v3, "Configration changes,activity restart,need to reset UI!"

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1820
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 1821
    if-eqz v0, :cond_2

    .line 1822
    const-string v3, "mPrevRecorderState"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 1823
    const-string v3, "mRecordState"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 1824
    const-string v3, "mIsFreshRecordingStatus"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    .line 1825
    const-string v3, "mIsShowSaveDialog"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 1827
    const-string v3, "isInRecordingMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1828
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    .line 1829
    const-string v0, "FMRadioActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInRecordingMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mPrevRecorderState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1833
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1837
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v0, :cond_1

    .line 1841
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    if-eqz v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setEnabled(Z)V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1844
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1864
    :cond_2
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    return-void

    :cond_3
    move v0, v2

    .line 1838
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1841
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1844
    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1956
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1958
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, 0x36b

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    .line 541
    return-void
.end method

.method protected setDisplayvalue()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 778
    .line 779
    const v1, 0x155cc

    .line 780
    const/16 v2, 0x64

    .line 781
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    sget-object v3, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_MEDIUM:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    invoke-virtual {v0, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setScale(Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;)V

    .line 784
    const/16 v0, 0xce

    new-array v3, v0, [Ljava/lang/String;

    .line 785
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 786
    mul-int v4, v0, v2

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-virtual {v0, v3, v6}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setDisplayedValues([Ljava/lang/String;Z)V

    .line 789
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-virtual {v0, v6}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setWrapSelectorWheel(Z)V

    .line 791
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    .line 792
    return-void
.end method

.method public setSleepAlarm(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2475
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f040086

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const v2, 0x7f040087

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f040088

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f040089

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f04008a

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f04008b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2481
    sput v4, Lcom/mediatek/FMRadio/FMRadioActivity;->selectPos:I

    .line 2486
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2487
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2488
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$23;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity$23;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2522
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2523
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioActivity;->sleepListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2524
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2525
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2526
    return-void
.end method
