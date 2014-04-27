.class public Lcom/android/server/LenovoBatteryManagerService;
.super Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
    }
.end annotation


# static fields
.field public static final CPU1_ONLINE_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu1/online"

.field public static final CPU_SCALING_GOVERNOR_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field public static final HOT_PLAG_ENABLE_FILE:Ljava/lang/String; = "/proc/mtk_hotplug/enable"

.field private static final MAX_CPU_FREQ_1000:Ljava/lang/String; = "1007500"

.field private static final MAX_CPU_FREQ_1200:Ljava/lang/String; = "1209000"

.field private static final MAX_CPU_FREQ_300:Ljava/lang/String; = "302250"

.field private static final MAX_CPU_FREQ_600:Ljava/lang/String; = "604500"

.field private static final MAX_CPU_FREQ_800:Ljava/lang/String; = "806000"

.field private static final MAX_CPU_FREQ_900:Ljava/lang/String; = "906750"

.field private static final MAX_FREQ_SET_FILE_PTATH:Ljava/lang/String; = "//sys//devices//system//cpu//cpu0//cpufreq//scaling_max_freq"

.field private static final TAG:Ljava/lang/String; = "LenovoBatteryManagerService"

.field private static final package_action:Ljava/lang/String; = "action.boardcast.resume.activity.info"


# instance fields
.field private currentCABCStates:I

.field private currentDVFSStates:I

.field private currentPackageName:Ljava/lang/String;

.field private mAppMaxFreqMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

.field private patternValue:I

.field private power:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 198
    invoke-direct {p0}, Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;-><init>()V

    .line 84
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    .line 103
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.contacts"

    const-string v2, "1209000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.mms"

    const-string v2, "1209000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.music"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.mediatek.videoplayer"

    const-string v2, "1209000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.camera"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.FileBrowser"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.settings"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.browser"

    const-string v2, "1209000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovomobile.deskclock"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.leos.appstore"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.app.Calendar"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.powersaving"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.calculator2"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.soundrecorder"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.mediatek.FMRadio"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.novicetutorial"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.sdapkinstaller"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "package:com.lenovo.leos.hw"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.BackupRestore"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.snda.inote.lenovo"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.leos.cloud.sync"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.service"

    const-string v2, "1209000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.safecenter"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.launcher"

    const-string v2, "1209000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.levoice"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.android.settings.tether"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.onekeylock"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.email"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.lenovohdllight"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.baidu.searchbox_lenovo"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.baidu.BaiduMap"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.sina.weibo"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.sohu.sohuvideo"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.dianping.v1"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.youdao.dict"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.UCMobile"

    const-string v2, "1209000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.autonavi.xmgd.navigator.phone.lenovo.s720"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.iyd.reader.ReadingJoy"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.mt.mtxx.mtxx"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "viva.reader"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "cn.wps.moffice"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "baoshi.playplus.hda"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.stk"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.stk2"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.android.quicksearchbox"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "lenovo.citynum"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.ting.mp3.oemc.android"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "806000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    const-string v1, "com.lenovo.leos.lenovoservicesetting"

    const-string v2, "604500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LenovoBatteryManagerService$1;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    iput-object v4, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    .line 315
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    .line 341
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    .line 201
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    .line 202
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;-><init>(Lcom/android/server/LenovoBatteryManagerService;Lcom/android/server/LenovoBatteryManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    .line 203
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    .line 208
    const-string v0, "LenovoBatteryManagerService"

    const-string v1, "LenovoBatteryManagerService() init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->executePackageChange(Ljava/lang/String;)V

    return-void
.end method

.method private static disableDual()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "/proc/mtk_hotplug/enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "/sys/devices/system/cpu/cpu1/online"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const-string v1, "ondemand"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private static echo2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "file"
    .parameter "value"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/android/server/LenovoBatteryManagerService;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 188
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 190
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static enableDual()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "/proc/mtk_hotplug/enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "/sys/devices/system/cpu/cpu1/online"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private declared-synchronized executePackageChange(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->isPackageChange(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 289
    :cond_1
    :try_start_1
    const-string v0, "_fuck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->setCABC(Ljava/lang/String;)V

    .line 294
    const-string v0, "S890"

    const-string v1, "S720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "A800"

    const-string v1, "S720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->setLowMaxFreqInLauncher(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPackageChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 307
    const-string v1, "LenovoBatteryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageChange, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 311
    :cond_1
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readEchoFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    .line 171
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCABC(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 343
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCABC, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setCABCOff()V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    if-eq v0, v3, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setCABCOn()V

    .line 359
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    goto :goto_0
.end method

.method private setDVFS(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 317
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDVFS, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.sensky.reader.ReadingJoy_lenovo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.tencent.qq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.tencent.WBlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    :cond_0
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    if-eq v0, v3, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setDVFSOn()V

    .line 327
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setDVFSOff()V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    goto :goto_0
.end method

.method private setLowMaxFreqInLauncher(Ljava/lang/String;)V
    .locals 7
    .parameter "pkgName"

    .prologue
    .line 242
    iget-object v4, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 243
    const-string v5, "//sys//devices//system//cpu//cpu0//cpufreq//scaling_max_freq"

    iget-object v4, p0, Lcom/android/server/LenovoBatteryManagerService;->mAppMaxFreqMapping:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 249
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 250
    .local v1, sourceDir:Ljava/lang/String;
    const-string v4, "_ACTY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,sourceDir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v1, :cond_0

    .line 253
    const-string v4, "/system"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/vendor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 254
    :cond_2
    const-string v4, "lenovo.cpu.maxcpufreq.default"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, strDefaultMaxFreq:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 256
    :cond_3
    const-string v4, "//sys//devices//system//cpu//cpu0//cpufreq//scaling_max_freq"

    const-string v5, "806000"

    invoke-static {v4, v5}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #sourceDir:Ljava/lang/String;
    .end local v2           #strDefaultMaxFreq:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 259
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #sourceDir:Ljava/lang/String;
    .restart local v2       #strDefaultMaxFreq:Ljava/lang/String;
    :cond_4
    const-string v4, "//sys//devices//system//cpu//cpu0//cpufreq//scaling_max_freq"

    invoke-static {v4, v2}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v2           #strDefaultMaxFreq:Ljava/lang/String;
    :cond_5
    const-string v4, "enovo.cpu.maxcpufreq.max"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, strMaxFreq:Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 272
    :cond_6
    const-string v4, "//sys//devices//system//cpu//cpu0//cpufreq//scaling_max_freq"

    const-string v5, "1209000"

    invoke-static {v4, v5}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_7
    const-string v4, "//sys//devices//system//cpu//cpu0//cpufreq//scaling_max_freq"

    invoke-static {v4, v3}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getPatternValue()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    return v0
.end method

.method public initReceiver()V
    .locals 3

    .prologue
    .line 222
    const-string v1, "LenovoBatteryManagerService"

    const-string v2, "initReceiver() init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action.boardcast.resume.activity.info"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method

.method public setPatternValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 217
    iput p1, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 218
    return-void
.end method
