.class public Lcom/android/internal/telephony/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static mContext:Landroid/content/Context;

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static mIsDBReady:Z

.field private static mQuerySync:Ljava/lang/Object;

.field private static myInstance:Lcom/android/internal/telephony/GeoCodingQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 19
    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mQuerySync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sput-object p1, Lcom/android/internal/telephony/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/android/internal/telephony/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static canQuery()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private static closeDatabase()V
    .locals 1

    .prologue
    .line 109
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/GeoCodingQuery;
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    sget-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/internal/telephony/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static openDatabase(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 92
    :try_start_0
    const-string v1, "GeoCodingQuery"

    const-string v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 95
    sget-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/android/internal/telephony/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method

.method public static queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    .line 43
    sget-object v8, Lcom/android/internal/telephony/GeoCodingQuery;->mQuerySync:Ljava/lang/Object;

    monitor-enter v8

    .line 44
    :try_start_0
    const-string v4, ""

    .line 45
    .local v4, returnValue:Ljava/lang/String;
    const/4 v2, 0x7

    .line 47
    .local v2, numberLength:I
    sget-object v7, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    if-nez v7, :cond_0

    .line 48
    const-string v7, "GeoCodingQuery"

    const-string v9, "Database is not opened !"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-exit v8

    move-object v5, v4

    .line 86
    .end local v4           #returnValue:Ljava/lang/String;
    .local v5, returnValue:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 53
    .end local v5           #returnValue:Ljava/lang/String;
    .restart local v4       #returnValue:Ljava/lang/String;
    :cond_0
    const-string v7, " "

    const-string v9, ""

    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, queryNumber:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_1

    .line 55
    const-string v7, "GeoCodingQuery"

    const-string v9, "The length of dial number is less than 7 !"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    monitor-exit v8

    move-object v5, v4

    .end local v4           #returnValue:Ljava/lang/String;
    .restart local v5       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v5           #returnValue:Ljava/lang/String;
    .restart local v4       #returnValue:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v7, "GeoCodingQuery"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query number = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-lt v7, v9, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x39

    if-le v7, v9, :cond_3

    .line 64
    :cond_2
    monitor-exit v8

    move-object v5, v4

    .end local v4           #returnValue:Ljava/lang/String;
    .restart local v5       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v5           #returnValue:Ljava/lang/String;
    .restart local v4       #returnValue:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Select city_name from NumberCity, city where _id = CityID and NumberHead = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, sqlCmd:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    :cond_5
    if-eqz v0, :cond_6

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_6
    monitor-exit v8

    move-object v5, v4

    .end local v4           #returnValue:Ljava/lang/String;
    .restart local v5       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #i:I
    .end local v2           #numberLength:I
    .end local v3           #queryNumber:Ljava/lang/String;
    .end local v5           #returnValue:Ljava/lang/String;
    .end local v6           #sqlCmd:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
