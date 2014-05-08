.class public Lcom/mediatek/FMRadio/FMRadioRecorderHistory;
.super Landroid/app/ListActivity;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FMRecorder"

.field public static mIcon:Landroid/graphics/drawable/Drawable; = null

.field private static mItems:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastListPosCourse:I = 0x0

.field private static mLastListPosFine:I = 0x0

.field private static mRecSize:I = 0x0

.field private static mStrHour:Ljava/lang/String; = null

.field private static mStrMinute:Ljava/lang/String; = null

.field private static mStrSecond:Ljava/lang/String; = null

.field public static final optionsIDMulSet:I = 0x1

.field public static final optionsIDSelAll:I = 0x2

.field public static final optionsIDSelDel:I = 0x3

.field public static final optionsIDUnSelAll:I = 0x4

.field public static final optionsStringNoItem:Ljava/lang/String; = "update_msg"


# instance fields
.field private DeleteOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private bIsSelMode:Z

.field private mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnDel:Landroid/widget/Button;

.field private mCbSelAll:Landroid/widget/CheckBox;

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLayout:Landroid/widget/RelativeLayout;

.field private mMimeType:Ljava/lang/String;

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRenameDlg:Landroid/app/AlertDialog;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSortOrder:Ljava/lang/String;

.field private mStrTempFilePath:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mUseLastListPos:Z

.field private renameOkListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 143
    sput v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosCourse:I

    .line 144
    sput v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosFine:I

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 189
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRecSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapterSent:Z

    .line 145
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mUseLastListPos:Z

    .line 146
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    .line 465
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$4;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 481
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$5;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mReScanHandler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->DeleteOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1027
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->renameOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsSelAll()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)J
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showDeleteMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->hideDeleteMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showMessage(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareRename()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsUnSelAll()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->addToMediaDB(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrHour:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrMinute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrSecond:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->isAllSel()V

    return-void
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRecSize:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .parameter

    .prologue
    .line 129
    sput p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRecSize:I

    return p0
.end method

.method static synthetic access$2800(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->reCalc(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2900(Ljava/io/File;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->size(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->cancelDeleteMode()V

    return-void
.end method

.method static synthetic access$3000(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getFileSizeStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsDel()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getTrackCursor(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getSelSize()I

    move-result v0

    return v0
.end method

.method private addToMediaDB(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v0, 0x0

    .line 1102
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1103
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1105
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 1106
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1107
    new-instance v8, Ljava/text/SimpleDateFormat;

    const v9, 0x7f040077

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1113
    const-string v8, "is_music"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string v8, "title"

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v7, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v7, "date_added"

    div-long/2addr v3, v10

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    const-string v3, "date_modified"

    div-long v4, v5, v10

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    const-string v3, "mime_type"

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v3, "artist"

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v3, "album"

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v3, "duration"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1125
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1127
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1128
    if-nez v1, :cond_0

    .line 1129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040078

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1142
    :goto_0
    return-object v0

    .line 1136
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1137
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v2

    int-to-long v4, v2

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 1141
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->sendBroadcast(Landroid/content/Intent;)V

    move-object v0, v1

    .line 1142
    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1147
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v6

    .line 1149
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1154
    :cond_0
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 1156
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1157
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1158
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1161
    const-string v3, "play_order"

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const-string v2, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private cancelDeleteMode()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    .line 203
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showDeleteMode()V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->setIsMulti(Z)V

    .line 210
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 212
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->hideDeleteMode()V

    goto :goto_0
.end method

.method public static deleteTracks(Landroid/content/Context;[JZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 881
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v1, "_data"

    aput-object v1, v2, v9

    const/4 v1, 0x2

    const-string v3, "album_id"

    aput-object v3, v2, v1

    .line 883
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    const-string v1, "_id IN ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 886
    aget-wide v7, p1, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 887
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 888
    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_1
    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 942
    :cond_2
    :goto_1
    return-void

    .line 896
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 899
    if-eqz v0, :cond_6

    .line 906
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 917
    if-eqz p2, :cond_5

    .line 919
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 920
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 922
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 923
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 928
    const-string v2, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 931
    :catch_0
    move-exception v1

    .line 932
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 936
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 911
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private static getFileSizeStr(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const-wide/32 v4, 0x100000

    const-wide/16 v2, 0x400

    .line 1363
    int-to-long v0, p0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1364
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1366
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1377
    :goto_0
    return-object v0

    .line 1367
    :cond_0
    int-to-long v0, p0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 1368
    int-to-long v0, p0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1370
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :cond_1
    int-to-long v0, p0

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1743
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1744
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 1746
    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "FM Recordings"

    aput-object v0, v4, v3

    .line 1747
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1748
    const/4 v0, -0x1

    .line 1750
    if-eqz v1, :cond_0

    .line 1751
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1752
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1753
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1761
    :cond_0
    if-eqz v1, :cond_1

    .line 1762
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1767
    :cond_1
    :goto_0
    return v0

    .line 1758
    :catch_0
    move-exception v2

    .line 1761
    if-eqz v1, :cond_1

    .line 1762
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1761
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1762
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1763
    :cond_2
    throw v0
.end method

.method private getSelSize()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 863
    .line 864
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 866
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v1

    .line 868
    :goto_0
    if-ge v2, v3, :cond_0

    .line 870
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    add-int/lit8 v0, v1, 0x1

    .line 868
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 877
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getTrackCursor(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1383
    if-nez p1, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1411
    :cond_0
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSortOrder:Ljava/lang/String;

    .line 1412
    const-string v0, "date_modified desc"

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSortOrder:Ljava/lang/String;

    .line 1413
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mPlaylistMemberCols:[Ljava/lang/String;

    const-string v3, "_data LIKE \'%/Audio%\'"

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSortOrder:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 1427
    :cond_1
    :goto_0
    return-object v4

    .line 1424
    :catch_0
    move-exception v1

    .line 1425
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v4, v0

    .line 1427
    goto :goto_0
.end method

.method private hideDeleteMode()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 181
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    :cond_1
    return-void
.end method

.method private isAllSel()V
    .locals 2

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getSelSize()I

    move-result v0

    sget-object v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private optionsDel()V
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getSelSize()I

    move-result v0

    .line 726
    if-nez v0, :cond_0

    .line 728
    const v0, 0x7f040075

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showMessage(I)V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareDelete()V

    goto :goto_0
.end method

.method private optionsSelAll()V
    .locals 3

    .prologue
    .line 702
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 703
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 705
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 711
    :cond_1
    return-void
.end method

.method private optionsUnSelAll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 713
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    move v0, v1

    .line 714
    :goto_0
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 716
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 723
    :cond_1
    return-void
.end method

.method private prepareAttr()V
    .locals 6

    .prologue
    .line 1304
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1305
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1306
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1310
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1311
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1313
    if-nez v2, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1318
    :cond_0
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f040072

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1319
    const v0, 0x7f060005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1322
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1324
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f040073

    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1326
    const v0, 0x7f060006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->size(Ljava/io/File;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getFileSizeStr(I)Ljava/lang/String;

    move-result-object v0

    .line 1329
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f040074

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1330
    const v0, 0x7f060007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1333
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$11;

    invoke-direct {v4, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$11;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1340
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private prepareDelete()V
    .locals 4

    .prologue
    .line 784
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 785
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->DeleteOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$6;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$6;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 793
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 795
    return-void
.end method

.method private prepareRename()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 973
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 974
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 975
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 977
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;

    .line 978
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 979
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mMimeType:Ljava/lang/String;

    .line 981
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 982
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAlbum:Ljava/lang/String;

    .line 984
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 985
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mArtist:Ljava/lang/String;

    .line 987
    const v0, 0x7f060058

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    .line 988
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 989
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 991
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 992
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->renameOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$8;

    invoke-direct {v4, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$8;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1000
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1001
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    .line 1002
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1003
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$9;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$9;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1025
    return-void
.end method

.method private prepareSend()V
    .locals 4

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1232
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1234
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1235
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string v2, "audio/3gpp"

    .line 1239
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1241
    if-eqz v2, :cond_0

    .line 1243
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    :goto_0
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1251
    const v0, 0x7f04006d

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :goto_1
    return-void

    .line 1247
    :cond_0
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private prepareUseAsRingtone()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1171
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1172
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1173
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1174
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1176
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1178
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1179
    const-string v3, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const-string v3, "is_alarm"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v7, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const-string v3, "title"

    aput-object v3, v2, v10

    .line 1193
    const-string v3, "_id=?"

    .line 1194
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1195
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 1200
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1201
    const-string v0, "ringtone"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1205
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1206
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1207
    const-string v0, ""

    .line 1208
    if-eqz v2, :cond_0

    .line 1209
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1210
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1211
    if-lez v2, :cond_0

    .line 1212
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1216
    :cond_0
    const v2, 0x7f04006c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    :cond_1
    if-eqz v1, :cond_2

    .line 1221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1226
    :cond_2
    :goto_0
    return-void

    .line 1220
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 1221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1222
    :cond_3
    throw v0

    .line 1182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 946
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 952
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 953
    if-nez v0, :cond_0

    move-object v0, v6

    .line 961
    :goto_0
    return-object v0

    .line 956
    :cond_0
    if-lez p6, :cond_1

    .line 957
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 959
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 961
    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_1
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1774
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1775
    if-nez v0, :cond_0

    move-object v0, v6

    .line 1782
    :goto_0
    return-object v0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1778
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1781
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 1782
    goto :goto_0
.end method

.method private static reCalc(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 191
    if-eqz p0, :cond_0

    .line 193
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 194
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 196
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 197
    sget-object v3, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private showDeleteMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    :cond_1
    return-void
.end method

.method private showMessage(I)V
    .locals 3
    .parameter

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1261
    return-void
.end method

.method private static size(Ljava/io/File;)I
    .locals 2
    .parameter

    .prologue
    .line 1347
    const/4 v0, 0x0

    .line 1351
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1352
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 1353
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_0
    return v0

    .line 1354
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 402
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 499
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->closeContextMenu()V

    .line 501
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 506
    :cond_2
    sget v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosCourse:I

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mUseLastListPos:Z

    if-eqz v0, :cond_3

    .line 507
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 511
    sget v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosCourse:I

    sget v2, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 512
    if-nez p2, :cond_3

    .line 513
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosCourse:I

    .line 517
    :cond_3
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public isCorrectPath(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1265
    const/4 v1, 0x1

    .line 1268
    if-nez p1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return v0

    .line 1275
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1277
    const/16 v3, 0xff

    if-gt v2, v3, :cond_0

    .line 1284
    add-int/lit8 v2, v2, -0x1

    .line 1287
    :goto_1
    if-ltz v2, :cond_2

    .line 1289
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1291
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_0

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_0

    .line 1287
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 568
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    const v1, 0x7f040069

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareDelete()V

    .line 585
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 573
    :cond_1
    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareRename()V

    goto :goto_0

    .line 575
    :cond_2
    const v1, 0x7f04006d

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareSend()V

    goto :goto_0

    .line 577
    :cond_3
    const v1, 0x7f04006e

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 578
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareAttr()V

    goto :goto_0

    .line 580
    :cond_4
    const v1, 0x7f04006b

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareUseAsRingtone()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 221
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 241
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 255
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->setContentView(I)V

    .line 257
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrHour:Ljava/lang/String;

    .line 258
    const v0, 0x7f040080

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrMinute:Ljava/lang/String;

    .line 259
    const v0, 0x7f040081

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrSecond:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 262
    const v1, 0x7f040079

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 263
    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 264
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 271
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    .line 272
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 273
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showDeleteMode()V

    .line 278
    :goto_0
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    .line 279
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$1;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBtnCancel:Landroid/widget/Button;

    .line 297
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBtnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$2;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBtnDel:Landroid/widget/Button;

    .line 309
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mBtnDel:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$3;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$3;-><init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackList:Landroid/widget/ListView;

    .line 318
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 319
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    if-nez v0, :cond_2

    .line 324
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    const v3, 0x7f03000d

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/FMRadio/FMRadioRecorderHistory;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    .line 335
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v8}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getTrackCursor(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 352
    :goto_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->setActivity(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->hideDeleteMode()V

    goto/16 :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    .line 345
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v7}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->init(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v8}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getTrackCursor(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 534
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 536
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I

    .line 538
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 542
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 544
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedId:J

    .line 546
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 553
    :cond_0
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 554
    const/4 v0, 0x1

    .line 555
    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 556
    const/4 v0, 0x2

    .line 557
    const v1, 0x7f04006b

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 558
    const/4 v0, 0x3

    .line 559
    const v1, 0x7f04006d

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f040069

    const v4, 0x7f020051

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 638
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 640
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 642
    const/4 v0, 0x2

    const v1, 0x7f040067

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 643
    const/4 v0, 0x3

    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 644
    const/4 v0, 0x4

    const v1, 0x7f040068

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 646
    return v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mUseLastListPos:Z

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosCourse:I

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mLastListPosFine:I

    .line 382
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapterSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 388
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    .line 390
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 391
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 392
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 438
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 440
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_2

    .line 442
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    .line 443
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showDeleteMode()V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->setIsMulti(Z)V

    .line 450
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 451
    const/4 v0, 0x1

    .line 459
    :cond_0
    :goto_1
    return v0

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->hideDeleteMode()V

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->finish()V

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_2

    .line 608
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 609
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 612
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->isAllSel()V

    goto :goto_0

    .line 609
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 618
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 621
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v2, "audio/3gpp"

    .line 625
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 627
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 737
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 739
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 779
    :goto_0
    return v1

    .line 743
    :sswitch_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    .line 744
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_1

    .line 745
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showDeleteMode()V

    .line 750
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->setIsMulti(Z)V

    .line 751
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 743
    goto :goto_1

    .line 747
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->hideDeleteMode()V

    goto :goto_2

    .line 757
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsSelAll()V

    goto :goto_0

    .line 763
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsDel()V

    goto :goto_0

    .line 770
    :sswitch_3
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsUnSelAll()V

    goto :goto_0

    .line 775
    :sswitch_4
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->onBackPressed()V

    goto :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "selectedtrack"

    iget-wide v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->setIntent(Landroid/content/Intent;)V

    .line 428
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsUnSelAll()V

    .line 429
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 433
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 434
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 651
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 654
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 655
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 656
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 660
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_1

    .line 662
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 669
    :goto_1
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 670
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_2

    .line 672
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 679
    :goto_2
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 680
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_3

    .line 682
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 689
    :goto_3
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 690
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_4

    .line 692
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 698
    :goto_4
    return v2

    .line 658
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 666
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 676
    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 686
    :cond_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 696
    :cond_4
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 410
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 412
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->init(Landroid/database/Cursor;Z)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    .line 421
    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapterSent:Z

    .line 362
    return-object v0
.end method
