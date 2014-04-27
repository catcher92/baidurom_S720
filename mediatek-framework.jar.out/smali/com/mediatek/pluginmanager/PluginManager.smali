.class public final Lcom/mediatek/pluginmanager/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPermissionCheck:Z

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPluginIntent:Ljava/lang/String;

.field private mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/pluginmanager/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Z[Landroid/content/pm/Signature;)V
    .locals 2
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "permissionCheck"
    .parameter "signatures"

    .prologue
    .line 116
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginIntent cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    iput-object p1, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    .line 126
    iput-boolean p3, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPermissionCheck:Z

    .line 127
    iput-object p4, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    .line 128
    iput-object p2, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPluginIntent:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 131
    invoke-virtual {p0}, Lcom/mediatek/pluginmanager/PluginManager;->refreshPlugin()I

    .line 132
    return-void
.end method

.method private checkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .parameter "pkgInfo"

    .prologue
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    const/4 v5, 0x1

    .line 136
    iget-boolean v6, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPermissionCheck:Z

    if-eqz v6, :cond_0

    .line 137
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 138
    .local v3, permissions:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 150
    .end local v3           #permissions:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 141
    .restart local v3       #permissions:[Ljava/lang/String;
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 142
    .local v4, permit:Ljava/lang/String;
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 143
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The plugin \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' request for permission \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' which is not allowed on calling process"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v5, 0x0

    goto :goto_0

    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private checkSignature(Landroid/content/pm/PackageInfo;)Z
    .locals 12
    .parameter "pkgInfo"

    .prologue
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 157
    const-string v9, "ro.secure"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 161
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->checkAPKSignatures(Ljava/lang/String;)I

    move-result v6

    .line 162
    .local v6, systemSignatureCheck:I
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mPkgMgr.checkAPKSignatures("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v9, 0x5

    if-eq v6, v9, :cond_0

    if-nez v6, :cond_2

    .line 166
    :cond_0
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-nez v9, :cond_3

    .line 167
    :cond_1
    const-string v7, "PluginManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The plugin \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' didn\'t signed by system signature and no specified signature by host-app."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 189
    .end local v6           #systemSignatureCheck:I
    :cond_2
    :goto_0
    return v7

    .line 170
    .restart local v6       #systemSignatureCheck:I
    :cond_3
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 171
    .local v5, signatures:[Landroid/content/pm/Signature;
    if-nez v5, :cond_4

    .line 172
    const-string v7, "PluginManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The plugin \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' didn\'t signed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 173
    goto :goto_0

    .line 176
    :cond_4
    move-object v0, v5

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v4, v0, v2

    .line 177
    .local v4, signature:Landroid/content/pm/Signature;
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Plugin signatures: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-ge v1, v9, :cond_5

    .line 179
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested signatures["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v4           #signature:Landroid/content/pm/Signature;
    :cond_6
    move v7, v8

    .line 185
    goto/16 :goto_0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;Z[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "permissionCheck"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;Z[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "metaName"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v1, Lcom/mediatek/pluginmanager/PluginManager;

    invoke-direct {v1, p0, p1, v3, p3}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Landroid/content/pm/Signature;)V

    .line 86
    .local v1, pluginManager:Lcom/mediatek/pluginmanager/PluginManager;
    invoke-virtual {v1}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v1, v3}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v0

    .line 88
    .local v0, plugin:Lcom/mediatek/pluginmanager/Plugin;
    invoke-virtual {v0, p2}, Lcom/mediatek/pluginmanager/Plugin;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 90
    .end local v0           #plugin:Lcom/mediatek/pluginmanager/Plugin;
    :cond_0
    new-instance v2, Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such plugin \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "class"

    invoke-static {p0, p1, v0, p2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mediatek/pluginmanager/Plugin",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    const/4 v0, 0x0

    .line 272
    .local v0, result:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<TT;>;"
    iget-object v1, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<TT;>;"
    check-cast v0, Lcom/mediatek/pluginmanager/Plugin;

    .line 273
    .restart local v0       #result:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<TT;>;"
    return-object v0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 261
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public refreshPlugin()I
    .locals 12

    .prologue
    .line 199
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v5, newPlugins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/pluginmanager/Plugin;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPluginIntent:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, baseIntent:Landroid/content/Intent;
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v10, 0x84

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 205
    .local v7, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillPluginList: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 209
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 210
    .local v8, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-nez v8, :cond_1

    .line 211
    const-string v9, "PluginManager"

    const-string v10, "Ignore bad plugin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x1040

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 224
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_2

    .line 225
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The plugin \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' packageInfo == null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find plugin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-direct {p0, v6}, Lcom/mediatek/pluginmanager/PluginManager;->checkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 235
    invoke-direct {p0, v6}, Lcom/mediatek/pluginmanager/PluginManager;->checkSignature(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 241
    :try_start_1
    new-instance v9, Lcom/mediatek/pluginmanager/Plugin;

    iget-object v10, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v4}, Lcom/mediatek/pluginmanager/Plugin;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/mediatek/pluginmanager/Plugin$PluginCreationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v2

    .line 243
    .local v2, ex:Lcom/mediatek/pluginmanager/Plugin$PluginCreationException;
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occurs when create plugin."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ex.cause:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mediatek/pluginmanager/Plugin$PluginCreationException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    .end local v2           #ex:Lcom/mediatek/pluginmanager/Plugin$PluginCreationException;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_3
    iput-object v5, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    .line 250
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    return v9
.end method
