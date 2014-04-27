.class Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellStateListener"
.end annotation


# instance fields
.field private mSimID:I

.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1021
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1019
    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    .line 1022
    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    .line 1023
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;I)V
    .locals 1
    .parameter
    .parameter "whichSIM"

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1019
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    .line 1026
    iput p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    .line 1027
    return-void
.end method

.method private getIpAddr(ZI)Ljava/lang/String;
    .locals 6
    .parameter "isGemini"
    .parameter "whichSIM"

    .prologue
    .line 1108
    const/4 v1, 0x0

    .line 1109
    .local v1, ip:Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1110
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz p1, :cond_3

    .line 1111
    if-eqz v2, :cond_0

    .line 1113
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1114
    :try_start_0
    const-string v3, "default"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1132
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1133
    const-string v1, "127.0.0.0"

    .line 1135
    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1136
    return-object v1

    .line 1116
    :cond_2
    :try_start_1
    const-string v3, "default"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1119
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: getIpAddressGemini(GEMINI_SIM_1) throw exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    if-eqz v2, :cond_0

    .line 1125
    :try_start_2
    const-string v3, "default"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1126
    :catch_1
    move-exception v0

    .line 1127
    .restart local v0       #ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1128
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: getIpAddress(Single_SIM_1) throw exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNetworkType()I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1058
    const/4 v3, 0x0

    .line 1059
    .local v3, ret:I
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1060
    .local v2, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1061
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1063
    .local v0, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_2

    .line 1066
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1067
    .local v1, networkType:I
    if-eq v1, v7, :cond_0

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 1071
    :cond_0
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " network type is 3G, networkType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1072
    const/4 v3, 0x1

    .line 1082
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #networkType:I
    :goto_0
    return v3

    .line 1074
    .restart local v0       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #networkType:I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " network type is 2G, networkType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    .end local v1           #networkType:I
    :cond_2
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v5, "ERR: gsm_cell is invalid"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERR: phone type is not GSM ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (0:NONE 1:GSM 2:CDMA 3:SIP)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNetworkType2(I)I
    .locals 5
    .parameter "whichSIM"

    .prologue
    .line 1031
    const-string v2, "gsm.cs.network.type.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, networkType:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 1033
    const-string v2, "gsm.cs.network.type.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    :goto_0
    const/4 v1, 0x0

    .line 1039
    .local v1, network_cs_type:I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1040
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1041
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1045
    :cond_0
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network type is 3G, networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1046
    const/4 v2, 0x1

    .line 1052
    :goto_1
    return v2

    .line 1035
    .end local v1           #network_cs_type:I
    :cond_1
    const-string v2, "gsm.cs.network.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1049
    .restart local v1       #network_cs_type:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: network type is invalid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1051
    :cond_3
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network type is 2G, networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1052
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isNetworkRoaming(ZI)Z
    .locals 2
    .parameter "isGemini"
    .parameter "whichSIM"

    .prologue
    .line 1140
    if-eqz p1, :cond_1

    .line 1141
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 1146
    :goto_0
    return v0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method private updateCallState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1209
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x1e

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    .line 1214
    :goto_0
    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x1d

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto :goto_0
.end method

.method private updateConnectionState(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1161
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim2:I
    invoke-static {v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2302(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1163
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x26

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim2:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    .line 1168
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim1:I
    invoke-static {v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1166
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x25

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim1:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto :goto_0
.end method

.method private updateIPAdress()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 1171
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1302(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 1172
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v6

    move v4, v3

    move v5, v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1500(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V

    .line 1176
    :cond_0
    return-void
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 1151
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->getNetworkType()I

    move-result v1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim2:I
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2102(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1153
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim2:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    .line 1158
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->getNetworkType()I

    move-result v1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim1:I
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2202(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1156
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim1:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto :goto_0
.end method

.method private updateRoamingStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1188
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    if-ne v0, v3, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2700(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->isNetworkRoaming(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2802(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1194
    :goto_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNetworkRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2800(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2800(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    .line 1205
    :goto_1
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I
    invoke-static {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2802(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    goto :goto_0

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2700(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->isNetworkRoaming(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1198
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2902(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1202
    :goto_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNetworkRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2900(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2900(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto :goto_1

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I
    invoke-static {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2902(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    goto :goto_2
.end method

.method private updateSimStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1179
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mSim2Status:I
    invoke-static {v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2502(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1181
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x1c

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    .line 1186
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mSim1Status:I
    invoke-static {v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2602(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    .line 1184
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x1b

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v0, v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto :goto_0
.end method


# virtual methods
.method public getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1087
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1088
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1090
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1091
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1092
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1093
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1094
    .local v5, ip:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1104
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    .end local v5           #ip:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 1104
    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1101
    :catch_1
    move-exception v0

    .line 1102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phone call_state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0:idle 1:ringing 2:offhook)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateCallState(I)V

    .line 1261
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-boolean v0, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCellLocationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->agpsUpdateCellInfo()I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    .line 1223
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mSim1Status:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2600(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1224
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateNetworkType()V

    .line 1227
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1231
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-boolean v0, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateConnectionState(I)V

    .line 1234
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateNetworkType()V

    .line 1235
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateIPAdress()V

    .line 1236
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->agpsUpdateCellInfo()I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-boolean v0, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateConnectionState(I)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    .line 1246
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phone status: in service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1248
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateSimStatus(I)V

    .line 1249
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateRoamingStatus()V

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->mSimID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phone status: out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;->updateSimStatus(I)V

    goto :goto_0
.end method
