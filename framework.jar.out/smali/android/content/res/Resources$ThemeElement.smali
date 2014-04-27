.class public Landroid/content/res/Resources$ThemeElement;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeElement"
.end annotation


# static fields
.field public static final BUTTON:I = 0x0

.field public static final CHECKBOX:I = 0x1

.field public static final RADIOBUTTON:I = 0x2

.field public static final SECTION:I = 0x4

.field public static final TAB:I = 0x5

.field public static final TITLE_BACKGROUND:I = 0x3


# instance fields
.field public ButonColor:Landroid/content/res/ColorStateList;

.field public buttonresid:[I

.field public checkboxresid:[I

.field public mBottomBar:Landroid/graphics/drawable/Drawable;

.field public mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field public mDialogBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$DialogRes;",
            ">;"
        }
    .end annotation
.end field

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mR:Landroid/content/res/Resources;

.field public mRadioButonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mSectionLine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mSeekBarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$SeekBarRes;",
            ">;"
        }
    .end annotation
.end field

.field public mSwitchButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$SwitchRes;",
            ">;"
        }
    .end annotation
.end field

.field public mTabBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$TabRes;",
            ">;"
        }
    .end annotation
.end field

.field public mTitleBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/res/Resources$TitleColor;",
            ">;"
        }
    .end annotation
.end field

.field public nButton_Cur_sel:I

.field public nCheckBox_Cur_sel:I

.field public nDialogBackground_Cur_sel:I

.field public nRadioButton_Cur_sel:I

.field public nSectionLine_Cur_sel:I

.field public nSeekBar_Cur_sel:I

.field public nSwitchButton_Cur_sel:I

.field public nTabBackground_Cur_sel:I

.field public nTitleBackground_Cur_sel:I

.field public nTitle_Cur_sel:I

.field public radioresid:[I

.field public sectionlineresid:[I

.field public strThemeName:Ljava/lang/String;

.field public tabresid:[I

.field final synthetic this$0:Landroid/content/res/Resources;

.field public titlebarkresid:[I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3382
    iput-object p1, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3393
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    .line 3395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    .line 3396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mButtonList:Ljava/util/ArrayList;

    .line 3397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mCheckBoxList:Ljava/util/ArrayList;

    .line 3398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    .line 3399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mRadioButonList:Ljava/util/ArrayList;

    .line 3400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    .line 3401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mTitleBackground:Ljava/util/ArrayList;

    .line 3402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mSectionLine:Ljava/util/ArrayList;

    .line 3403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mTabBackground:Ljava/util/ArrayList;

    .line 3404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    .line 3407
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3408
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 3409
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->mBottomBar:Landroid/graphics/drawable/Drawable;

    .line 3410
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->ButonColor:Landroid/content/res/ColorStateList;

    .line 3412
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nTitle_Cur_sel:I

    .line 3413
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nButton_Cur_sel:I

    .line 3414
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nCheckBox_Cur_sel:I

    .line 3415
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nSwitchButton_Cur_sel:I

    .line 3416
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nRadioButton_Cur_sel:I

    .line 3417
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nSeekBar_Cur_sel:I

    .line 3418
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nTitleBackground_Cur_sel:I

    .line 3419
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nSectionLine_Cur_sel:I

    .line 3420
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nTabBackground_Cur_sel:I

    .line 3421
    iput v2, p0, Landroid/content/res/Resources$ThemeElement;->nDialogBackground_Cur_sel:I

    .line 3423
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    .line 3424
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    .line 3425
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    .line 3426
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    .line 3427
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    .line 3428
    iput-object v1, p0, Landroid/content/res/Resources$ThemeElement;->tabresid:[I

    return-void
.end method


# virtual methods
.method public generateDialog(II)[Landroid/content/res/Resources$DialogRes;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3464
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3465
    new-array v1, p2, [Landroid/content/res/Resources$DialogRes;

    .line 3466
    .local v1, ret:[Landroid/content/res/Resources$DialogRes;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3467
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mDialogBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$DialogRes;

    iget v2, v2, Landroid/content/res/Resources$DialogRes;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDialogRes(I)Landroid/content/res/Resources$DialogRes;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3471
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$DialogRes;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public generateDrawable(III)[Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "nCur"
    .parameter "nType"
    .parameter "ncount"

    .prologue
    const/4 v4, 0x0

    .line 3475
    if-ltz p2, :cond_1

    const/4 v3, 0x5

    if-gt p2, v3, :cond_1

    if-lez p3, :cond_1

    if-ltz p1, :cond_1

    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v3, :cond_1

    .line 3476
    const/4 v1, 0x0

    .line 3477
    .local v1, pInt:[I
    packed-switch p2, :pswitch_data_0

    .line 3540
    :cond_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-le v3, p1, :cond_1

    if-lez p1, :cond_1

    .line 3541
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3542
    .local v2, ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 3543
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    aget v4, v1, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3479
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->buttonresid:[I

    .line 3480
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3481
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3482
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 3483
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x3020018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3489
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->checkboxresid:[I

    .line 3490
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3491
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3492
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, p3, :cond_2

    .line 3493
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x3020005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3492
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3499
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->radioresid:[I

    .line 3500
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3501
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3502
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p3, :cond_2

    .line 3503
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x302001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3502
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3509
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->titlebarkresid:[I

    .line 3510
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3511
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3512
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, p3, :cond_2

    .line 3513
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x3020002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3512
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3519
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_4
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->sectionlineresid:[I

    .line 3520
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3521
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3522
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    if-ge v0, p3, :cond_2

    .line 3523
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x302003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3522
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3529
    .end local v0           #i:I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :pswitch_5
    iget-object v1, p0, Landroid/content/res/Resources$ThemeElement;->tabresid:[I

    .line 3530
    if-eqz v1, :cond_0

    aget v3, v1, v4

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 3531
    new-array v2, p3, [Landroid/graphics/drawable/Drawable;

    .line 3532
    .restart local v2       #ret:[Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    if-ge v0, p3, :cond_2

    .line 3533
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->this$0:Landroid/content/res/Resources;

    const v4, 0x302007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3532
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3548
    .end local v0           #i:I
    .end local v1           #pInt:[I
    .end local v2           #ret:[Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2

    .line 3477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public generateSeekBar(II)[Landroid/content/res/Resources$SeekBarRes;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3453
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3454
    new-array v1, p2, [Landroid/content/res/Resources$SeekBarRes;

    .line 3455
    .local v1, ret:[Landroid/content/res/Resources$SeekBarRes;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3456
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$SeekBarRes;

    iget v2, v2, Landroid/content/res/Resources$SeekBarRes;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getSeekBar(I)Landroid/content/res/Resources$SeekBarRes;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3460
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$SeekBarRes;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public generateSwitch(II)[Landroid/content/res/Resources$SwitchRes;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3442
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3443
    new-array v1, p2, [Landroid/content/res/Resources$SwitchRes;

    .line 3444
    .local v1, ret:[Landroid/content/res/Resources$SwitchRes;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3445
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mSwitchButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$SwitchRes;

    iget v2, v2, Landroid/content/res/Resources$SwitchRes;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getSwitchRes(I)Landroid/content/res/Resources$SwitchRes;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3449
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$SwitchRes;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public generateTitleColor(II)[Landroid/content/res/Resources$TitleColor;
    .locals 4
    .parameter "nCur"
    .parameter "ncount"

    .prologue
    .line 3431
    if-lez p2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 3432
    new-array v1, p2, [Landroid/content/res/Resources$TitleColor;

    .line 3433
    .local v1, ret:[Landroid/content/res/Resources$TitleColor;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3434
    iget-object v3, p0, Landroid/content/res/Resources$ThemeElement;->mR:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/res/Resources$ThemeElement;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources$TitleColor;

    iget v2, v2, Landroid/content/res/Resources$TitleColor;->resid:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getTitleColors(I)Landroid/content/res/Resources$TitleColor;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3438
    .end local v0           #i:I
    .end local v1           #ret:[Landroid/content/res/Resources$TitleColor;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method
