.class public Lcom/mediatek/epo/MtkEpoClientManager;
.super Ljava/lang/Object;
.source "MtkEpoClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final EPO_STATUS_CANCELED:I = 0xcb

.field public static final EPO_STATUS_CANCELING:I = 0xcc

.field public static final EPO_STATUS_IDLE:I = 0x12c

.field public static final EPO_STATUS_STARTING:I = 0xc8

.field public static final EPO_STATUS_UPDATE:Ljava/lang/String; = "com.mediatek.epo.STATUS_UPDATED"

.field public static final EPO_STATUS_UPDATE_FAILURE:I = 0xca

.field public static final EPO_STATUS_UPDATE_SUCCESS:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MtkEpoClientManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/epo/MtkEpoStatusListener;",
            "Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/mediatek/epo/IMtkEpoClientManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    .line 63
    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mContext:Landroid/content/Context;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    .line 78
    const-string v1, "MtkEpoClientManager constructor"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManager;->log(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mContext:Landroid/content/Context;

    .line 80
    const-string/jumbo v1, "mtk-epo-client"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 82
    invoke-static {v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/epo/IMtkEpoClientManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    .line 83
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    if-nez v1, :cond_0

    .line 84
    const-string v1, "ERR: mManager is null.."

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManager;->log(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "ERR: IBinder is null.."

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 302
    const-string v0, "MtkEpoClientManager"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method


# virtual methods
.method public addStatusListener(Lcom/mediatek/epo/MtkEpoStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    .line 197
    .local v1, transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    if-nez v1, :cond_1

    .line 198
    new-instance v1, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    .end local v1           #transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;-><init>(Lcom/mediatek/epo/MtkEpoClientManager;Lcom/mediatek/epo/MtkEpoStatusListener;)V

    .line 200
    .restart local v1       #transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v2, v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->addStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableAutoDownload(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/epo/IMtkEpoClientManager;->enableAutoDownload(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .parameter "cmd"
    .parameter "extra"

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/epo/IMtkEpoClientManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 298
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 298
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoDownloadStatus()Z
    .locals 2

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getAutoDownloadStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEpoFileInfo()Lcom/mediatek/epo/MtkEpoFileInfo;
    .locals 2

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/epo/MtkEpoFileInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 170
    const/16 v1, 0x12c

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 2

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 161
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUpdatePeriod()J
    .locals 3

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getUpdatePeriod()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 268
    :goto_0
    return-wide v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 268
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public removeStatusListener(Lcom/mediatek/epo/MtkEpoStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    .line 217
    .local v1, transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 218
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v2, v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->removeStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1           #transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/epo/IMtkEpoClientManager;->setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRetryTimes(I)V
    .locals 2
    .parameter "times"

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/epo/IMtkEpoClientManager;->setRetryTimes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/epo/IMtkEpoClientManager;->setTimeout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUpdatePeriod(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/epo/IMtkEpoClientManager;->setUpdatePeriod(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startDownload()I
    .locals 2

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->startDownload()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    :goto_0
    return v1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopDownload()V
    .locals 2

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->stopDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
