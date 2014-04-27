.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static bUseDefaultTheme:Z

.field static list_divider_res:I

.field static list_item_textcolor:I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    sput v0, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 142
    sput v0, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    .line 146
    sput-boolean v0, Lcom/android/internal/app/AlertController;->bUseDefaultTheme:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 12
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, -0x1

    const v9, 0x1060069

    const/16 v8, 0x11

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v10, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 112
    iput v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 128
    iput v5, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 148
    new-instance v5, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v5, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 202
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 204
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 205
    new-instance v5, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v5, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 207
    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v7, 0x101005d

    invoke-virtual {p1, v5, v6, v7, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 211
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v5, 0xa

    const v6, 0x1090022

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 213
    const/16 v5, 0xb

    const v6, 0x1090096

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 216
    const/16 v5, 0xc

    const v6, 0x1090013

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 219
    const/16 v5, 0xd

    const v6, 0x1090012

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 222
    const/16 v5, 0xe

    const v6, 0x1090011

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->isCts()Z

    move-result v1

    .line 227
    .local v1, bCts:Z
    if-nez v1, :cond_0

    iget v5, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    const v6, 0x1090023

    if-ne v5, v6, :cond_0

    .line 228
    const v5, 0x1090062

    iput v5, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 230
    :cond_0
    const/4 v2, 0x0

    .line 231
    .local v2, cur_dialogUi_id:I
    if-lez v2, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    .line 232
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/R$styleable;->AlertDialog:[I

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 233
    .local v4, mArray:Landroid/content/res/TypedArray;
    if-eqz v4, :cond_2

    .line 234
    const/16 v5, 0x12

    const v6, 0x1080230

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 236
    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    .line 238
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 239
    .local v3, default_textcolor:I
    sget v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    if-eq v5, v3, :cond_1

    .line 240
    sput-boolean v11, Lcom/android/internal/app/AlertController;->bUseDefaultTheme:Z

    .line 242
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    sget v5, Lcom/android/internal/app/AlertController;->list_divider_res:I

    invoke-direct {p0, v5}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 244
    sget v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    invoke-direct {p0, v5}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    .line 255
    .end local v3           #default_textcolor:I
    .end local v4           #mArray:Landroid/content/res/TypedArray;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    return-void

    .line 247
    :cond_3
    sput-boolean v11, Lcom/android/internal/app/AlertController;->bUseDefaultTheme:Z

    .line 248
    const/16 v5, 0x12

    const v6, 0x1080230

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 249
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    .line 250
    sget v5, Lcom/android/internal/app/AlertController;->list_divider_res:I

    invoke-direct {p0, v5}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_divider_res:I

    .line 251
    sget v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    invoke-direct {p0, v5}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v5

    sput v5, Lcom/android/internal/app/AlertController;->list_item_textcolor:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    :goto_0
    return v2

    .line 263
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 264
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 267
    check-cast v1, Landroid/view/ViewGroup;

    .line 268
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 269
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 270
    add-int/lit8 v0, v0, -0x1

    .line 271
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 272
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 277
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 658
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 659
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 660
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 661
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102023f

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 663
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 666
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020240

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 667
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 668
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_1
    return-void
.end method

.method private invertDailogResource(I)I
    .locals 2
    .parameter "nres"

    .prologue
    .line 674
    move v0, p1

    .line 675
    .local v0, nret:I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isDefaultPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    sparse-switch p1, :sswitch_data_0

    .line 757
    :cond_0
    :goto_0
    return v0

    .line 678
    :sswitch_0
    const v0, 0x108043f

    .line 679
    goto :goto_0

    .line 681
    :sswitch_1
    const v0, 0x1080447

    .line 682
    goto :goto_0

    .line 684
    :sswitch_2
    const v0, 0x108043c

    .line 685
    goto :goto_0

    .line 687
    :sswitch_3
    const v0, 0x1080439

    .line 688
    goto :goto_0

    .line 690
    :sswitch_4
    const v0, 0x1080440

    .line 691
    goto :goto_0

    .line 693
    :sswitch_5
    const v0, 0x1080448

    .line 694
    goto :goto_0

    .line 696
    :sswitch_6
    const v0, 0x108043d

    .line 697
    goto :goto_0

    .line 699
    :sswitch_7
    const v0, 0x108043a

    .line 700
    goto :goto_0

    .line 702
    :sswitch_8
    const v0, 0x1080222

    .line 703
    goto :goto_0

    .line 705
    :sswitch_9
    const v0, 0x108022d

    .line 706
    goto :goto_0

    .line 708
    :sswitch_a
    const v0, 0x108022b

    .line 709
    goto :goto_0

    .line 711
    :sswitch_b
    const v0, 0x108021d

    .line 712
    goto :goto_0

    .line 714
    :sswitch_c
    const v0, 0x1080221

    .line 715
    goto :goto_0

    .line 717
    :sswitch_d
    const v0, 0x108022c

    .line 718
    goto :goto_0

    .line 720
    :sswitch_e
    const v0, 0x108022a

    .line 721
    goto :goto_0

    .line 723
    :sswitch_f
    const v0, 0x108021c

    .line 724
    goto :goto_0

    .line 726
    :sswitch_10
    const v0, 0x1080231

    .line 727
    goto :goto_0

    .line 729
    :sswitch_11
    const v0, 0x1080230

    .line 730
    goto :goto_0

    .line 732
    :sswitch_12
    const v0, 0x108021f

    .line 733
    goto :goto_0

    .line 735
    :sswitch_13
    const v0, 0x108021e

    .line 736
    goto :goto_0

    .line 738
    :sswitch_14
    const v0, 0x1060069

    .line 739
    goto :goto_0

    .line 741
    :sswitch_15
    const v0, 0x106006a

    .line 742
    goto :goto_0

    .line 744
    :sswitch_16
    const v0, 0x1080012

    .line 745
    goto :goto_0

    .line 747
    :sswitch_17
    const v0, 0x1080014

    .line 748
    goto :goto_0

    .line 750
    :sswitch_18
    const v0, 0x10803a4

    .line 751
    goto :goto_0

    .line 753
    :sswitch_19
    const v0, 0x10803a3

    goto :goto_0

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x1060069 -> :sswitch_15
        0x106006a -> :sswitch_14
        0x1080012 -> :sswitch_17
        0x1080014 -> :sswitch_16
        0x108021c -> :sswitch_b
        0x108021d -> :sswitch_f
        0x108021e -> :sswitch_12
        0x108021f -> :sswitch_13
        0x1080221 -> :sswitch_8
        0x1080222 -> :sswitch_c
        0x108022a -> :sswitch_a
        0x108022b -> :sswitch_e
        0x108022c -> :sswitch_9
        0x108022d -> :sswitch_d
        0x1080230 -> :sswitch_10
        0x1080231 -> :sswitch_11
        0x10803a3 -> :sswitch_18
        0x10803a4 -> :sswitch_19
        0x1080439 -> :sswitch_7
        0x108043a -> :sswitch_3
        0x108043c -> :sswitch_6
        0x108043d -> :sswitch_2
        0x108043f -> :sswitch_4
        0x1080440 -> :sswitch_0
        0x1080447 -> :sswitch_5
        0x1080448 -> :sswitch_1
    .end sparse-switch
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 28
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 766
    const/16 v25, 0x0

    const v26, 0x1080440

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 768
    .local v12, fullDark:I
    const/16 v25, 0x1

    const v26, 0x1080448

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    .line 770
    .local v22, topDark:I
    const/16 v25, 0x2

    const v26, 0x108043d

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 772
    .local v9, centerDark:I
    const/16 v25, 0x3

    const v26, 0x108043a

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 774
    .local v6, bottomDark:I
    const/16 v25, 0x4

    const v26, 0x108043f

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 776
    .local v11, fullBright:I
    const/16 v25, 0x5

    const v26, 0x1080447

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    .line 778
    .local v21, topBright:I
    const/16 v25, 0x6

    const v26, 0x108043c

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 780
    .local v8, centerBright:I
    const/16 v25, 0x7

    const v26, 0x1080439

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 782
    .local v5, bottomBright:I
    const/16 v25, 0x8

    const v26, 0x108043b

    move-object/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 786
    .local v7, bottomMedium:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v12

    .line 787
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v22

    .line 788
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v9

    .line 789
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v6

    .line 790
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v11

    .line 791
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v21

    .line 792
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v8

    .line 793
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v5

    .line 794
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->invertDailogResource(I)I

    move-result v7

    .line 796
    const/4 v3, 0x0

    .line 797
    .local v3, bUse_control_theme:Z
    const/16 v17, 0x0

    .line 798
    .local v17, nButtonPanel_background_res:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->isCts()Z

    move-result v25

    if-nez v25, :cond_2

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getThemeDialogBackground(Landroid/content/Context;)[I

    move-result-object v19

    .line 800
    .local v19, res:[I
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_2

    .line 801
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_2

    .line 802
    aget v25, v19, v13

    if-gtz v25, :cond_1

    .line 801
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 804
    :cond_1
    packed-switch v13, :pswitch_data_0

    goto :goto_1

    .line 806
    :pswitch_0
    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const v25, 0x108022d

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 807
    aget v22, v19, v13

    .line 808
    aget v21, v19, v13

    .line 809
    const/4 v3, 0x1

    goto :goto_1

    .line 814
    :pswitch_1
    if-ne v9, v8, :cond_0

    const v25, 0x108022b

    move/from16 v0, v25

    if-ne v8, v0, :cond_0

    .line 815
    aget v9, v19, v13

    .line 816
    aget v8, v19, v13

    .line 817
    const/4 v3, 0x1

    goto :goto_1

    .line 822
    :pswitch_2
    if-ne v6, v5, :cond_0

    const v25, 0x108021d

    move/from16 v0, v25

    if-ne v5, v0, :cond_0

    .line 823
    aget v6, v19, v13

    .line 824
    aget v5, v19, v13

    .line 825
    const/4 v3, 0x1

    goto :goto_1

    .line 830
    :pswitch_3
    if-ne v12, v11, :cond_0

    const v25, 0x1080222

    move/from16 v0, v25

    if-ne v11, v0, :cond_0

    .line 831
    aget v12, v19, v13

    .line 832
    aget v11, v19, v13

    .line 833
    const/4 v3, 0x1

    goto :goto_1

    .line 838
    :pswitch_4
    if-eqz v3, :cond_0

    .line 839
    aget v17, v19, v13

    goto :goto_1

    .line 850
    .end local v13           #i:I
    .end local v19           #res:[I
    :cond_2
    const/4 v4, 0x0

    .line 852
    .local v4, bUse_lenovo_default_theme:Z
    if-nez v3, :cond_6

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->isCts()Z

    move-result v25

    if-nez v25, :cond_6

    .line 855
    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const v25, 0x108022d

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 856
    const v22, 0x302002f

    .line 857
    move/from16 v21, v22

    .line 859
    const/4 v4, 0x1

    .line 863
    :cond_3
    if-ne v9, v8, :cond_4

    const v25, 0x108022b

    move/from16 v0, v25

    if-ne v8, v0, :cond_4

    .line 864
    const v9, 0x302002d

    .line 865
    move v8, v9

    .line 869
    :cond_4
    if-ne v6, v5, :cond_5

    const v25, 0x108021d

    move/from16 v0, v25

    if-ne v5, v0, :cond_5

    .line 870
    const v6, 0x3020029

    .line 871
    move v5, v6

    .line 872
    move/from16 v17, v5

    .line 876
    :cond_5
    if-ne v12, v11, :cond_6

    const v25, 0x1080222

    move/from16 v0, v25

    if-ne v11, v0, :cond_6

    .line 877
    const v12, 0x302002b

    .line 878
    move v11, v12

    .line 884
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_9

    .line 885
    :cond_7
    const/4 v10, 0x0

    .line 886
    .local v10, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    if-nez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    move-object/from16 v25, v0

    if-nez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 887
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    const v26, 0x102023d

    invoke-virtual/range {v25 .. v26}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 892
    :goto_2
    if-eqz v10, :cond_9

    .line 893
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 907
    .end local v10           #divider:Landroid/view/View;
    :cond_9
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v24, v0

    .line 908
    .local v24, views:[Landroid/view/View;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 909
    .local v16, light:[Z
    const/4 v15, 0x0

    .line 910
    .local v15, lastView:Landroid/view/View;
    const/4 v14, 0x0

    .line 912
    .local v14, lastLight:Z
    const/16 v18, 0x0

    .line 913
    .local v18, pos:I
    if-eqz p6, :cond_a

    .line 914
    aput-object p1, v24, v18

    .line 915
    const/16 v25, 0x0

    aput-boolean v25, v16, v18

    .line 916
    add-int/lit8 v18, v18, 0x1

    .line 924
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/16 p2, 0x0

    .end local p2
    :cond_b
    aput-object p2, v24, v18

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    const/16 v25, 0x1

    :goto_3
    aput-boolean v25, v16, v18

    .line 927
    add-int/lit8 v18, v18, 0x1

    .line 928
    if-eqz p3, :cond_c

    .line 929
    aput-object p3, v24, v18

    .line 930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v25, v0

    aput-boolean v25, v16, v18

    .line 931
    add-int/lit8 v18, v18, 0x1

    .line 933
    :cond_c
    if-eqz p4, :cond_d

    .line 934
    aput-object p7, v24, v18

    .line 935
    const/16 v25, 0x1

    aput-boolean v25, v16, v18

    .line 938
    :cond_d
    const/16 v20, 0x0

    .line 939
    .local v20, setView:Z
    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_15

    .line 940
    aget-object v23, v24, v18

    .line 941
    .local v23, v:Landroid/view/View;
    if-nez v23, :cond_10

    .line 939
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 889
    .end local v14           #lastLight:Z
    .end local v15           #lastView:Landroid/view/View;
    .end local v16           #light:[Z
    .end local v18           #pos:I
    .end local v20           #setView:Z
    .end local v23           #v:Landroid/view/View;
    .end local v24           #views:[Landroid/view/View;
    .restart local v10       #divider:Landroid/view/View;
    .restart local p2
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    const v26, 0x1020244

    invoke-virtual/range {v25 .. v26}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    goto :goto_2

    .line 926
    .end local v10           #divider:Landroid/view/View;
    .end local p2
    .restart local v14       #lastLight:Z
    .restart local v15       #lastView:Landroid/view/View;
    .restart local v16       #light:[Z
    .restart local v18       #pos:I
    .restart local v24       #views:[Landroid/view/View;
    :cond_f
    const/16 v25, 0x0

    goto :goto_3

    .line 944
    .restart local v20       #setView:Z
    .restart local v23       #v:Landroid/view/View;
    :cond_10
    if-eqz v15, :cond_11

    .line 945
    if-nez v20, :cond_13

    .line 946
    if-eqz v14, :cond_12

    move/from16 v25, v21

    :goto_6
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 950
    :goto_7
    const/16 v20, 0x1

    .line 952
    :cond_11
    move-object/from16 v15, v23

    .line 953
    aget-boolean v14, v16, v18

    goto :goto_5

    :cond_12
    move/from16 v25, v22

    .line 946
    goto :goto_6

    .line 948
    :cond_13
    if-eqz v14, :cond_14

    move/from16 v25, v8

    :goto_8
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_14
    move/from16 v25, v9

    goto :goto_8

    .line 956
    .end local v23           #v:Landroid/view/View;
    :cond_15
    if-eqz v15, :cond_16

    .line 957
    if-eqz v20, :cond_1c

    .line 962
    if-eqz v14, :cond_1b

    if-eqz p4, :cond_1a

    .end local v7           #bottomMedium:I
    :goto_9
    invoke-virtual {v15, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 973
    .end local v11           #fullBright:I
    :cond_16
    :goto_a
    if-nez v3, :cond_17

    if-eqz v4, :cond_18

    :cond_17
    if-eqz p7, :cond_18

    if-lez v17, :cond_18

    .line 976
    move-object/from16 v0, p7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1000
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1002
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_19

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ListView;->setSelection(I)V

    .line 1007
    :cond_19
    return-void

    .restart local v7       #bottomMedium:I
    .restart local v11       #fullBright:I
    :cond_1a
    move v7, v5

    .line 962
    goto :goto_9

    :cond_1b
    move v7, v6

    goto :goto_9

    .line 965
    :cond_1c
    if-eqz v14, :cond_1d

    .end local v11           #fullBright:I
    :goto_b
    invoke-virtual {v15, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .restart local v11       #fullBright:I
    :cond_1d
    move v11, v12

    goto :goto_b

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 602
    const/4 v2, 0x1

    .line 603
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 604
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 605
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 606
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020019

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 607
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 617
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 618
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 621
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 629
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001b

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 630
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 633
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 641
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    if-ne v3, v2, :cond_4

    .line 647
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 654
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 612
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 614
    or-int/2addr v3, v2

    goto :goto_0

    .line 623
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    or-int/2addr v3, v0

    goto :goto_1

    .line 635
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    or-int/2addr v3, v1

    goto :goto_2

    .line 648
    :cond_4
    if-ne v3, v0, :cond_5

    .line 649
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 650
    :cond_5
    if-ne v3, v1, :cond_0

    .line 651
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 654
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x1020242

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 572
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 574
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 580
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 599
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 596
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, 0x102023b

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 507
    const/4 v1, 0x1

    .line 509
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 511
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 514
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 517
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 518
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 568
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 520
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 522
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 523
    if-eqz v0, :cond_5

    .line 525
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102023c

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 527
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 544
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 546
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 547
    :cond_4
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 552
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 556
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 561
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 562
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 20

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020241

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 431
    .local v3, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v5

    .line 434
    .local v5, hasButtons:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102023a

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 435
    .local v2, topPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v11, 0x101005d

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 437
    .local v14, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .line 439
    .local v7, hasTitle:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102023e

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 440
    .local v8, buttonPanel:Landroid/view/View;
    if-nez v5, :cond_0

    .line 441
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 445
    :cond_0
    const/4 v4, 0x0

    .line 446
    .local v4, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020243

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #customPanel:Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 448
    .restart local v4       #customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102002b

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout;

    .line 449
    .local v18, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_1

    .line 451
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 464
    .end local v18           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v7, :cond_4

    .line 465
    const/16 v19, 0x0

    .line 466
    .local v19, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 467
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102023d

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 483
    :goto_1
    if-eqz v19, :cond_4

    .line 484
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .end local v19           #divider:Landroid/view/View;
    :cond_4
    sget-boolean v1, Lcom/android/internal/app/AlertController;->bUseDefaultTheme:Z

    if-nez v1, :cond_9

    .line 489
    const/16 v17, 0x0

    .line 490
    .local v17, cur_dialogUi_id:I
    if-lez v17, :cond_8

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/R$styleable;->AlertDialog:[I

    move/from16 v0, v17

    invoke-virtual {v1, v0, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 492
    .local v6, mArray:Landroid/content/res/TypedArray;
    if-eqz v6, :cond_5

    move-object/from16 v1, p0

    .line 493
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 494
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    .end local v6           #mArray:Landroid/content/res/TypedArray;
    .end local v17           #cur_dialogUi_id:I
    :cond_5
    :goto_2
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 504
    return-void

    .line 458
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020243

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 469
    .restart local v19       #divider:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x1020244

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    goto :goto_1

    .end local v19           #divider:Landroid/view/View;
    .restart local v17       #cur_dialogUi_id:I
    :cond_8
    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v15, v7

    move-object/from16 v16, v8

    .line 497
    invoke-direct/range {v9 .. v16}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    goto :goto_2

    .end local v17           #cur_dialogUi_id:I
    :cond_9
    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v15, v7

    move-object/from16 v16, v8

    .line 500
    invoke-direct/range {v9 .. v16}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    goto :goto_2
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 195
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 196
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103cf

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 198
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 407
    packed-switch p1, :pswitch_data_0

    .line 415
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 282
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 290
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 349
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 353
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 357
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 373
    :goto_0
    return-void

    .line 361
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 362
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 366
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 367
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 304
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 381
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 382
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 383
    if-lez p1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    if-nez p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 393
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 400
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 308
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 319
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 328
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 329
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 330
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 331
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 332
    return-void
.end method
