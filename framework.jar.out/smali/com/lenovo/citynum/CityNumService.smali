.class public Lcom/lenovo/citynum/CityNumService;
.super Ljava/lang/Object;
.source "CityNumService.java"


# static fields
.field public static final ERR_NO_DATABASE:I = 0x9002

.field public static final ERR_TOO_SHORT:I = 0x9001

.field public static final FILE_NAME:Ljava/lang/String; = null

.field private static final FILE_PATH:Ljava/lang/String; = null

.field private static final PHONE_CITY_FORMAT_VER_1:I = 0x1

.field private static final PHONE_CITY_FORMAT_VER_2:I = 0x0

.field private static final PHONE_CITY_FORMAT_VER_3:I = 0x0

.field private static final POS_VERSION:I = 0x0

.field public static final QUERY_ERROR_INIT_FAILED:I = 0x7001

.field public static final QUERY_ERROR_NORMAL_ERROR:I = 0x7004

.field public static final QUERY_ERROR_NO_ERR:I = 0x7000

.field public static final QUERY_ERROR_TOO_SHORT:I = 0x7002

.field private static final TAG:Ljava/lang/String; = "CityNumService"

.field public static final UPDATE_RESULT_FAILED:I = 0x8002

.field public static final UPDATE_RESULT_SUCCESS:I = 0x8001

.field static hasInit:Z

.field private static sMe:Lcom/lenovo/citynum/CityNumService;


# instance fields
.field private final FILE_MD5_SERVER:Ljava/lang/String;

.field private final FILE_NAME_MD5_TEMP:Ljava/lang/String;

.field private final FILE_NAME_TEMP:Ljava/lang/String;

.field private final FILE_SERVER:Ljava/lang/String;

.field private final FILE_VERSION_DATA:Ljava/lang/String;

.field private final FILE_VERSION_SERVER:Ljava/lang/String;

.field private buf_is:Ljava/io/BufferedInputStream;

.field private city_pool:[Lcom/lenovo/citynum/CityInfo;

.field private data_version:[I

.field private file_is:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phone_city.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/lenovo/citynum/CityNumService;

    invoke-direct {v0}, Lcom/lenovo/citynum/CityNumService;-><init>()V

    sput-object v0, Lcom/lenovo/citynum/CityNumService;->sMe:Lcom/lenovo/citynum/CityNumService;

    .line 81
    const-string v0, "citycode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "http://rd.lenovomobile.com/callerloc/Version.txt"

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_SERVER:Ljava/lang/String;

    .line 35
    const-string v0, "http://rd.lenovomobile.com/callerloc/phone_city.bin"

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_SERVER:Ljava/lang/String;

    .line 36
    const-string v0, "http://rd.lenovomobile.com/callerloc/md5.txt"

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_MD5_SERVER:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "version.cgm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_DATA:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".md5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    .line 90
    return-void
.end method

.method private CompareMd5Match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"
    .parameter "md5"

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-static {p1}, Lcom/lenovo/citynum/MyMD5;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, fileMd5:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file md5 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "md5 in server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 304
    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private DownloadData(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 219
    new-instance v0, Lcom/lenovo/citynum/DownLoadFile;

    invoke-direct {v0}, Lcom/lenovo/citynum/DownLoadFile;-><init>()V

    .line 222
    .local v0, df:Lcom/lenovo/citynum/DownLoadFile;
    const/4 v4, 0x0

    .line 223
    .local v4, file_server:Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "temp.CGM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lenovo/citynum/CityNumService;->GetFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 226
    :cond_0
    const-string v4, "http://rd.lenovomobile.com/callerloc/phone_city.bin"

    .line 228
    :cond_1
    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Lcom/lenovo/citynum/DownLoadFile;->down_file2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 229
    const-string v8, "download file failed"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return v7

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/io/IOException;
    const-string v8, "download file error"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->DownloadMd5File()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    .line 241
    .local v6, result:Z
    if-eq v6, v8, :cond_3

    .line 256
    :try_start_2
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v5, filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 258
    .end local v5           #filemd5:Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 244
    :cond_3
    :try_start_3
    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->GetMd5StringFromFile()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/lenovo/citynum/CityNumService;->CompareMd5Match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 246
    const-string/jumbo v8, "md5 does not match"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 256
    :try_start_4
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 258
    .end local v5           #filemd5:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_0

    .line 256
    :cond_4
    :try_start_5
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 264
    .end local v5           #filemd5:Ljava/io/File;
    :goto_1
    :try_start_6
    new-instance v3, Ljava/io/File;

    sget-object v9, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v3, file1:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 266
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 269
    const/4 v9, 0x0

    sput-boolean v9, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    .line 270
    invoke-virtual {p0}, Lcom/lenovo/citynum/CityNumService;->InitModule()Z

    .line 271
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/lenovo/citynum/CityNumService;->onDownloadFinish(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move v7, v8

    .line 278
    goto :goto_0

    .line 250
    .end local v2           #file:Ljava/io/File;
    .end local v3           #file1:Ljava/io/File;
    .end local v6           #result:Z
    :catch_3
    move-exception v1

    .line 251
    .local v1, e:Ljava/lang/Exception;
    :try_start_7
    const-string v8, "get md file error"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 256
    :try_start_8
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 258
    .end local v5           #filemd5:Ljava/io/File;
    :catch_4
    move-exception v8

    goto :goto_0

    .line 255
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 256
    :try_start_9
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 260
    .end local v5           #filemd5:Ljava/io/File;
    :goto_2
    throw v7

    .line 273
    .restart local v6       #result:Z
    :catch_5
    move-exception v1

    .line 274
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 258
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #result:Z
    :catch_6
    move-exception v8

    goto :goto_2

    .restart local v6       #result:Z
    :catch_7
    move-exception v9

    goto :goto_1
.end method

.method private DownloadMd5File()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 283
    :try_start_0
    new-instance v0, Lcom/lenovo/citynum/DownLoadFile;

    invoke-direct {v0}, Lcom/lenovo/citynum/DownLoadFile;-><init>()V

    .line 284
    .local v0, df:Lcom/lenovo/citynum/DownLoadFile;
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    const-string v4, "http://rd.lenovomobile.com/callerloc/md5.txt"

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/citynum/DownLoadFile;->down_file2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 292
    .end local v0           #df:Lcom/lenovo/citynum/DownLoadFile;
    :goto_0
    return v2

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #df:Lcom/lenovo/citynum/DownLoadFile;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private DownloadVersionData()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 314
    new-instance v0, Lcom/lenovo/citynum/DownLoadFile;

    invoke-direct {v0}, Lcom/lenovo/citynum/DownLoadFile;-><init>()V

    .line 317
    .local v0, df:Lcom/lenovo/citynum/DownLoadFile;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_DATA:Ljava/lang/String;

    const-string v4, "http://rd.lenovomobile.com/callerloc/Version.txt"

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/citynum/DownLoadFile;->down_file2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 318
    const-string v3, "download file failed"

    invoke-direct {p0, v3}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return v2

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private GetFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 339
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 341
    .local v5, str:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v4, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 345
    .local v0, br:Ljava/io/BufferedReader;
    const-string v1, ""

    .line 347
    .local v1, data:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #data:Ljava/lang/String;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 352
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 353
    const/4 v6, 0x0

    .line 355
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return-object v6

    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private GetMd5StringFromFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lenovo/citynum/CityNumService;->GetFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, md5:Ljava/lang/String;
    return-object v0
.end method

.method private ReadByte([BILjava/lang/String;)I
    .locals 7
    .parameter "buf"
    .parameter "pos"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, temp:B
    const/4 v1, 0x0

    .line 404
    .local v1, len:I
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v4, :cond_0

    .line 405
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 408
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 409
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-nez v4, :cond_1

    .line 410
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 411
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 413
    :cond_1
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    .line 449
    :cond_2
    :goto_0
    return v3

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/io/IOException;
    iput-object v6, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    goto :goto_0

    .line 422
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    .line 423
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 424
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    int-to-byte v2, v4

    .line 425
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 426
    aput-byte v2, p1, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 432
    :cond_4
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    int-to-byte v2, v4

    .line 433
    aput-byte v2, p1, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    .line 435
    add-int/lit8 v4, v1, -0x2

    aget-byte v4, p1, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 440
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_5

    .line 442
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_1
    move v3, v1

    .line 449
    goto :goto_0

    .line 440
    :cond_6
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_2

    .line 442
    :try_start_3
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 443
    :catch_1
    move-exception v0

    .line 444
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 444
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 436
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 437
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 440
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_2

    .line 442
    :try_start_5
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 443
    :catch_4
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_7

    .line 442
    :try_start_6
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 445
    :cond_7
    :goto_2
    throw v3

    .line 443
    :catch_5
    move-exception v0

    .line 444
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private ReadCnt([BIILjava/lang/String;)I
    .locals 6
    .parameter "buf"
    .parameter "cnt"
    .parameter "pos"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 359
    const/4 v1, -0x1

    .line 362
    .local v1, len:I
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 366
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 367
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-nez v3, :cond_1

    .line 368
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 369
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 371
    :cond_1
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    .line 396
    :cond_2
    :goto_0
    return v2

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/io/IOException;
    iput-object v5, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    goto :goto_0

    .line 380
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    .line 381
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 382
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 387
    iget-object v2, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_4

    .line 389
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_1
    move v2, v1

    .line 396
    goto :goto_0

    .line 390
    :catch_1
    move-exception v0

    .line 391
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 383
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 384
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_2

    .line 389
    :try_start_4
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 390
    :catch_3
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_5

    .line 389
    :try_start_5
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 392
    :cond_5
    :goto_2
    throw v2

    .line 390
    :catch_4
    move-exception v0

    .line 391
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/lenovo/citynum/CityNumService;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lenovo/citynum/CityNumService;->DownloadData(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private native getDataVersion(I)I
.end method

.method public static getInstance()Lcom/lenovo/citynum/CityNumService;
    .locals 1

    .prologue
    .line 457
    sget-object v0, Lcom/lenovo/citynum/CityNumService;->sMe:Lcom/lenovo/citynum/CityNumService;

    return-object v0
.end method

.method private native getLocName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native init()Z
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 453
    const-string v0, "CityNumService"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method private onDownloadFinish(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 330
    const-string v0, "download finish"

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 331
    return-void
.end method


# virtual methods
.method public CheckNewServerVersion()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, version:Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-nez v8, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v6

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->DownloadVersionData()Z

    move-result v8

    if-nez v8, :cond_2

    move v6, v7

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_DATA:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->GetFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "version data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 146
    const-string v8, "\\D"

    const-string v9, "\t"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, version_digit:Ljava/lang/String;
    const-string v8, "\t+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, format_version:[Ljava/lang/String;
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_3

    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    aget-object v8, v0, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 152
    :cond_3
    const-string/jumbo v6, "wrong format version"

    invoke-direct {p0, v6}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    move v6, v7

    .line 153
    goto :goto_0

    .line 156
    :cond_4
    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, version_1:I
    const/4 v8, 0x4

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, version_2:I
    const/4 v8, 0x5

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, version_3:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server version"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locate version"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 162
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v8, v8, v7

    if-gt v2, v8, :cond_0

    .line 164
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v8, v8, v7

    if-ge v2, v8, :cond_5

    move v6, v7

    .line 165
    goto/16 :goto_0

    .line 167
    :cond_5
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v8, v8, v6

    if-gt v3, v8, :cond_0

    .line 169
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v8, v8, v6

    if-ge v3, v8, :cond_6

    move v6, v7

    .line 170
    goto/16 :goto_0

    .line 172
    :cond_6
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v8, v8, v10

    if-gt v4, v8, :cond_0

    .line 174
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    aget v6, v6, v10

    if-ge v4, v6, :cond_7

    move v6, v7

    .line 175
    goto/16 :goto_0

    :cond_7
    move v6, v7

    .line 177
    goto/16 :goto_0
.end method

.method public InitModule()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 121
    sget-boolean v1, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "has init"

    invoke-direct {p0, v1}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->init()Z

    move-result v1

    sput-boolean v1, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    .line 128
    iget-object v1, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    invoke-direct {p0, v3}, Lcom/lenovo/citynum/CityNumService;->getDataVersion(I)I

    move-result v2

    aput v2, v1, v3

    .line 129
    iget-object v1, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->getDataVersion(I)I

    move-result v2

    aput v2, v1, v0

    .line 130
    iget-object v0, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[I

    invoke-direct {p0, v4}, Lcom/lenovo/citynum/CityNumService;->getDataVersion(I)I

    move-result v1

    aput v1, v0, v4

    .line 131
    sget-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    goto :goto_0
.end method

.method public UpDateData(Landroid/os/Handler;)Z
    .locals 4
    .parameter "handler"

    .prologue
    .line 203
    move-object v0, p1

    .line 204
    .local v0, hl:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 205
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/lenovo/citynum/CityNumService$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/lenovo/citynum/CityNumService$1;-><init>(Lcom/lenovo/citynum/CityNumService;Landroid/os/Message;Landroid/os/Handler;)V

    .line 213
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 215
    const/4 v3, 0x1

    return v3
.end method

.method public checkHasInit()Z
    .locals 1

    .prologue
    .line 461
    sget-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    return v0
.end method

.method public onQuery(Ljava/lang/String;Lcom/lenovo/citynum/CityInfo;)I
    .locals 3
    .parameter "num"
    .parameter "cityinfo"

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/citynum/CityNumService;->getLocName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, locName:Ljava/lang/String;
    iput-object v1, p2, Lcom/lenovo/citynum/CityInfo;->city_cn:Ljava/lang/String;

    .line 109
    iput-object v1, p2, Lcom/lenovo/citynum/CityInfo;->city_en:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v2, 0x0

    .end local v1           #locName:Ljava/lang/String;
    :goto_0
    return v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/16 v2, 0x7004

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
