.class Lcom/mediatek/FMRadio/FMRadioService$2;
.super Lcom/mediatek/FMRadio/IFMRadioService$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activeAF()I
    .locals 4

    .prologue
    .line 1050
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.activeAF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v0

    .line 1052
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return v0
.end method

.method public activeTA()I
    .locals 4

    .prologue
    .line 1057
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.activeTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeTA()S

    move-result v0

    .line 1059
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.activeTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return v0
.end method

.method public closeDevice()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 711
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.closeDevice"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1600(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$2;->isRDSSupported()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 716
    const-string v0, "FMRadioService"

    const-string v1, "RDS is supported. Stop the RDS thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 721
    :goto_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    .line 722
    if-eqz v0, :cond_1

    .line 723
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 731
    :goto_1
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v0

    .line 719
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "RDS is not supported."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_1
    const-string v1, "FMRadioService"

    const-string v2, "Error: closedev failed."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 728
    :cond_2
    const-string v1, "FMRadioService"

    const-string v2, "Error: device is already closed."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deactiveTA()I
    .locals 4

    .prologue
    .line 1064
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.deactiveTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->deactiveTA()S

    move-result v0

    .line 1066
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.deactiveTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return v0
.end method

.method public enableAF(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1127
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enableAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1130
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.enableAF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-void
.end method

.method public enablePSRT(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1116
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enablePSRT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1118
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v1, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v1, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1123
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.enablePSRT"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return-void
.end method

.method public enableTA(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1134
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enableTA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1136
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.enableTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void
.end method

.method public endSleepTime()V
    .locals 3

    .prologue
    .line 1357
    const-string v0, "FMRadioService"

    const-string v1, ">>> endSleepTime:"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-wide/16 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3502(Lcom/mediatek/FMRadio/FMRadioService;J)J

    .line 1359
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3700(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3700(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1362
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< endSleepTime:"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return-void
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1158
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getFrequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v0

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 1341
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1044
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getLRText"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1038
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getPS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2700(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2700(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getPosition()I

    move-result v0

    .line 1317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->recordTime()J

    move-result-wide v0

    .line 1282
    :goto_0
    return-wide v0

    .line 1281
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecorderState()I
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1309
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingMode()Z
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemainingSeconds()J
    .locals 4

    .prologue
    .line 1377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1378
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3500(Lcom/mediatek/FMRadio/FMRadioService;)J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getResumeAfterCall()Z
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public getSleepTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1374
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioService;->access$4000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 1193
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 3
    .parameter

    .prologue
    .line 1103
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.initService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1105
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1106
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.initService"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return-void
.end method

.method public isAFEnabled()Z
    .locals 3

    .prologue
    .line 1146
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isAFEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isAFEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 736
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isDeviceOpen"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isDeviceOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1600(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1600(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isEarphoneUsed()Z
    .locals 3

    .prologue
    .line 1097
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isEarphoneUsed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isEarphoneUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isFMOverBTActive()Z
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isPSRTEnabled()Z
    .locals 3

    .prologue
    .line 1140
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isPSRTEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isPSRTEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 929
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isPowerUp"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isPowerUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isRDSSupported()I
    .locals 4

    .prologue
    .line 1078
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isRDSSupported"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v0, 0x0

    .line 1080
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return v0
.end method

.method public isSIMCardIdle()Z
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceInit()Z
    .locals 3

    .prologue
    .line 1110
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isServiceInit"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isServiceInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isSleepTimerActive()Z
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->hasSleepTimerActive()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isSleepTimerExpired()Z
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->hasSleepTimerExpired()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isTAEnabled()Z
    .locals 3

    .prologue
    .line 1152
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isTAEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isTAEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public openDevice()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 693
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.openDevice"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1600(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    const-string v1, "FMRadioService"

    const-string v2, "Error: device is already open."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.openDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return v0

    .line 699
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v1

    .line 700
    if-eqz v1, :cond_1

    .line 701
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v2, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    move v0, v1

    goto :goto_0

    .line 703
    :cond_1
    const-string v0, "FMRadioService"

    const-string v2, "Error: opendev failed."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 855
    const-string v0, "FMRadioService"

    const-string v2, ">>> FMRadioService.powerDown"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 858
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 859
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v0

    .line 860
    if-eqz v0, :cond_6

    .line 861
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 862
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$2;->isRDSSupported()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 863
    const-string v1, "FMRadioService"

    const-string v2, "RDS is supported. Stop the RDS thread."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 869
    :goto_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2500(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 871
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 872
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$2;->isSleepTimerActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$2;->endSleepTime()V

    .line 879
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    const-string v2, "EXTRA_FMRADIO_ISPOWERUP"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 885
    const-string v1, "FMRadioService"

    const-string v2, "release wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    if-nez v1, :cond_2

    .line 892
    const-string v1, "bluetooth_a2dp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 894
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerdown: IBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    if-eqz v1, :cond_2

    .line 896
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2302(Lcom/mediatek/FMRadio/FMRadioService;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 897
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerdown: mA2dpService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 901
    const-string v1, "FMRadioService"

    const-string v2, "powerdown: mA2dpService != null"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->getState()I

    move-result v1

    .line 904
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerdown: mA2dpService.getState()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 908
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 909
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 910
    const-string v1, "FMRadioService"

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN sent to A2dp service!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_4
    :goto_1
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.powerDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return v0

    .line 866
    :cond_5
    const-string v1, "FMRadioService"

    const-string v2, "RDS is not supported."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    :catch_0
    move-exception v1

    .line 913
    const-string v1, "FMRadioService"

    const-string v2, "binder error!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 918
    :cond_6
    const-string v1, "FMRadioService"

    const-string v2, "Error: powerdown failed."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 921
    :cond_7
    const-string v0, "FMRadioService"

    const-string v2, "Error: device is already power down."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 922
    goto :goto_1
.end method

.method public powerUp(F)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 742
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.powerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 745
    const/4 v1, 0x0

    .line 746
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/high16 v3, 0x4120

    mul-float/2addr v3, p1

    float-to-int v3, v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 752
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 756
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 757
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    const-string v1, "FMRadioService"

    const-string v2, "Error: device is already power up."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.powerUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return v0

    .line 764
    :cond_0
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_1
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result v1

    .line 777
    if-eqz v1, :cond_7

    .line 779
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 785
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v2, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 786
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v3, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v3, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$2;->isRDSSupported()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 791
    const-string v2, "FMRadioService"

    const-string v3, "RDS is supported. Start the RDS thread."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 798
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    const-string v3, "EXTRA_FMRADIO_ISPOWERUP"

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 803
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 804
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 805
    const-string v2, "FMRadioService"

    const-string v3, "acquire wake lock"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_1
    const-string v2, "bluetooth_a2dp"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 812
    const-string v3, "FMRadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerup: A2dp service IBinder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz v2, :cond_6

    .line 814
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2302(Lcom/mediatek/FMRadio/FMRadioService;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 816
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothA2dp;->setAudioPathToAudioTrack(Landroid/os/IBinder;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 820
    :goto_3
    const-string v0, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerup: mA2dpService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothA2dp;->getState()I

    move-result v0

    .line 824
    :goto_4
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerup: mA2dpService.getState()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5

    .line 828
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    const-string v2, "FMRadioService"

    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP sent to A2dp service!!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    move v0, v1

    .line 842
    goto/16 :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 766
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 767
    const-string v1, "FMRadioService"

    const-string v2, "Exception: Thread.sleep."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 794
    :cond_3
    const-string v2, "FMRadioService"

    const-string v3, "RDS is not supported."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 817
    :catch_1
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 822
    :cond_4
    const/4 v0, -0x1

    goto :goto_4

    .line 832
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 834
    :catch_2
    move-exception v0

    .line 835
    const-string v0, "FMRadioService"

    const-string v2, "binder error!!"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 838
    :cond_6
    const-string v2, "FMRadioService"

    const-string v3, "Failed to bind to BluetoothA2dpService!!!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v2, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto :goto_5

    .line 843
    :cond_7
    const-string v0, "FMRadioService"

    const-string v2, "Error: powerup failed."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    .line 847
    :cond_8
    const-string v0, "FMRadioService"

    const-string v2, "Phone call is ongoing."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0
.end method

.method public readCapArray()I
    .locals 2

    .prologue
    .line 1183
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.readCapArray"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readCapArray()S

    move-result v0

    return v0
.end method

.method public readRDS()I
    .locals 4

    .prologue
    .line 1031
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.readRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readrds()S

    move-result v0

    .line 1033
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.readRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return v0
.end method

.method public readRdsBler()I
    .locals 2

    .prologue
    .line 1203
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRdsBler()S

    move-result v0

    return v0
.end method

.method public readRssi()I
    .locals 2

    .prologue
    .line 1188
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.readRssi"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRssi()I

    move-result v0

    return v0
.end method

.method public resumeFMAudio()V
    .locals 2

    .prologue
    .line 1164
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 1171
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return-void

    .line 1168
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "resumeFMAudio: FM over BT via controller ongoing, so do NOT enable FMPlayer!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveRecording(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1264
    const-string v0, "FMRadioService"

    const-string v1, ">>> saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1266
    if-eqz p1, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/FMRadio/FMRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1274
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    goto :goto_0

    .line 1272
    :cond_1
    const-string v0, "FMRadioService"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seek(FZ)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 946
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.seek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-static {p1, p2}, Lcom/mediatek/FMRadio/FMRadioNative;->seek(FZ)F

    move-result v0

    .line 948
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.seek: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v0
.end method

.method public setMute(Z)I
    .locals 4
    .parameter

    .prologue
    .line 1071
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.setMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result v0

    .line 1073
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return v0
.end method

.method public setRDS(Z)I
    .locals 4
    .parameter

    .prologue
    .line 1022
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.setRDS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->rdsset(Z)I

    move-result v0

    .line 1024
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1026
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return v0
.end method

.method public setRecordingMode(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1287
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> setRecordingMode: isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1289
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1292
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1298
    :cond_0
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void

    .line 1294
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->resetRecorder()V

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 1198
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public setStopPressed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1346
    return-void
.end method

.method public startPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1228
    const-string v0, "FMRadioService"

    const-string v1, ">>> startPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1235
    if-ne v3, v0, :cond_1

    .line 1236
    const-string v0, "FMRadioService"

    const-string v1, "Record player get audio focus"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->startPlayback()V

    .line 1245
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< startPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-void

    .line 1239
    :cond_1
    const-string v0, "FMRadioService"

    const-string v1, "Record player request audio focus failed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1243
    :cond_2
    const-string v0, "FMRadioService"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecording()V
    .locals 2

    .prologue
    .line 1208
    const-string v0, "FMRadioService"

    const-string v1, ">>> startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v1, Lcom/mediatek/FMRadio/FMRecorder;

    invoke-direct {v1}, Lcom/mediatek/FMRadio/FMRecorder;-><init>()V

    iput-object v1, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1211
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->registerRecorderStateListener(Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;)V

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->startRecording()V

    .line 1214
    const-string v0, "FMRadioService"

    const-string v1, "<<< startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void
.end method

.method public startScan()[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 953
    const-string v0, "FMRadioService"

    const-string v3, ">>> FMRadioService.startScan"

    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService$2;->setRDS(Z)I

    .line 958
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 979
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v0, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 980
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->autoscan()[S

    move-result-object v0

    .line 981
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v3, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 983
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 984
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 985
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 986
    invoke-virtual {p0, v6}, Lcom/mediatek/FMRadio/FMRadioService$2;->setRDS(Z)I

    .line 988
    const-string v3, "FMRadioService"

    const-string v4, "startScan: scan complete, but don\'t enable audio yet!"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1001
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    move-object v3, v2

    .line 1004
    :goto_2
    if-eqz v3, :cond_6

    .line 1005
    array-length v0, v3

    new-array v2, v0, [I

    move v0, v1

    .line 1006
    :goto_3
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 1007
    aget-short v1, v3, v0

    aput v1, v2, v0

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x4120

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    .line 963
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    const/4 v0, -0x1

    .line 966
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService$2;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 970
    :goto_4
    const-string v3, "FMRadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startScan: switchAntenna(1): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 967
    :catch_0
    move-exception v3

    .line 968
    const-string v3, "FMRadioService"

    const-string v4, "Exception: switchAntenna(1)"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 991
    :cond_3
    const-string v3, "FMRadioService"

    const-string v4, "A phone call is ongoing."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 995
    :cond_4
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 1010
    :goto_5
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.startScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-object v0

    :cond_6
    move-object v0, v2

    goto :goto_5

    :cond_7
    move-object v3, v0

    goto :goto_2
.end method

.method public startSleepTime(J)V
    .locals 5
    .parameter

    .prologue
    .line 1350
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> startSleepTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mSleepAtPhoneTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3502(Lcom/mediatek/FMRadio/FMRadioService;J)J

    .line 1352
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->initiateSleepThread()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3600(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1353
    const-string v0, "FMRadioService"

    const-string v1, "<<< startSleepTime:"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 1249
    const-string v0, "FMRadioService"

    const-string v1, ">>> stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3300(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1252
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1253
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 1259
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1260
    const-string v0, "FMRadioService"

    const-string v1, "<<< stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void

    .line 1257
    :cond_1
    const-string v0, "FMRadioService"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 1218
    const-string v0, "FMRadioService"

    const-string v1, ">>> stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1220
    const-string v0, "FMRadioService"

    const-string v1, "stopRecording called without a valid recorder!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1224
    const-string v0, "FMRadioService"

    const-string v1, "<<< stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 1015
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.stopScan"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    move-result v0

    .line 1017
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return v0
.end method

.method public switchAntenna(I)I
    .locals 4
    .parameter

    .prologue
    .line 1175
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.switchAntenna:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->switchAntenna(I)I

    move-result v0

    .line 1177
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.switchAntenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return v0
.end method

.method public tune(F)Z
    .locals 4
    .parameter

    .prologue
    .line 935
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.tune: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    .line 937
    if-eqz v0, :cond_0

    .line 938
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/high16 v2, 0x4120

    mul-float/2addr v2, p1

    float-to-int v2, v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 939
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 941
    :cond_0
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return v0
.end method

.method public useEarphone(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1085
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.useEarphone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    if-eqz p1, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioSetForceToSpeaker=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1093
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.useEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioSetForceToSpeaker=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_0
.end method
