.class Lcom/mediatek/FMRadio/FMRadioActivity$11;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1023
    const-string v0, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.onServiceConnected"

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {p2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 1025
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1026
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: null interface"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 1204
    :cond_0
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onServiceConnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isServiceInit()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1031
    const-string v0, "FMRadioActivity"

    const-string v3, "FM service is not init."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->initService(I)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4800(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1035
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnablePSRT(Landroid/app/Activity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1036
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnableAF(Landroid/app/Activity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1038
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enablePSRT(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 1039
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5000(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enableAF(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 1042
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5300(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 1043
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1044
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5402(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1045
    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->start()V

    .line 1055
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5500(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1192
    :goto_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "FM_INSTANCE_STATE_RECORDING_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1197
    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2802(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->checkRemainingStorage()Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    if-nez v3, :cond_12

    :goto_2
    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1200
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V
    invoke-static {v0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6700(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 1058
    :cond_3
    const-string v0, "FMRadioActivity"

    const-string v3, "FM service is already init."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isDeviceOpen()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1061
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getFrequency()I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5700(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v0

    .line 1062
    const/16 v3, 0x438

    if-gt v0, v3, :cond_4

    const/16 v3, 0x36b

    if-ge v0, v3, :cond_9

    .line 1064
    :cond_4
    const-string v0, "FMRadioActivity"

    const-string v3, "Error: invalid frequency in service."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :goto_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isPowerUp()Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1104
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isRDSSupported()I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6000(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v0

    if-ne v1, v0, :cond_e

    move v0, v1

    :goto_4
    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1106
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1107
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1113
    :goto_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1114
    const-string v0, "FMRadioActivity"

    const-string v3, "FM is already power up."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->resumeFMAudio()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v3, 0x7f02002d

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1123
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1126
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1127
    const-string v0, "FMRadioActivity"

    const-string v3, "RDS is supported."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isPSRTEnabled()Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1131
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isAFEnabled()Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1134
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1136
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getPS()Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6400(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getLRText()Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6500(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1138
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1139
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1140
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1141
    const-string v4, "MSGID"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1142
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1152
    :cond_6
    :goto_7
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingMode()Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1153
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 1154
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1155
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v3, -0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1158
    :cond_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1159
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v3, 0x4

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6700(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1160
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6602(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1161
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1169
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto/16 :goto_1

    .line 1067
    :cond_9
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    if-eq v3, v0, :cond_d

    .line 1068
    const-string v3, "FMRadioActivity"

    const-string v4, "The frequency in FM service is not same as in database."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 1072
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 1074
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1076
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    add-int/lit16 v3, v3, -0x36b

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1078
    :cond_a
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1079
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPicker:Lcom/mediatek/FMRadio/HorizontalNumberPicker;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    add-int/lit16 v3, v3, -0x36b

    invoke-virtual {v0, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setValue(I)V

    .line 1081
    :cond_b
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1082
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v3, 0x7f020007

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1084
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1089
    :cond_c
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v3, 0x7f020005

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1092
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v4

    invoke-static {v3, v4, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1099
    :cond_d
    const-string v0, "FMRadioActivity"

    const-string v3, "The frequency in FM service is same as in database."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 1104
    goto/16 :goto_4

    .line 1110
    :cond_f
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto/16 :goto_5

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1147
    :cond_10
    const-string v0, "FMRadioActivity"

    const-string v3, "RDS is not supported."

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1163
    :catch_1
    move-exception v0

    .line 1164
    const-string v3, "FMRadioActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecordingMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1173
    :cond_11
    const-string v0, "FMRadioActivity"

    const-string v3, "Error: FM device is not open"

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    move v1, v2

    .line 1199
    goto/16 :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 1208
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 1210
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void
.end method
