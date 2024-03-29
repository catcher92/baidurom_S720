.class public Landroid/net/NetworkIdentity;
.super Ljava/lang/Object;
.source "NetworkIdentity.java"


# instance fields
.field final mRoaming:Z

.field final mSubType:I

.field final mSubscriberId:Ljava/lang/String;

.field final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0
    .parameter "type"
    .parameter "subType"
    .parameter "subscriberId"
    .parameter "roaming"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/net/NetworkIdentity;->mType:I

    .line 42
    iput p2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    .line 43
    iput-object p3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    .line 45
    return-void
.end method

.method public static buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;
    .locals 6
    .parameter "context"
    .parameter "state"

    .prologue
    .line 111
    iget-object v5, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 112
    .local v4, type:I
    iget-object v5, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 119
    .local v1, subType:I
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 122
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 123
    .local v0, roaming:Z
    iget-object v5, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 124
    iget-object v2, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 132
    .end local v3           #telephony:Landroid/telephony/TelephonyManager;
    .local v2, subscriberId:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/net/NetworkIdentity;

    invoke-direct {v5, v4, v1, v2, v0}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Z)V

    return-object v5

    .line 126
    .end local v2           #subscriberId:Ljava/lang/String;
    .restart local v3       #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #subscriberId:Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v0           #roaming:Z
    .end local v2           #subscriberId:Ljava/lang/String;
    .end local v3           #telephony:Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v2, 0x0

    .line 130
    .restart local v2       #subscriberId:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #roaming:Z
    goto :goto_0
.end method

.method public static buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;J)Landroid/net/NetworkIdentity;
    .locals 7
    .parameter "context"
    .parameter "state"
    .parameter "simId"

    .prologue
    .line 141
    iget-object v6, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 142
    .local v5, type:I
    iget-object v6, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 149
    .local v2, subType:I
    invoke-static {v5}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 152
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 153
    .local v0, roaming:Z
    iget-object v6, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 154
    iget-object v3, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 163
    .end local v4           #telephony:Landroid/telephony/TelephonyManager;
    .local v3, subscriberId:Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/net/NetworkIdentity;

    invoke-direct {v6, v5, v2, v3, v0}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Z)V

    return-object v6

    .line 156
    .end local v3           #subscriberId:Ljava/lang/String;
    .restart local v4       #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {p0, p2, p3}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    .line 157
    .local v1, slotId:I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #subscriberId:Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0           #roaming:Z
    .end local v1           #slotId:I
    .end local v3           #subscriberId:Ljava/lang/String;
    .end local v4           #telephony:Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v3, 0x0

    .line 161
    .restart local v3       #subscriberId:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #roaming:Z
    goto :goto_0
.end method

.method public static scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 99
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "valid"

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 54
    instance-of v2, p1, Landroid/net/NetworkIdentity;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Landroid/net/NetworkIdentity;

    .line 56
    .local v0, ident:Landroid/net/NetworkIdentity;
    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mSubType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 60
    .end local v0           #ident:Landroid/net/NetworkIdentity;
    :cond_0
    return v1
.end method

.method public getRoaming()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 65
    iget v4, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, typeName:Ljava/lang/String;
    iget v4, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget v4, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, subTypeName:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, scrubSubscriberId:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-eqz v4, :cond_1

    const-string v0, ", ROAMING"

    .line 75
    .local v0, roaming:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 70
    .end local v0           #roaming:Ljava/lang/String;
    .end local v1           #scrubSubscriberId:Ljava/lang/String;
    .end local v2           #subTypeName:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #subTypeName:Ljava/lang/String;
    goto :goto_0

    .line 74
    .restart local v1       #scrubSubscriberId:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
