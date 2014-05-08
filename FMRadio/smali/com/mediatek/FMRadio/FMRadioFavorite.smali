.class public Lcom/mediatek/FMRadio/FMRadioFavorite;
.super Landroid/app/Activity;
.source "FMRadioFavorite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;,
        Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RESULT:Ljava/lang/String; = "ACTIVITY_RESULT"

.field private static final CONTMENU_ID_ADD:I = 0x3

.field private static final CONTMENU_ID_DELETE:I = 0x2

.field private static final CONTMENU_ID_EDIT:I = 0x1

.field private static final DLGID_ADD_EDIT_STATION:I = 0x1

.field private static final DLGID_DELETE_CONFIRM:I = 0x2

.field private static final FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ"

.field private static final FM_SAVE_INSTANCE_STATE_FAVORITE_NAME:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_FAVORITE_NAME"

#the value of this static final field might be set in the static constructor
.field public static final IS_CMCC:Z = false

.field private static final LV_CAPACITY:I = 0x400

.field private static final LV_COLUMN_STATION_FREQ:Ljava/lang/String; = "STATION_FREQ"

.field private static final LV_COLUMN_STATION_NAME:Ljava/lang/String; = "STATION_NAME"

.field private static final LV_COLUMN_STATION_TYPE:Ljava/lang/String; = "STATION_TYPE"

.field private static final LV_COLUMN_VALUE_FREQ:Ljava/lang/String; = "STATION_FREQ_VALUE"

.field private static final MAX_STATION_FREQUENCY_LENGTH:I = 0x5

.field private static final MAX_STATION_NAME_LENGTH:I = 0xb

.field public static final OP:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "FMRadioFavorite"


# instance fields
.field private final FM_CH_SELECTOR_DISABLE:I

.field private final FM_CH_SELECTOR_ENABLE:I

.field private final FM_CH_SELECTOR_HIDE:I

.field private final LV_COLUMN_STATION_MARK:Ljava/lang/String;

.field private final OPTMENUID_DEL:I

.field private final OPTMENUID_EDIT_MODE:I

.field private final OPTMENUID_SELECTALL:I

.field filter:Landroid/text/InputFilter;

.field private mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnDel:Landroid/widget/Button;

.field private mCurrentStationFreq:Ljava/lang/String;

.field private mCurrentStationName:Ljava/lang/String;

.field private mDialogAdd:Landroid/app/AlertDialog;

.field private mDialogEdit:Landroid/app/AlertDialog;

.field private mDlgStationFreq:I

.field private mDlgStationName:Ljava/lang/String;

.field private mEdViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

.field private mEditmodeOn:Z

.field private mEdsimpleAdapter:Landroid/widget/SimpleAdapter;

.field private mHeaderLayout:Landroid/widget/RelativeLayout;

.field private mHeaderTitleLayout:Landroid/widget/LinearLayout;

.field private mIvSelAll:Landroid/widget/CheckBox;

.field private mListStations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLvFavorites:Landroid/widget/ListView;

.field private mMenuItemDelete:Landroid/view/MenuItem;

.field private mMenuItemSelectAll:Landroid/view/MenuItem;

.field private mNormalViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

.field private mPosition:I

.field private mSimpleAdapter:Landroid/widget/SimpleAdapter;

.field private mStationCount:I

.field private mStationOperation:I

.field private mStationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->OP:Ljava/lang/String;

    .line 97
    const-string v0, "OP01"

    sget-object v1, Lcom/mediatek/FMRadio/FMRadioFavorite;->OP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->IS_CMCC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 117
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    .line 119
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    .line 120
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    .line 125
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    .line 126
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 127
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 128
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I

    .line 129
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationOperation:I

    .line 130
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    .line 132
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    .line 134
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationFreq:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mMenuItemDelete:Landroid/view/MenuItem;

    .line 146
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mMenuItemSelectAll:Landroid/view/MenuItem;

    .line 147
    const-string v0, "STATION_MARK"

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->LV_COLUMN_STATION_MARK:Ljava/lang/String;

    .line 148
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->OPTMENUID_EDIT_MODE:I

    .line 149
    iput v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->OPTMENUID_SELECTALL:I

    .line 150
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->OPTMENUID_DEL:I

    .line 151
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->FM_CH_SELECTOR_HIDE:I

    .line 152
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->FM_CH_SELECTOR_ENABLE:I

    .line 153
    iput v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->FM_CH_SELECTOR_DISABLE:I

    .line 154
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEdsimpleAdapter:Landroid/widget/SimpleAdapter;

    .line 155
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mNormalViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 156
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEdViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 157
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    .line 160
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    .line 989
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioFavorite$14;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$14;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->filter:Landroid/text/InputFilter;

    .line 1256
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteSearchIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteFavoriteIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationFreq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioFavorite;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->cancelFavorite(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->optionDel()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioFavorite;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->cancelDeleteMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    return v0
.end method

.method static synthetic access$810(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 2
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private cancelDeleteMode()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    .line 191
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showDeleteMode()V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->hideDeleteMode()V

    goto :goto_0
.end method

.method private cancelFavorite(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1228
    invoke-static {p0, p1}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-static {p0, p1, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-static {p0, p1, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 1236
    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 1243
    const v0, 0x7f04001f

    const v1, 0x7f04001e

    invoke-direct {p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1245
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->initListView()V

    .line 1247
    :cond_0
    return-void
.end method

.method private getDeleteFavoriteIndex(I)I
    .locals 5
    .parameter

    .prologue
    .line 1132
    const/4 v0, 0x0

    .line 1133
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 1135
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 1137
    if-nez v1, :cond_1

    .line 1145
    :cond_0
    return v2

    .line 1140
    :cond_1
    const/4 v4, 0x2

    const-string v0, "STATION_TYPE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_2

    const-string v0, "STATION_FREQ_VALUE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1135
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private getDeleteSearchIndex(I)I
    .locals 5
    .parameter

    .prologue
    .line 1148
    const/4 v0, 0x0

    .line 1149
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 1151
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 1153
    if-nez v1, :cond_1

    .line 1161
    :cond_0
    return v2

    .line 1156
    :cond_1
    const/4 v4, 0x3

    const-string v0, "STATION_TYPE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_2

    const-string v0, "STATION_FREQ_VALUE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1151
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private getInsertIndex(I)I
    .locals 5
    .parameter

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1101
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 1103
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 1105
    if-nez v1, :cond_1

    .line 1113
    :cond_0
    return v2

    .line 1108
    :cond_1
    const/4 v4, 0x2

    const-string v0, "STATION_TYPE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_0

    const-string v0, "STATION_FREQ_VALUE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1103
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private getInsertSearchIndex(I)I
    .locals 5
    .parameter

    .prologue
    .line 1116
    const/4 v0, 0x0

    .line 1117
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 1119
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 1121
    if-nez v1, :cond_1

    .line 1129
    :cond_0
    return v2

    .line 1124
    :cond_1
    const/4 v4, 0x2

    const-string v0, "STATION_TYPE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v4, v0, :cond_2

    const-string v0, "STATION_FREQ_VALUE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1119
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private getProjectString(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1219
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->IS_CMCC:Z

    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1222
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideDeleteMode()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 178
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBottomLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    :cond_2
    return-void
.end method

.method private initListView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x4120

    .line 1024
    .line 1026
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1029
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    .line 1030
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 1033
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1034
    if-nez v0, :cond_2

    .line 1088
    if-eqz v6, :cond_1

    .line 1089
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    :try_start_1
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1039
    if-eqz v0, :cond_a

    .line 1041
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1042
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1043
    const-string v1, "COLUMN_STATION_TYPE"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1044
    const/4 v2, 0x2

    if-ne v2, v1, :cond_5

    .line 1045
    const-string v2, "COLUMN_STATION_NAME"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1046
    const-string v3, "COLUMN_STATION_FREQ"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1047
    int-to-float v4, v3

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 1048
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1049
    const-string v6, "STATION_TYPE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    const-string v1, "STATION_FREQ"

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string v1, "STATION_NAME"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string v1, "STATION_FREQ_VALUE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1054
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    .line 1060
    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1085
    :catch_0
    move-exception v1

    .line 1088
    :goto_3
    if-eqz v0, :cond_4

    .line 1089
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->notifyDataSetChanged()V

    .line 1095
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->reset()V

    goto :goto_0

    .line 1055
    :cond_5
    if-ne v8, v1, :cond_3

    .line 1056
    :try_start_3
    const-string v1, "COLUMN_STATION_FREQ"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1057
    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationFreq:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1088
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_5
    if-eqz v6, :cond_6

    .line 1089
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1090
    :cond_6
    throw v0

    .line 1063
    :cond_7
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1064
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1065
    const-string v1, "COLUMN_STATION_TYPE"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1066
    const/4 v2, 0x3

    if-ne v2, v1, :cond_9

    .line 1067
    const-string v2, "COLUMN_STATION_NAME"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1068
    const-string v3, "COLUMN_STATION_FREQ"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1069
    int-to-float v4, v3

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 1070
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1071
    const-string v6, "STATION_TYPE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v1, "STATION_FREQ"

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string v1, "STATION_NAME"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string v1, "STATION_FREQ_VALUE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertSearchIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1076
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    .line 1082
    :cond_8
    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 1077
    :cond_9
    if-ne v8, v1, :cond_8

    .line 1078
    const-string v1, "COLUMN_STATION_FREQ"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1079
    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationFreq:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 1088
    :cond_a
    if-eqz v0, :cond_4

    .line 1089
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 1088
    :catchall_1
    move-exception v0

    goto/16 :goto_5

    .line 1085
    :catch_1
    move-exception v0

    move-object v0, v6

    goto/16 :goto_3
.end method

.method private optionDel()V
    .locals 3

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->isAnythingSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000e

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioFavorite$7;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$7;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000f

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioFavorite$6;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$6;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showDeleteMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBottomLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    :cond_2
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 1203
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1205
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f04000e

    const v8, 0x7f06000a

    const v5, 0x7f060002

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 626
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    .line 627
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 628
    const-string v1, "STATION_NAME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 629
    const-string v1, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 630
    const-string v1, "STATION_TYPE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I

    .line 631
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationOperation:I

    .line 632
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationOperation:I

    packed-switch v0, :pswitch_data_0

    .line 981
    const-string v0, "FMRadioFavorite"

    const-string v1, "Error: Invalid menu item."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :goto_0
    return v6

    .line 650
    :pswitch_0
    const/high16 v0, 0x7f03

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 651
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 652
    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 655
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f04

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioFavorite$9;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$9;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v1, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f04000f

    new-instance v4, Lcom/mediatek/FMRadio/FMRadioFavorite$8;

    invoke-direct {v4, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$8;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    .line 704
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 705
    const v1, 0x7f060004

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 708
    const-string v3, "STATION_NAME"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    .line 709
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-ne v1, v3, :cond_1

    .line 710
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f040015

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 716
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 717
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 718
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    const v3, 0x7f040003

    const v4, 0x7f040002

    invoke-direct {p0, v3, v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 719
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 722
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 723
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 724
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 713
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 731
    :pswitch_1
    const v0, 0x7f030002

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 732
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 733
    const v1, 0x7f06000c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 734
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->filter:Landroid/text/InputFilter;

    aput-object v4, v3, v6

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 735
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 736
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 740
    :goto_2
    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 743
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f04

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioFavorite$11;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$11;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v1, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f04000f

    new-instance v4, Lcom/mediatek/FMRadio/FMRadioFavorite$10;

    invoke-direct {v4, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$10;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    .line 887
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 888
    const v1, 0x7f06000c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 891
    const-string v3, "STATION_NAME"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    .line 892
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-ne v1, v3, :cond_4

    .line 893
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f040015

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 899
    :goto_3
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 900
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 902
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    const v3, 0x7f040014

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 903
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 906
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 907
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 909
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 738
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_2

    .line 896
    :cond_4
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 914
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$13;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$13;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000f

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioFavorite$12;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$12;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setVolumeControlStream(I)V

    .line 223
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 224
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setContentView(I)V

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 227
    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 228
    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 231
    if-eqz p1, :cond_0

    .line 233
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 234
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    .line 329
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 331
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->initListView()V

    .line 333
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$1;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$2;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 394
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderLayout:Landroid/widget/RelativeLayout;

    .line 395
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mHeaderTitleLayout:Landroid/widget/LinearLayout;

    .line 396
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 398
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    if-eqz v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showDeleteMode()V

    .line 403
    :goto_0
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBtnDel:Landroid/widget/Button;

    .line 404
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBtnDel:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$3;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$3;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBtnCancel:Landroid/widget/Button;

    .line 412
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBtnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$4;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$4;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;

    .line 420
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$5;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$5;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->hideDeleteMode()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 445
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const v0, 0x7f04000f

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 450
    const v0, 0x7f040060

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 451
    const/4 v0, 0x3

    const v1, 0x7f040008

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020051

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 453
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1197
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1199
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 199
    const-string v0, "FMRadioFavorite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioFavorite.onKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x1

    .line 201
    const/4 v1, 0x4

    if-ne v1, p1, :cond_1

    .line 202
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    if-nez v1, :cond_0

    .line 203
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 213
    :goto_0
    const-string v1, "FMRadioFavorite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioFavorite.onKeyUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->cancelDeleteMode()V

    goto :goto_0

    .line 211
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 502
    const-string v1, "FMRadioFavorite"

    const-string v2, ">>> FMRadioActivity.onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 506
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 553
    const-string v0, "FMRadioFavorite"

    const-string v1, "Error: Invalid options menu item."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 555
    const/4 v0, 0x0

    .line 559
    :cond_0
    :goto_0
    const-string v1, "FMRadioFavorite"

    const-string v2, "<<< FMRadioActivity.onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return v0

    .line 509
    :sswitch_0
    const-string v1, "FMRadioFavorite"

    const-string v2, "*** FMRadioFavorite.onOptionsItemSelected edit_mode..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    if-nez v1, :cond_1

    .line 513
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    .line 515
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->notifyDataSetChanged()V

    .line 516
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->reset()V

    .line 523
    :goto_1
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    if-eqz v1, :cond_2

    .line 524
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showDeleteMode()V

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->cancelDeleteMode()V

    goto :goto_1

    .line 526
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->hideDeleteMode()V

    goto :goto_0

    .line 533
    :sswitch_1
    const-string v1, "FMRadioFavorite"

    const-string v2, "*** FMRadioFavorite.onOptionsItemSelected SelectAll..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->setAllSelected()V

    .line 536
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->notifyDataSetChanged()V

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIvSelAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 544
    :sswitch_2
    const-string v1, "FMRadioFavorite"

    const-string v2, "*** FMRadioFavorite.onOptionsItemSelected Del..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->optionDel()V

    goto :goto_0

    .line 550
    :sswitch_3
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->onBackPressed()V

    goto :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1185
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1187
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 466
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 469
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z

    if-nez v0, :cond_1

    .line 470
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f04005f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020051

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 471
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 472
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    if-nez v0, :cond_0

    .line 473
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 487
    :cond_0
    :goto_0
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return v2

    .line 478
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 479
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 480
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->isAnythingSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 484
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1179
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1181
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1165
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1167
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_NAME"

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ"

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1173
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1175
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1191
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1193
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return-void
.end method
