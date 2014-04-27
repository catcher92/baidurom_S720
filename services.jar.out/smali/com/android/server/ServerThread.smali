.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 98
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 99
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 898
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.SystemUIService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 900
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 903
    const-string v2, "SEATTLE"

    const-string v3, "SPAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 905
    .local v1, intentdock:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lenovo.ledock"

    const-string v4, "com.lenovo.ledock.LedockService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 907
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 911
    .end local v1           #intentdock:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 91
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method public run()V
    .locals 112

    .prologue
    .line 113
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 116
    const-string v3, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 117
    new-instance v3, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 121
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 124
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 125
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 129
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 131
    .local v93, shutdownAction:Ljava/lang/String;
    if-eqz v93, :cond_0

    invoke-virtual/range {v93 .. v93}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 132
    const/4 v3, 0x0

    move-object/from16 v0, v93

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_7

    const/16 v90, 0x1

    .line 135
    .local v90, reboot:Z
    :goto_0
    invoke-virtual/range {v93 .. v93}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_8

    .line 136
    const/4 v3, 0x1

    invoke-virtual/range {v93 .. v93}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v93

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v89

    .line 141
    .local v89, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v90

    move-object/from16 v1, v89

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 145
    .end local v89           #reason:Ljava/lang/String;
    .end local v90           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 146
    .local v65, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v64, 0x0

    .line 149
    .local v64, factoryTest:I
    :goto_2
    const/16 v73, 0x0

    .line 150
    .local v73, lights:Lcom/android/server/LightsService;
    const/16 v88, 0x0

    .line 151
    .local v88, power:Lcom/android/server/PowerManagerService;
    const/16 v44, 0x0

    .line 152
    .local v44, battery:Lcom/android/server/BatteryService;
    const/16 v41, 0x0

    .line 153
    .local v41, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 154
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 155
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v80, 0x0

    .line 156
    .local v80, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v54, 0x0

    .line 157
    .local v54, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v109, 0x0

    .line 158
    .local v109, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v107, 0x0

    .line 159
    .local v107, wifi:Lcom/android/server/WifiService;
    const/16 v87, 0x0

    .line 160
    .local v87, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 161
    .local v4, context:Landroid/content/Context;
    const/16 v111, 0x0

    .line 162
    .local v111, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v46, 0x0

    .line 163
    .local v46, bluetooth:Landroid/server/BluetoothService;
    const/16 v48, 0x0

    .line 164
    .local v48, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v51, 0x0

    .line 165
    .local v51, bluetoothSocket:Landroid/server/BluetoothSocketService;
    const/16 v37, 0x0

    .line 166
    .local v37, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v61, 0x0

    .line 167
    .local v61, dock:Lcom/android/server/DockObserver;
    const/16 v102, 0x0

    .line 168
    .local v102, usb:Lcom/android/server/usb/UsbService;
    const/16 v100, 0x0

    .line 169
    .local v100, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v91, 0x0

    .line 170
    .local v91, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v96, 0x0

    .line 171
    .local v96, throttle:Lcom/android/server/ThrottleService;
    const/16 v82, 0x0

    .line 172
    .local v82, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v69, 0x0

    .line 173
    .local v69, hdmi:Lcom/mediatek/hdmi/HDMIObserver;
    const/16 v66, 0x0

    .line 176
    .local v66, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 179
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_42

    .line 181
    .end local v88           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 183
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static/range {v64 .. v64}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 187
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 190
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v3, "telephony.registry2"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Z)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 194
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 196
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 199
    .local v58, cryptState:Ljava/lang/String;
    const/16 v86, 0x0

    .line 200
    .local v86, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 201
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v86, 0x1

    .line 208
    :cond_1
    :goto_3
    if-eqz v64, :cond_b

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v86

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v87

    .line 211
    const/16 v68, 0x0

    .line 213
    .local v68, firstBoot:Z
    :try_start_2
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v68

    .line 217
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 219
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 230
    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v3, 0x1

    move/from16 v0, v64

    if-ne v0, v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 234
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 237
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v74, Lcom/android/server/LightsService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 240
    .end local v73           #lights:Lcom/android/server/LightsService;
    .local v74, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v74

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_43

    .line 242
    .end local v44           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 244
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 249
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v74

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 251
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/baidu/service/YiServiceLoader;->main(Landroid/content/Context;)V

    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_44

    .line 253
    .end local v41           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_8
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 255
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 259
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v3, 0x1

    move/from16 v0, v64

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v68, :cond_e

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v111

    .line 263
    const-string v3, "window"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 265
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 270
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 271
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_a
    move-object/from16 v73, v74

    .line 309
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v68           #firstBoot:Z
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v86           #onlyCore:Z
    .restart local v73       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v59, 0x0

    .line 310
    .local v59, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v94, 0x0

    .line 311
    .local v94, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v71, 0x0

    .line 312
    .local v71, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v42, 0x0

    .line 313
    .local v42, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v84, 0x0

    .line 314
    .local v84, notification:Lcom/android/server/NotificationManagerService;
    const/16 v105, 0x0

    .line 315
    .local v105, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v75, 0x0

    .line 316
    .local v75, location:Lcom/android/server/LocationManagerService;
    const/16 v56, 0x0

    .line 317
    .local v56, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v98, 0x0

    .line 320
    .local v98, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v64

    if-eq v0, v3, :cond_2

    .line 322
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v72, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 324
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .local v72, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string v3, "input_method"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_41

    move-object/from16 v71, v72

    .line 330
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 339
    :cond_2
    :goto_d
    :try_start_c
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 345
    :goto_e
    :try_start_d
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 353
    :goto_f
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403bb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_40

    .line 367
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v64

    if-eq v0, v3, :cond_16

    .line 369
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v60, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 371
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v60, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_10
    const-string v3, "device_policy"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3f

    move-object/from16 v59, v60

    .line 377
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_11
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v95, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v95

    move-object/from16 v1, v111

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 379
    .end local v94           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v95, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_12
    const-string v3, "statusbar"

    move-object/from16 v0, v95

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3e

    move-object/from16 v94, v95

    .line 385
    .end local v95           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v94       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_12
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 393
    :goto_13
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 395
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 401
    :goto_14
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v99, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .line 403
    .end local v98           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v99, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_16
    const-string v3, "textservices"

    move-object/from16 v0, v99

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3d

    move-object/from16 v98, v99

    .line 409
    .end local v99           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v98       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_15
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v81, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 411
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v81, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_18
    const-string v3, "netstats"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3c

    move-object/from16 v12, v81

    .line 417
    .end local v81           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_16
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 421
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1a
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3b

    .line 427
    :goto_17
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v110, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 429
    .end local v109           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v110, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1c
    const-string v3, "wifip2p"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3a

    move-object/from16 v109, v110

    .line 435
    .end local v110           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v109       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_18
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v108, Lcom/android/server/WifiService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 437
    .end local v107           #wifi:Lcom/android/server/WifiService;
    .local v108, wifi:Lcom/android/server/WifiService;
    :try_start_1e
    const-string v3, "wifi"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_39

    move-object/from16 v107, v108

    .line 443
    .end local v108           #wifi:Lcom/android/server/WifiService;
    .restart local v107       #wifi:Lcom/android/server/WifiService;
    :goto_19
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v55, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 446
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .local v55, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_20
    const-string v3, "connectivity"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 447
    move-object/from16 v0, v55

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 448
    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 449
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 450
    invoke-virtual/range {v109 .. v109}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_38

    move-object/from16 v54, v55

    .line 456
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1a
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v97, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 458
    .end local v96           #throttle:Lcom/android/server/ThrottleService;
    .local v97, throttle:Lcom/android/server/ThrottleService;
    :try_start_22
    const-string v3, "throttle"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_37

    move-object/from16 v96, v97

    .line 469
    .end local v97           #throttle:Lcom/android/server/ThrottleService;
    .restart local v96       #throttle:Lcom/android/server/ThrottleService;
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 476
    :goto_1c
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v85, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v85

    move-object/from16 v1, v94

    move-object/from16 v2, v73

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 478
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .local v85, notification:Lcom/android/server/NotificationManagerService;
    :try_start_25
    const-string v3, "notification"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 479
    move-object/from16 v0, v85

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_36

    move-object/from16 v84, v85

    .line 485
    .end local v85           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 493
    :goto_1e
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v76, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    .line 495
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .local v76, location:Lcom/android/server/LocationManagerService;
    :try_start_28
    const-string v3, "location"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_35

    move-object/from16 v75, v76

    .line 501
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    :goto_1f
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v57, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_16

    .line 503
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v57, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2a
    const-string v3, "country_detector"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_34

    move-object/from16 v56, v57

    .line 509
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_20
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_17

    .line 517
    :goto_21
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "LenovoBatteryManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v78, Lcom/android/server/LenovoBatteryManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/LenovoBatteryManagerService;-><init>(Landroid/content/Context;)V

    .line 519
    .local v78, mLenovoBatteryManagerService:Lcom/android/server/LenovoBatteryManagerService;
    const-string v3, "LenovoBatteryManagerService"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 520
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/LenovoBatteryManagerService;->initReceiver()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_18

    .line 526
    .end local v78           #mLenovoBatteryManagerService:Lcom/android/server/LenovoBatteryManagerService;
    :goto_22
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_19

    .line 534
    :goto_23
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v106, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1a

    .line 536
    .end local v105           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v106, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_2f
    const-string v3, "wallpaper"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_33

    move-object/from16 v105, v106

    .line 542
    .end local v106           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v105       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_24
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1b

    .line 549
    :goto_25
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v3, "audioprofile"

    new-instance v9, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v9, v4}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1c

    .line 556
    :goto_26
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v62, Lcom/android/server/DockObserver;

    move-object/from16 v0, v62

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .end local v61           #dock:Lcom/android/server/DockObserver;
    .local v62, dock:Lcom/android/server/DockObserver;
    move-object/from16 v61, v62

    .line 564
    .end local v62           #dock:Lcom/android/server/DockObserver;
    .restart local v61       #dock:Lcom/android/server/DockObserver;
    :goto_27
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    .line 572
    :goto_28
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v103, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f

    .line 575
    .end local v102           #usb:Lcom/android/server/usb/UsbService;
    .local v103, usb:Lcom/android/server/usb/UsbService;
    :try_start_35
    const-string v3, "usb"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_32

    move-object/from16 v102, v103

    .line 581
    .end local v103           #usb:Lcom/android/server/usb/UsbService;
    .restart local v102       #usb:Lcom/android/server/usb/UsbService;
    :goto_29
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v101, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .end local v100           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v101, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v100, v101

    .line 589
    .end local v101           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v100       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2a
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .line 597
    :goto_2b
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v43, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_22

    .line 599
    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .local v43, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_39
    const-string v3, "appwidget"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_31

    move-object/from16 v42, v43

    .line 605
    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v42       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2c
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v92, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_23

    .end local v91           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v92, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v91, v92

    .line 614
    .end local v92           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v91       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2d
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "MTK Agps Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v3, "mtk-agps"

    new-instance v9, Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x1

    invoke-direct {v9, v4, v10, v11, v14}, Lcom/mediatek/agps/MtkAgpsManagerService;-><init>(Landroid/content/Context;ZZZ)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_24

    .line 625
    :goto_2e
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "MTK EPO Client Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v3, "mtk-epo-client"

    new-instance v9, Lcom/mediatek/epo/MtkEpoClientManagerService;

    invoke-direct {v9, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_25

    .line 632
    :goto_2f
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_26

    .line 643
    :goto_30
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_27

    .line 652
    :goto_31
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "HDMI Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v70, Lcom/mediatek/hdmi/HDMIObserver;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/mediatek/hdmi/HDMIObserver;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_28

    .end local v69           #hdmi:Lcom/mediatek/hdmi/HDMIObserver;
    .local v70, hdmi:Lcom/mediatek/hdmi/HDMIObserver;
    move-object/from16 v69, v70

    .line 662
    .end local v70           #hdmi:Lcom/mediatek/hdmi/HDMIObserver;
    .restart local v69       #hdmi:Lcom/mediatek/hdmi/HDMIObserver;
    :goto_32
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v83, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_29

    .end local v82           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v83, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v82, v83

    .line 671
    .end local v83           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v82       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_33
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 672
    .local v28, safeMode:Z
    if-eqz v28, :cond_12

    .line 673
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 675
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 677
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 685
    :goto_34
    if-eqz v59, :cond_3

    .line 687
    :try_start_41
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2a

    .line 693
    :cond_3
    :goto_35
    if-eqz v84, :cond_4

    .line 695
    :try_start_42
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2b

    .line 702
    :cond_4
    :goto_36
    :try_start_43
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2c

    .line 707
    :goto_37
    if-eqz v28, :cond_5

    .line 708
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 714
    :cond_5
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v53

    .line 715
    .local v53, config:Landroid/content/res/Configuration;
    new-instance v79, Landroid/util/DisplayMetrics;

    invoke-direct/range {v79 .. v79}, Landroid/util/DisplayMetrics;-><init>()V

    .line 716
    .local v79, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/view/WindowManager;

    .line 717
    .local v104, w:Landroid/view/WindowManager;
    invoke-interface/range {v104 .. v104}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v79

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 718
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v53

    move-object/from16 v1, v79

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 720
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 722
    :try_start_44
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2d

    .line 728
    :goto_38
    move-object/from16 v16, v4

    .line 729
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 730
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 731
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 732
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 733
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v54

    .line 734
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v61

    .line 735
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v102

    .line 736
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v96

    .line 737
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v100

    .line 738
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v42

    .line 739
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v105

    .line 740
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v71

    .line 741
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v91

    .line 742
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v75

    .line 743
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v56

    .line 744
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v82

    .line 745
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v98

    .line 746
    .local v36, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v94

    .line 748
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v17, v73

    .line 756
    .local v17, lightsF:Lcom/android/server/LightsService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v36}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 867
    :try_start_45
    const-string v3, "DMAgent"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v45

    .line 868
    .local v45, binder:Landroid/os/IBinder;
    if-eqz v45, :cond_15

    .line 869
    invoke-static/range {v45 .. v45}, Lcom/mediatek/dmagent/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/dmagent/DMAgent;

    move-result-object v39

    .line 870
    .local v39, agent:Lcom/mediatek/dmagent/DMAgent;
    invoke-interface/range {v39 .. v39}, Lcom/mediatek/dmagent/DMAgent;->isLockFlagSet()Z

    move-result v77

    .line 871
    .local v77, locked:Z
    if-eqz v94, :cond_14

    if-eqz v84, :cond_14

    if-eqz v7, :cond_14

    .line 872
    new-instance v67, Lcom/android/server/FrameworkDmService;

    move-object/from16 v0, v67

    move-object/from16 v1, v94

    move-object/from16 v2, v84

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/android/server/FrameworkDmService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/NotificationManagerService;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_2e

    .line 873
    .end local v66           #fdm:Lcom/android/server/FrameworkDmService;
    .local v67, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_46
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dm state lock is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v77

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    if-nez v77, :cond_13

    const/4 v3, 0x1

    :goto_39
    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_30

    move-object/from16 v66, v67

    .line 886
    .end local v39           #agent:Lcom/mediatek/dmagent/DMAgent;
    .end local v45           #binder:Landroid/os/IBinder;
    .end local v67           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v77           #locked:Z
    .restart local v66       #fdm:Lcom/android/server/FrameworkDmService;
    :goto_3a
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 887
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_6
    new-instance v3, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 893
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void

    .line 132
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #lightsF:Lcom/android/server/LightsService;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v37           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v51           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v53           #config:Landroid/content/res/Configuration;
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v61           #dock:Lcom/android/server/DockObserver;
    .end local v64           #factoryTest:I
    .end local v65           #factoryTestStr:Ljava/lang/String;
    .end local v66           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v69           #hdmi:Lcom/mediatek/hdmi/HDMIObserver;
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v79           #metrics:Landroid/util/DisplayMetrics;
    .end local v82           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v87           #pm:Landroid/content/pm/IPackageManager;
    .end local v91           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v94           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v96           #throttle:Lcom/android/server/ThrottleService;
    .end local v98           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v100           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v102           #usb:Lcom/android/server/usb/UsbService;
    .end local v104           #w:Landroid/view/WindowManager;
    .end local v105           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v107           #wifi:Lcom/android/server/WifiService;
    .end local v109           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v111           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_7
    const/16 v90, 0x0

    goto/16 :goto_0

    .line 138
    .restart local v90       #reboot:Z
    :cond_8
    const/16 v89, 0x0

    .restart local v89       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 146
    .end local v89           #reason:Ljava/lang/String;
    .end local v90           #reboot:Z
    .restart local v65       #factoryTestStr:Ljava/lang/String;
    :cond_9
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    goto/16 :goto_2

    .line 203
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v37       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v41       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #battery:Lcom/android/server/BatteryService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v51       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v61       #dock:Lcom/android/server/DockObserver;
    .restart local v64       #factoryTest:I
    .restart local v66       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v69       #hdmi:Lcom/mediatek/hdmi/HDMIObserver;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86       #onlyCore:Z
    .restart local v87       #pm:Landroid/content/pm/IPackageManager;
    .restart local v91       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v96       #throttle:Lcom/android/server/ThrottleService;
    .restart local v100       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v102       #usb:Lcom/android/server/usb/UsbService;
    .restart local v107       #wifi:Lcom/android/server/WifiService;
    .restart local v109       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v111       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_a
    :try_start_47
    const-string v3, "1"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v86, 0x1

    goto/16 :goto_3

    .line 208
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 226
    .restart local v68       #firstBoot:Z
    :catch_0
    move-exception v63

    .line 227
    .local v63, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_1

    goto/16 :goto_6

    .line 304
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v63           #e:Ljava/lang/Throwable;
    .end local v68           #firstBoot:Z
    .end local v86           #onlyCore:Z
    :catch_1
    move-exception v63

    move-object/from16 v7, v41

    .end local v41           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v44

    .line 305
    .end local v44           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v63, e:Ljava/lang/RuntimeException;
    :goto_3b
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 231
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v63           #e:Ljava/lang/RuntimeException;
    .restart local v41       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v68       #firstBoot:Z
    .restart local v86       #onlyCore:Z
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 260
    .end local v41           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #battery:Lcom/android/server/BatteryService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :cond_d
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 272
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, v64

    if-ne v0, v3, :cond_10

    .line 273
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 304
    :catch_2
    move-exception v63

    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto :goto_3b

    .line 275
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :cond_10
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v47, Landroid/server/BluetoothService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_2

    .line 277
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .local v47, bluetooth:Landroid/server/BluetoothService;
    :try_start_49
    const-string v3, "bluetooth"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 279
    new-instance v49, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_45

    .line 280
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_4a
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 285
    new-instance v52, Landroid/server/BluetoothSocketService;

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothSocketService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_46

    .line 286
    .end local v51           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .local v52, bluetoothSocket:Landroid/server/BluetoothSocketService;
    :try_start_4b
    const-string v3, "bluetooth_socket"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 290
    new-instance v38, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_47

    .line 291
    .end local v37           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v38, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_4c
    const-string v3, "bluetooth_profile_manager"

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 297
    .local v40, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v50

    .line 299
    .local v50, bluetoothOn:I
    if-nez v40, :cond_11

    if-eqz v50, :cond_11

    .line 300
    invoke-virtual/range {v47 .. v47}, Landroid/server/BluetoothService;->enable()Z
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_48

    :cond_11
    move-object/from16 v37, v38

    .end local v38           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v37       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v51, v52

    .end local v52           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v51       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 325
    .end local v40           #airplaneModeOn:I
    .end local v50           #bluetoothOn:I
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v68           #firstBoot:Z
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v86           #onlyCore:Z
    .restart local v42       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v94       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v98       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v105       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v63

    .line 326
    .local v63, e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 333
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v63

    .line 334
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 340
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v63

    .line 341
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 346
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v63

    .line 347
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 372
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v63

    .line 373
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 380
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v63

    .line 381
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 388
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v63

    .line 389
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 396
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v63

    .line 397
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 404
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v63

    .line 405
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 412
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v63

    .line 413
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 422
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v63

    move-object/from16 v8, v80

    .line 423
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 430
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v63

    .line 431
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 438
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v63

    .line 439
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 451
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v63

    .line 452
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 460
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v63

    .line 461
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 471
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v63

    .line 472
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 480
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v63

    .line 481
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 488
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v63

    .line 489
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 496
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v63

    .line 497
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 504
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v63

    .line 505
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 512
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v63

    .line 513
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 521
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v63

    .line 522
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting LenovoBatteryManagerService"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 529
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v63

    .line 530
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 537
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v63

    .line 538
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 544
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v63

    .line 545
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 551
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v63

    .line 552
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting AudioProfile Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 559
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v63

    .line 560
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 567
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v63

    .line 568
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 576
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v63

    .line 577
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 584
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v63

    .line 585
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 592
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v63

    .line 593
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 600
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v63

    .line 601
    .restart local v63       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 607
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v63

    .line 608
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 618
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v63

    .line 619
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Mtk Agps Manager"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 627
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v63

    .line 628
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Mtk EPO client manager"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 634
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v63

    .line 635
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 646
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v63

    .line 647
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 655
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v63

    .line 656
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting HDMIObserver"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 664
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v63

    .line 665
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 680
    .end local v63           #e:Ljava/lang/Throwable;
    .restart local v28       #safeMode:Z
    :cond_12
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_34

    .line 688
    :catch_2a
    move-exception v63

    .line 689
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 696
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v63

    .line 697
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 703
    .end local v63           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v63

    .line 704
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 723
    .end local v63           #e:Ljava/lang/Throwable;
    .restart local v53       #config:Landroid/content/res/Configuration;
    .restart local v79       #metrics:Landroid/util/DisplayMetrics;
    .restart local v104       #w:Landroid/view/WindowManager;
    :catch_2d
    move-exception v63

    .line 724
    .restart local v63       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 874
    .end local v63           #e:Ljava/lang/Throwable;
    .end local v66           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v16       #contextF:Landroid/content/Context;
    .restart local v17       #lightsF:Lcom/android/server/LightsService;
    .restart local v18       #batteryF:Lcom/android/server/BatteryService;
    .restart local v19       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v20       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v21       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v22       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v23       #dockF:Lcom/android/server/DockObserver;
    .restart local v24       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v25       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v26       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v27       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v29       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v30       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v31       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v32       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v33       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v34       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v35       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v36       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v39       #agent:Lcom/mediatek/dmagent/DMAgent;
    .restart local v45       #binder:Landroid/os/IBinder;
    .restart local v67       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v77       #locked:Z
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_39

    .line 876
    .end local v67           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v66       #fdm:Lcom/android/server/FrameworkDmService;
    :cond_14
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_2e

    goto/16 :goto_3a

    .line 881
    .end local v39           #agent:Lcom/mediatek/dmagent/DMAgent;
    .end local v45           #binder:Landroid/os/IBinder;
    .end local v77           #locked:Z
    :catch_2e
    move-exception v63

    .line 882
    .local v63, e:Ljava/lang/Exception;
    :goto_4c
    const-string v3, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 879
    .end local v63           #e:Ljava/lang/Exception;
    .restart local v45       #binder:Landroid/os/IBinder;
    :cond_15
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "dm binder is null!"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_2e

    goto/16 :goto_3a

    .line 214
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #lightsF:Lcom/android/server/LightsService;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v45           #binder:Landroid/os/IBinder;
    .end local v53           #config:Landroid/content/res/Configuration;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v79           #metrics:Landroid/util/DisplayMetrics;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v94           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v98           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v104           #w:Landroid/view/WindowManager;
    .end local v105           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v41       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v68       #firstBoot:Z
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86       #onlyCore:Z
    :catch_2f
    move-exception v3

    goto/16 :goto_5

    .line 881
    .end local v41           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #battery:Lcom/android/server/BatteryService;
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v66           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v68           #firstBoot:Z
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v86           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v16       #contextF:Landroid/content/Context;
    .restart local v17       #lightsF:Lcom/android/server/LightsService;
    .restart local v18       #batteryF:Lcom/android/server/BatteryService;
    .restart local v19       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v20       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v21       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v22       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v23       #dockF:Lcom/android/server/DockObserver;
    .restart local v24       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v25       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v26       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v27       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v28       #safeMode:Z
    .restart local v29       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v30       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v31       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v32       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v33       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v34       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v35       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v36       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v39       #agent:Lcom/mediatek/dmagent/DMAgent;
    .restart local v42       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #binder:Landroid/os/IBinder;
    .restart local v53       #config:Landroid/content/res/Configuration;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #locked:Z
    .restart local v79       #metrics:Landroid/util/DisplayMetrics;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v94       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v98       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v104       #w:Landroid/view/WindowManager;
    .restart local v105       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_30
    move-exception v63

    move-object/from16 v66, v67

    .end local v67           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v66       #fdm:Lcom/android/server/FrameworkDmService;
    goto :goto_4c

    .line 600
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #lightsF:Lcom/android/server/LightsService;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #agent:Lcom/mediatek/dmagent/DMAgent;
    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v45           #binder:Landroid/os/IBinder;
    .end local v53           #config:Landroid/content/res/Configuration;
    .end local v77           #locked:Z
    .end local v79           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #w:Landroid/view/WindowManager;
    .restart local v43       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_31
    move-exception v63

    move-object/from16 v42, v43

    .end local v43           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v42       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_4b

    .line 576
    .end local v102           #usb:Lcom/android/server/usb/UsbService;
    .restart local v103       #usb:Lcom/android/server/usb/UsbService;
    :catch_32
    move-exception v63

    move-object/from16 v102, v103

    .end local v103           #usb:Lcom/android/server/usb/UsbService;
    .restart local v102       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_4a

    .line 537
    .end local v105           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v106       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_33
    move-exception v63

    move-object/from16 v105, v106

    .end local v106           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v105       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_49

    .line 504
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_34
    move-exception v63

    move-object/from16 v56, v57

    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_48

    .line 496
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    :catch_35
    move-exception v63

    move-object/from16 v75, v76

    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_47

    .line 480
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v85       #notification:Lcom/android/server/NotificationManagerService;
    :catch_36
    move-exception v63

    move-object/from16 v84, v85

    .end local v85           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_46

    .line 460
    .end local v96           #throttle:Lcom/android/server/ThrottleService;
    .restart local v97       #throttle:Lcom/android/server/ThrottleService;
    :catch_37
    move-exception v63

    move-object/from16 v96, v97

    .end local v97           #throttle:Lcom/android/server/ThrottleService;
    .restart local v96       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_45

    .line 451
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_38
    move-exception v63

    move-object/from16 v54, v55

    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_44

    .line 438
    .end local v107           #wifi:Lcom/android/server/WifiService;
    .restart local v108       #wifi:Lcom/android/server/WifiService;
    :catch_39
    move-exception v63

    move-object/from16 v107, v108

    .end local v108           #wifi:Lcom/android/server/WifiService;
    .restart local v107       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_43

    .line 430
    .end local v109           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v110       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_3a
    move-exception v63

    move-object/from16 v109, v110

    .end local v110           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v109       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_42

    .line 422
    :catch_3b
    move-exception v63

    goto/16 :goto_41

    .line 412
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_3c
    move-exception v63

    move-object/from16 v12, v81

    .end local v81           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_40

    .line 404
    .end local v98           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v99       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_3d
    move-exception v63

    move-object/from16 v98, v99

    .end local v99           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v98       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3f

    .line 380
    .end local v94           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v95       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_3e
    move-exception v63

    move-object/from16 v94, v95

    .end local v95           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v94       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_3e

    .line 372
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3f
    move-exception v63

    move-object/from16 v59, v60

    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_3d

    .line 364
    :catch_40
    move-exception v3

    goto/16 :goto_10

    .line 325
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_41
    move-exception v63

    move-object/from16 v71, v72

    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3c

    .line 304
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v94           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v98           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v105           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v41       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #battery:Lcom/android/server/BatteryService;
    .restart local v88       #power:Lcom/android/server/PowerManagerService;
    :catch_42
    move-exception v63

    move-object/from16 v7, v41

    .end local v41           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v44

    .end local v44           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v88

    .end local v88           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_3b

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v41       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v68       #firstBoot:Z
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v86       #onlyCore:Z
    :catch_43
    move-exception v63

    move-object/from16 v7, v41

    .end local v41           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v44

    .end local v44           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3b

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v41       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_44
    move-exception v63

    move-object/from16 v7, v41

    .end local v41           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3b

    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_45
    move-exception v63

    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3b

    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_46
    move-exception v63

    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3b

    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v51           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_47
    move-exception v63

    move-object/from16 v51, v52

    .end local v52           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v51       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3b

    .end local v37           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v46           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v51           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v38       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_48
    move-exception v63

    move-object/from16 v37, v38

    .end local v38           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v37       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v51, v52

    .end local v52           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v51       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v48, v49

    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v46, v47

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3b

    .end local v58           #cryptState:Ljava/lang/String;
    .end local v68           #firstBoot:Z
    .end local v86           #onlyCore:Z
    .restart local v42       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v94       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v98       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v105       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_16
    move-object/from16 v8, v80

    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_33
.end method
