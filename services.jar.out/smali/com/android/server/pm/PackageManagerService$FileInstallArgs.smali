.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field codeFileName:Ljava/lang/String;

.field created:Z

.field installDir:Ljava/io/File;

.field libraryPath:Ljava/lang/String;

.field resourceFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "packageURI"
    .parameter "pkgName"
    .parameter "dataDir"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6196
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    .line 6197
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6180
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 6198
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 6199
    const-string v0, ".apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->access$4000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6200
    .local v6, apkName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 6201
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 6202
    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 6203
    return-void

    .line 6198
    .end local v6           #apkName:Ljava/lang/String;
    :cond_0
    #getter for: Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 6
    .parameter
    .parameter "params"

    .prologue
    .line 6182
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6183
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->manifestDigest:Landroid/content/pm/ManifestDigest;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 6185
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 6187
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    .line 6188
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6180
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 6189
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6190
    .local v6, codeFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 6191
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 6192
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 6193
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 6194
    return-void
.end method

.method private cleanUp()Z
    .locals 8

    .prologue
    .line 6341
    const/4 v2, 0x1

    .line 6342
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    .line 6343
    .local v3, sourceDir:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 6344
    .local v0, publicSourceDir:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 6345
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6346
    .local v4, sourceFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 6347
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    const/4 v2, 0x0

    .line 6351
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 6353
    .end local v4           #sourceFile:Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6354
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6355
    .local v1, publicSourceFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 6356
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package public source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6358
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6359
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6362
    .end local v1           #publicSourceFile:Ljava/io/File;
    :cond_3
    return v2
.end method

.method private isFwdLocked()Z
    .locals 1

    .prologue
    .line 6404
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPermissions()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 6380
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6381
    const/16 v0, 0x1a4

    .line 6384
    .local v0, filePermissions:I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v1

    .line 6385
    .local v1, retCode:I
    if-eqz v1, :cond_0

    .line 6386
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t set new package file permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The return code was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6390
    const/4 v2, 0x0

    .line 6394
    .end local v0           #filePermissions:I
    .end local v1           #retCode:I
    :cond_0
    return v2
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 8
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 6208
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceStorageMonitorService;

    .line 6210
    .local v0, dsm:Lcom/android/server/DeviceStorageMonitorService;
    if-nez v0, :cond_0

    .line 6211
    const-string v3, "PackageManager"

    const-string v4, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6212
    const-wide/16 v1, 0x0

    .line 6223
    .local v1, lowThreshold:J
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.defcontainer"

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6225
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v3, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->checkInternalFreeStorage(Landroid/net/Uri;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 6227
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 6225
    .end local v1           #lowThreshold:J
    :goto_1
    return v3

    .line 6214
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->isMemoryLow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6215
    const-string v3, "PackageManager"

    const-string v4, "Memory is reported as being too low; aborting package install"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6216
    const/4 v3, 0x0

    goto :goto_1

    .line 6219
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v1

    .restart local v1       #lowThreshold:J
    goto :goto_0

    .line 6227
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v3
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 6366
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 6367
    .local v1, sourceDir:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6368
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 6369
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 6370
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    .end local v0           #retCode:I
    :cond_0
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 9
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, -0x4

    .line 6243
    if-eqz p2, :cond_0

    .line 6245
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->createCopyFile()V

    .line 6248
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6249
    .local v0, codeFile:Ljava/io/File;
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    if-nez v4, :cond_1

    .line 6251
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 6253
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 6280
    :goto_0
    return v3

    .line 6257
    :catch_0
    move-exception v1

    .line 6258
    .local v1, e:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6262
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    .line 6264
    .local v2, out:Landroid/os/ParcelFileDescriptor;
    const/high16 v4, 0x3000

    :try_start_1
    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 6270
    const/4 v3, -0x4

    .line 6272
    .local v3, ret:I
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.defcontainer"

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6274
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v4, v2}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 6276
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 6277
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 6265
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 6266
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create file descriptor for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6276
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #ret:I
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 6277
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 6276
    throw v4

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 2

    .prologue
    .line 6236
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 6237
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    #calls: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 6238
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 6239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 6240
    return-void

    .line 6236
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .parameter "delete"

    .prologue
    .line 6399
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 6400
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 6315
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 6316
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 6318
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 6284
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 6285
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 6287
    :cond_0
    return p1
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6291
    if-eq p1, v4, :cond_1

    .line 6292
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 6310
    :cond_0
    :goto_0
    return v3

    .line 6296
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6297
    .local v1, codeFile:Ljava/io/File;
    const-string v5, ".apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v5}, Lcom/android/server/pm/PackageManagerService;->access$4000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6298
    .local v0, apkName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6299
    .local v2, desFile:Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6303
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 6304
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 6306
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 6310
    goto :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6232
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6337
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6322
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePathFromCodePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6326
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 6327
    .local v1, codePath:Ljava/lang/String;
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6328
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6329
    .local v0, apkNameOnly:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6331
    .end local v0           #apkNameOnly:Ljava/lang/String;
    .end local v1           #codePath:Ljava/lang/String;
    :cond_0
    return-object v1
.end method
