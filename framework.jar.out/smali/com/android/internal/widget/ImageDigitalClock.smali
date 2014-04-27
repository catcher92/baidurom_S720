.class public Lcom/android/internal/widget/ImageDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/ImageDigitalClock$AmPm;,
        Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final IDEADESKTOP_THEMES:[Ljava/lang/String; = null

.field private static final IDEADESKTOP_THEMES_PACKAGES:[Ljava/lang/String; = null

.field private static final IDEADESKTOP_THEME_NAME_1:Ljava/lang/String; = "com.lenovo.ideadesktop.theme.origin"

.field private static final IDEADESKTOP_THEME_NAME_2:Ljava/lang/String; = "com.lenovo.ideadesktop.theme.guozi"

.field private static final IDEADESKTOP_THEME_NAME_3:Ljava/lang/String; = "com.lenovo.ideadesktop.theme.jiguang"

.field private static final IDEADESKTOP_THEME_NAME_4:Ljava/lang/String; = "com.lenovo.ideadesktop.theme.xiaoxiong"

.field private static final IDEADESKTOP_THEME_NAME_5:Ljava/lang/String; = "com.lenovo.ideadesktop.theme.weidly"

.field private static final IDEADESKTOP_THEME_NAME_DEFAUT:Ljava/lang/String; = "com.lenovo.ideadesktop.theme.android"

.field private static final IDEADESKTOP_THEME_NAME_KEY:Ljava/lang/String; = "ideadesktop_theme_name"

.field private static final IDEADESKTOP_THEME_PACKAGE_NAME_1:Ljava/lang/String; = "com.lenovo.lockscreen.theme.fruit"

.field private static final IDEADESKTOP_THEME_PACKAGE_NAME_2:Ljava/lang/String; = "com.lenovo.lockscreen.theme.aurora"

.field private static final IDEADESKTOP_THEME_PACKAGE_NAME_3:Ljava/lang/String; = "com.lenovo.lockscreen.theme.bear"

.field private static final IDEADESKTOP_THEME_PACKAGE_NAME_4:Ljava/lang/String; = "com.lenovo.lockscreen.theme.victoria"

.field private static final IDEADESKTOP_THEME_PACKAGE_NAME_DEFAUT:Ljava/lang/String; = "com.lenovo.lockscreen.theme.android"

.field private static final IDEADESKTOP_THEME_PROPERTIES_KEY:Ljava/lang/String; = "persist.sys.ideadesk_theme_name"

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "ImageDigitalClock"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

.field private mAmPmDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPmTextColor:I

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinute01:Landroid/widget/ImageView;

.field private mMinute02:Landroid/widget/ImageView;

.field private mThemeIndex:I

.field private mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeDisplayColon:Landroid/widget/ImageView;

.field private mTimeDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.lenovo.lockscreen.theme.android"

    aput-object v1, v0, v3

    const-string v1, "com.lenovo.lockscreen.theme.android"

    aput-object v1, v0, v4

    const-string v1, "com.lenovo.lockscreen.theme.fruit"

    aput-object v1, v0, v5

    const-string v1, "com.lenovo.lockscreen.theme.aurora"

    aput-object v1, v0, v6

    const-string v1, "com.lenovo.lockscreen.theme.bear"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.lenovo.lockscreen.theme.victoria"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->IDEADESKTOP_THEMES_PACKAGES:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.lenovo.ideadesktop.theme.android"

    aput-object v1, v0, v3

    const-string v1, "com.lenovo.ideadesktop.theme.origin"

    aput-object v1, v0, v4

    const-string v1, "com.lenovo.ideadesktop.theme.guozi"

    aput-object v1, v0, v5

    const-string v1, "com.lenovo.ideadesktop.theme.jiguang"

    aput-object v1, v0, v6

    const-string v1, "com.lenovo.ideadesktop.theme.xiaoxiong"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.lenovo.ideadesktop.theme.weidly"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->IDEADESKTOP_THEMES:[Ljava/lang/String;

    .line 123
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 124
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ImageDigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 268
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput v11, p0, Lcom/android/internal/widget/ImageDigitalClock;->mThemeIndex:I

    .line 108
    iput v9, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 110
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    .line 116
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 270
    .local v6, res:Landroid/content/res/Resources;
    sget-object v8, Lcom/android/internal/R$styleable;->ImageDigitalClock:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 272
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 273
    .local v5, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 274
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 275
    .local v1, array:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 276
    .local v2, count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v7, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 278
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 279
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    iput-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    .line 284
    .end local v1           #array:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v7           #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_3

    .line 285
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "The Illegal time drawables count!!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 288
    :cond_3
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 289
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 290
    .restart local v1       #array:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 291
    .restart local v2       #count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .restart local v7       #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 293
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 294
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 296
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 298
    iput-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    .line 301
    .end local v1           #array:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v7           #targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_5
    const-string v8, "ImageDigitalClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAmPmDrawables = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_6

    .line 303
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "The Illegal ampm drawables count!!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 306
    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    .line 307
    const-string v8, "ImageDigitalClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTimeColonDrawable = : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmTextColor:I

    .line 310
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/ImageDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ImageDigitalClock;)Lcom/android/internal/widget/ImageDigitalClock$AmPm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getAmPm()Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ImageDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ImageDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ImageDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->setDateFormat()V

    return-void
.end method

.method private getAmPm()Lcom/android/internal/widget/ImageDigitalClock$AmPm;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    return-object v0
.end method

.method private getIdeaDeskLauncherTheme()Ljava/lang/String;
    .locals 4

    .prologue
    .line 458
    const-string/jumbo v1, "persist.sys.ideadesk_theme_name"

    const-string v2, "com.lenovo.ideadesktop.theme.weidly"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, value:Ljava/lang/String;
    const-string v1, "ImageDigitalClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIdeaDeskLauncherTheme(),value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    :cond_0
    const-string v0, "com.lenovo.ideadesktop.theme.weidly"

    .line 464
    :cond_1
    return-object v0
.end method

.method private getImageResId(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "index"

    .prologue
    .line 450
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 453
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDrawables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, id:I
    iget v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mThemeIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mThemeIndex:I

    sget-object v4, Lcom/android/internal/widget/ImageDigitalClock;->IDEADESKTOP_THEMES:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getIdeaDeskLauncherTheme()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/widget/ImageDigitalClock;->indexOfThemes(Ljava/lang/String;)I

    move-result v1

    .line 482
    .local v1, index:I
    iput v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mThemeIndex:I

    .line 484
    .end local v1           #index:I
    :cond_1
    iget v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mThemeIndex:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mThemeIndex:I

    sget-object v4, Lcom/android/internal/widget/ImageDigitalClock;->IDEADESKTOP_THEMES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 486
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_2

    .line 487
    sget-object v3, Lcom/android/internal/widget/ImageDigitalClock;->IDEADESKTOP_THEMES_PACKAGES:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/widget/ImageDigitalClock;->mThemeIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, p2, p3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 490
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    return v0
.end method

.method private indexOfThemes(Ljava/lang/String;)I
    .locals 3
    .parameter "themeName"

    .prologue
    .line 468
    const/4 v1, -0x1

    .line 469
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/internal/widget/ImageDigitalClock;->IDEADESKTOP_THEMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 470
    sget-object v2, Lcom/android/internal/widget/ImageDigitalClock;->IDEADESKTOP_THEMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    move v1, v0

    .line 475
    :cond_0
    return v1

    .line 469
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDateFormat()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 419
    .local v5, is24Format:Z
    if-eqz v5, :cond_3

    const v2, 0x104007e

    .line 422
    .local v2, fommatStringId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, format:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    if-nez v5, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 424
    const/4 v0, -0x1

    .line 425
    .local v0, a:I
    const/4 v6, 0x0

    .line 426
    .local v6, quoted:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 428
    .local v1, c:C
    const/16 v7, 0x27

    if-ne v1, v7, :cond_0

    .line 429
    if-nez v6, :cond_5

    move v6, v8

    .line 431
    :cond_0
    :goto_3
    if-nez v6, :cond_6

    const/16 v7, 0x61

    if-ne v1, v7, :cond_6

    .line 432
    move v0, v4

    .line 436
    .end local v1           #c:C
    :cond_1
    if-nez v0, :cond_7

    .line 437
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    :cond_2
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 442
    iput-object v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    .line 443
    return-void

    .line 419
    .end local v0           #a:I
    .end local v2           #fommatStringId:I
    .end local v3           #format:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #quoted:Z
    :cond_3
    const v2, 0x104007d

    goto :goto_0

    .restart local v2       #fommatStringId:I
    .restart local v3       #format:Ljava/lang/String;
    :cond_4
    move v7, v9

    .line 423
    goto :goto_1

    .restart local v0       #a:I
    .restart local v1       #c:C
    .restart local v4       #i:I
    .restart local v6       #quoted:Z
    :cond_5
    move v6, v9

    .line 429
    goto :goto_3

    .line 426
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 438
    .end local v1           #c:C
    :cond_7
    if-lez v0, :cond_2

    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private updateTime()V
    .locals 10

    .prologue
    .line 389
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 397
    .local v3, is24Format:Z
    if-nez v3, :cond_1

    .line 398
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 399
    .local v0, hour:I
    if-nez v0, :cond_0

    .line 400
    const/16 v0, 0xc

    .line 405
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 406
    .local v4, minute:I
    div-int/lit8 v1, v0, 0xa

    .line 407
    .local v1, hour01:I
    rem-int/lit8 v2, v0, 0xa

    .line 408
    .local v2, hour02:I
    div-int/lit8 v5, v4, 0xa

    .line 409
    .local v5, minute01:I
    rem-int/lit8 v6, v4, 0xa

    .line 410
    .local v6, minute02:I
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour01:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour02:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute01:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute02:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/ImageDigitalClock;->getImageResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v8, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;->setIsMorning(Z)V

    .line 415
    return-void

    .line 403
    .end local v0           #hour:I
    .end local v1           #hour01:I
    .end local v2           #hour02:I
    .end local v4           #minute:I
    .end local v5           #minute01:I
    .end local v6           #minute02:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .restart local v0       #hour:I
    goto :goto_0

    .line 414
    .restart local v1       #hour01:I
    .restart local v2       #hour02:I
    .restart local v4       #minute:I
    .restart local v5       #minute01:I
    .restart local v6       #minute02:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 340
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 342
    iget v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 345
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 346
    new-instance v1, Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ImageDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/ImageDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 357
    new-instance v1, Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ImageDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/ImageDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 358
    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->updateTime()V

    .line 363
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 369
    iget v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAttached:I

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 379
    :cond_1
    iput-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 380
    iput-object v2, p0, Lcom/android/internal/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 315
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "hour01_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour01:Landroid/widget/ImageView;

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "hour02_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mHour02:Landroid/widget/ImageView;

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "minute01_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute01:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "minute02_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mMinute02:Landroid/widget/ImageView;

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "colon_image"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeDisplayColon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mTimeColonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "am_pm"

    const-string v2, "id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/ImageDigitalClock;->getThemeResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 332
    .local v5, id:I
    new-instance v0, Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmTextColor:I

    iget-object v4, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPmDrawables:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ImageDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;ILjava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mAmPm:Lcom/android/internal/widget/ImageDigitalClock$AmPm;

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 335
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->setDateFormat()V

    .line 336
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/internal/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 385
    invoke-direct {p0}, Lcom/android/internal/widget/ImageDigitalClock;->updateTime()V

    .line 386
    return-void
.end method
