.class public Lcom/mediatek/FMRadio/HorizontalNumberPicker;
.super Landroid/widget/LinearLayout;
.source "HorizontalNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$2;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollListener;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnValueChangeListener;,
        Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final HDPI:F = 1.5f

.field private static final INIT_SCROLL_OFFSET_HORIZONTAL:I = 0x0

.field private static final INIT_SCROLL_OFFSET_VERTICAL:I = 0x0

.field private static final LDPI:F = 0.75f

.field private static final MDPI:F = 1.0f

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x1

.field private static final SELECTOR_OFFSET_ZERO:I = 0x0

.field private static final SELECTOR_TEXT_ALPHA_TRANSPARENT_NONE:I = 0xff

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0x3c

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HorizontalNumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter; = null

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final XHDPI:F = 2.0f

.field private static mDensity:F


# instance fields
.field private final SELECTOR_INDICES_LARGE:[I

.field private final SELECTOR_INDICES_MEDIUM:[I

.field private final SELECTOR_INDICES_SMALL:[I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mBeginEditOnUpEvent:Z

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;

.field private mGapBetweenNumAndScale:F

.field private mHdpiPositionAdjust:F

.field private mHorizontal:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventX:F

.field private mLastDownEventY:F

.field private mLastMotionEventX:F

.field private mLastMotionEventY:F

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollFinishListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;

.field private mOnScrollListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnValueChangeListener;

.field private mPreviousScrollerX:I

.field private mPreviousScrollerY:I

.field private mScaleLengthLong:F

.field private mScaleLengthShort:F

.field private mScaleWidth:F

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private mSelectorElementHeight:I

.field private mSelectorElementWidth:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorMiddleItemIndex:I

.field private mSelectorTextGapHeight:I

.field private mSelectorTextGapWidth:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 171
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->DIGIT_CHARACTERS:[C

    .line 187
    new-instance v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$1;

    invoke-direct {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$1;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;

    .line 349
    const/high16 v0, 0x3f80

    sput v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    return-void

    .line 171
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 631
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 642
    const v0, 0x10103d6

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 643
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4190

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinHeight:I

    .line 233
    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinWidth:I

    .line 248
    const/16 v0, 0x14

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTextSize:I

    .line 297
    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLongPressUpdateInterval:J

    .line 302
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 307
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SELECTOR_INDICES_MEDIUM:[I

    .line 316
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SELECTOR_INDICES_SMALL:[I

    .line 332
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SELECTOR_INDICES_LARGE:[I

    .line 338
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SELECTOR_INDICES_MEDIUM:[I

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 339
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    .line 355
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScaleWidth:F

    .line 356
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScaleLengthShort:F

    .line 357
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScaleLengthLong:F

    .line 358
    iput v5, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mGapBetweenNumAndScale:F

    .line 359
    iput v5, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHdpiPositionAdjust:F

    .line 384
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    .line 528
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 533
    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScrollState:I

    .line 545
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    .line 660
    sget-object v0, Lcom/android/internal/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 662
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSolidColor:I

    .line 664
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingable:Z

    .line 667
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxWidth:I

    const v4, 0x7fffffff

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mComputeMaxWidth:Z

    .line 668
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 670
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 678
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setWillNotDraw(Z)V

    .line 679
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    .line 683
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTouchSlop:I

    .line 684
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTouchSlop:I

    .line 686
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinimumFlingVelocity:I

    .line 687
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaximumFlingVelocity:I

    .line 691
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 692
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 693
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 694
    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 695
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 696
    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 700
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 701
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x4020

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 705
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 707
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    .line 718
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 667
    goto :goto_0

    .line 715
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    goto :goto_1

    .line 307
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 316
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 332
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/HorizontalNumberPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)J
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300()[C
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/HorizontalNumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/HorizontalNumberPicker;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/HorizontalNumberPicker;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$902(Lcom/mediatek/FMRadio/HorizontalNumberPicker;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I

    return p1
.end method

.method private changeCurrent(I)V
    .locals 1
    .parameter

    .prologue
    .line 1615
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1625
    :goto_0
    return-void

    .line 1619
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1620
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1622
    :cond_1
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    .line 1623
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setValue(I)V

    .line 1624
    invoke-direct {p0, v0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1635
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_3

    .line 1636
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1637
    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I

    .line 1638
    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I

    .line 1639
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1640
    if-eqz p1, :cond_1

    .line 1641
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    neg-int v3, v2

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1660
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    .line 1668
    :goto_1
    return-void

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1651
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v0, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1655
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1662
    :cond_3
    if-eqz p1, :cond_4

    .line 1663
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1665
    :cond_4
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 2
    .parameter

    .prologue
    .line 1913
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 1914
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1913
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1916
    :cond_0
    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 1917
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1918
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    .line 1920
    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1921
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1922
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3
    .parameter

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1931
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1932
    if-eqz v0, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1935
    :cond_0
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1936
    :cond_1
    const-string v0, ""

    .line 1945
    :goto_1
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1939
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    sub-int v0, p1, v0

    .line 1940
    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v0, v2, v0

    goto :goto_1

    .line 1942
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 0
    .parameter

    .prologue
    .line 1860
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter

    .prologue
    .line 1800
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I

    .line 1801
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I

    .line 1804
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v0, :cond_1

    .line 1805
    if-lez p1, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1822
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    .line 1823
    return-void

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1813
    :cond_1
    if-lez p1, :cond_2

    .line 1814
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1817
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1676
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1677
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1678
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v1, :cond_1

    .line 1679
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 1680
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1681
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1682
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->scrollBy(II)V

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1685
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1686
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1687
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->scrollBy(II)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFormatter:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFormatter:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2041
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2065
    :goto_0
    return v0

    .line 2046
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2048
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2049
    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2050
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 2046
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2059
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 2042
    :catch_0
    move-exception v0

    .line 2065
    :goto_2
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    goto :goto_0

    .line 2060
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter

    .prologue
    .line 1882
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1883
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1889
    :cond_0
    :goto_0
    return p1

    .line 1885
    :cond_1
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1886
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 0

    .prologue
    .line 1833
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 2
    .parameter

    .prologue
    .line 1897
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1898
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1900
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1901
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1902
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    .line 1904
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1905
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1906
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1756
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1757
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBottom:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setFadingEdgeLength(I)V

    .line 1758
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1732
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1733
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 1734
    array-length v1, v0

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1735
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    .line 1737
    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBottom:I

    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTop:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1738
    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mRight:I

    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    .line 1740
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 1741
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v3, :cond_0

    .line 1742
    div-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    .line 1743
    const-string v0, "HorizontalNumberPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectorTextGapWidth :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementWidth:I

    .line 1745
    iput v5, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    .line 1751
    :goto_0
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1753
    return-void

    .line 1747
    :cond_0
    div-float v0, v1, v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    .line 1748
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTextSize:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    .line 1749
    iput v5, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    goto :goto_0
.end method

.method private initializeSelectorWheelIndices()V
    .locals 4

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1593
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 1594
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getValue()I

    move-result v2

    .line 1595
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1596
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v1, v0, v1

    add-int/2addr v1, v2

    .line 1597
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v3, :cond_0

    .line 1598
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v1

    .line 1600
    :cond_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    aput v1, v3, v0

    .line 1601
    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1603
    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1707
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1709
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 1546
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1558
    :goto_0
    :sswitch_0
    return p1

    .line 1549
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1550
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1551
    sparse-switch v1, :sswitch_data_0

    .line 1560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown measure mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1558
    :sswitch_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1551
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnValueChangeListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnValueChangeListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnValueChangeListener;->onValueChange(Lcom/mediatek/FMRadio/HorizontalNumberPicker;II)V

    .line 2002
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter

    .prologue
    .line 1786
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScrollState:I

    .line 1790
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnScrollListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnScrollListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/mediatek/FMRadio/HorizontalNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1765
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnScrollFinishListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnScrollFinishListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    invoke-interface {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;->onScrollFinish(I)V

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1769
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1770
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->postAdjustScrollerCommand(I)V

    .line 1771
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 1780
    :cond_1
    return-void
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 2091
    new-instance v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;-><init>(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

    .line 2095
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2096
    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2012
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 2013
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2014
    new-instance v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2016
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2017
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2018
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2075
    new-instance v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;-><init>(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    .line 2079
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    #setter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;->access$102(Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;I)I

    .line 2080
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    #setter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;->access$202(Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;I)I

    .line 2081
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2082
    return-void

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 2028
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2030
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 2031
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSetSelectionCommand:Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2033
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1579
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1580
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1581
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1583
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1700
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    .line 1701
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1718
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    .line 1719
    if-ne p1, v2, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1723
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1726
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    const v1, 0x104047a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1729
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 0
    .parameter

    .prologue
    .line 1847
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1181
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1186
    const/4 v1, 0x0

    move v3, v2

    .line 1187
    :goto_1
    const/16 v0, 0x9

    if-gt v3, v0, :cond_2

    .line 1188
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1190
    cmpl-float v4, v0, v1

    if-lez v4, :cond_8

    .line 1187
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1195
    :cond_2
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    move v3, v2

    .line 1196
    :goto_3
    if-lez v0, :cond_3

    .line 1197
    add-int/lit8 v3, v3, 0x1

    .line 1198
    div-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 1200
    :cond_3
    int-to-float v0, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1213
    :cond_4
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_0

    .line 1214
    if-lez v0, :cond_7

    .line 1215
    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxWidth:I

    .line 1219
    :goto_4
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0

    .line 1202
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v3, v0

    move v1, v2

    move v0, v2

    .line 1203
    :goto_5
    if-ge v1, v3, :cond_4

    .line 1204
    iget-object v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1206
    int-to-float v5, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 1207
    float-to-int v0, v4

    .line 1203
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1217
    :cond_7
    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxWidth:I

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 2

    .prologue
    .line 1866
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_0

    .line 1871
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-le v0, v1, :cond_1

    .line 1876
    :cond_1
    return-void
.end method

.method private updateInputTextView()V
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1985
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    :cond_1
    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1954
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1955
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1957
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->updateInputTextView()V

    .line 1963
    :goto_0
    return-void

    .line 1960
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1961
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 968
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-nez v0, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 972
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 973
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 974
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    :cond_2
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 980
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v1, :cond_4

    .line 981
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 982
    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I

    if-nez v2, :cond_3

    .line 983
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I

    .line 987
    :cond_3
    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->scrollBy(II)V

    .line 988
    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I

    .line 999
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1000
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 991
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 992
    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_5

    .line 993
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I

    .line 995
    :cond_5
    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->scrollBy(II)V

    .line 996
    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I

    goto :goto_1

    .line 1002
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 1426
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 948
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 949
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 953
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 931
    packed-switch v0, :pswitch_data_0

    .line 943
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 933
    :pswitch_0
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 934
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 935
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 940
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 931
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 959
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 961
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 963
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 1438
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1454
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1404
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1323
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1290
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1399
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1409
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1412
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    iget-wide v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->showInputControls(J)V

    .line 1416
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 1421
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter

    .prologue
    .line 1458
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1464
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-nez v1, :cond_3

    .line 1465
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    .line 1466
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    int-to-float v1, v1

    .line 1475
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1477
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1478
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1479
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1480
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1484
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 1485
    const/4 v3, 0x0

    move v8, v3

    move v9, v1

    :goto_2
    array-length v1, v13

    if-ge v8, v1, :cond_7

    .line 1486
    aget v4, v13, v8

    .line 1487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 1489
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v1, v8, v1

    if-lez v1, :cond_4

    .line 1490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v8

    mul-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    div-int/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1499
    :goto_3
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1501
    const/4 v3, 0x0

    .line 1502
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScaleWidth:F

    .line 1503
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mGapBetweenNumAndScale:F

    sget v6, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    mul-float v15, v1, v6

    .line 1504
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScaleLengthShort:F

    sget v6, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    mul-float/2addr v1, v6

    .line 1506
    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x32

    if-nez v5, :cond_8

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getMaxValue()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 1508
    const/4 v3, 0x1

    .line 1509
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScaleLengthLong:F

    sget v4, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    mul-float/2addr v1, v4

    move v10, v1

    move v11, v3

    .line 1512
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTop:I

    int-to-float v3, v1

    add-float v4, v2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTop:I

    int-to-float v1, v1

    add-float/2addr v1, v15

    add-float v5, v1, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1514
    if-eqz v11, :cond_2

    .line 1515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1517
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v15

    sub-float v3, v1, v10

    add-float v4, v2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBottom:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1520
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v1, :cond_6

    .line 1521
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementWidth:I

    int-to-float v1, v1

    add-float v3, v2, v1

    move v2, v9

    .line 1485
    :goto_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v2

    move v2, v3

    goto/16 :goto_2

    .line 1468
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    int-to-float v2, v1

    .line 1473
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTop:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    goto/16 :goto_1

    .line 1492
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v1, v8, v1

    if-gez v1, :cond_5

    .line 1493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v8, 0xff

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    div-int/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 1496
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 1523
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    int-to-float v1, v1

    add-float/2addr v9, v1

    move v3, v2

    move v2, v9

    goto :goto_5

    .line 1527
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_8
    move v10, v1

    move v11, v3

    goto/16 :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 798
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingable:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 846
    :goto_0
    return v0

    .line 801
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v0, v1

    .line 846
    goto :goto_0

    .line 803
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastDownEventY:F

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastMotionEventY:F

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastDownEventX:F

    iput v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastMotionEventX:F

    .line 805
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->removeAllCallbacks()V

    .line 806
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 807
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 808
    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-ne v2, v3, :cond_5

    .line 809
    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 810
    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 812
    :goto_1
    if-nez v2, :cond_3

    .line 813
    iget-object v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 814
    iget-object v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 815
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 817
    :cond_3
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 818
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    goto :goto_0

    :cond_4
    move v2, v1

    .line 810
    goto :goto_1

    .line 822
    :cond_5
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 823
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    goto :goto_0

    .line 827
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 829
    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastDownEventY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 830
    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastDownEventX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 831
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-eqz v3, :cond_6

    .line 832
    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastDownEventX:F

    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 833
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 834
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollStateChange(I)V

    goto/16 :goto_0

    .line 838
    :cond_6
    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 839
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 840
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollStateChange(I)V

    goto/16 :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getMeasuredWidth()I

    .line 724
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getMeasuredHeight()I

    .line 726
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    if-nez v0, :cond_0

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 729
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheel()V

    .line 730
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeFadingEdges()V

    .line 732
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 733
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 782
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 784
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 786
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 789
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 791
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v1

    .line 793
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setMeasuredDimension(II)V

    .line 794
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 851
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 925
    :goto_0
    return v0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 855
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 860
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 925
    goto :goto_0

    .line 862
    :pswitch_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-nez v0, :cond_4

    .line 863
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 864
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScrollState:I

    if-eq v3, v2, :cond_3

    .line 866
    :cond_2
    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastDownEventY:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 868
    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 869
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 870
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 873
    :cond_3
    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastMotionEventY:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    .line 874
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->scrollBy(II)V

    .line 875
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    .line 876
    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 878
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 879
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mScrollState:I

    if-eq v3, v2, :cond_6

    .line 881
    :cond_5
    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastDownEventX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 883
    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTouchSlop:I

    if-le v3, v4, :cond_6

    .line 884
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    .line 885
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 888
    :cond_6
    iget v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastMotionEventX:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    .line 889
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->scrollBy(II)V

    .line 890
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    .line 891
    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLastMotionEventX:F

    goto :goto_1

    .line 895
    :pswitch_1
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mBeginEditOnUpEvent:Z

    if-eqz v0, :cond_7

    .line 896
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setSelectorWheelState(I)V

    move v0, v2

    .line 897
    goto :goto_0

    .line 899
    :cond_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 900
    const/16 v3, 0x3e8

    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 902
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-nez v3, :cond_9

    .line 903
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 907
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinimumFlingVelocity:I

    if-le v3, v4, :cond_a

    .line 909
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->fling(I)V

    .line 910
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->onScrollStateChange(I)V

    .line 921
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 905
    :cond_9
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    .line 912
    :cond_a
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v0, :cond_b

    .line 913
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 915
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_3

    .line 918
    :cond_b
    sget v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_3

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1013
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelState:I

    if-nez v0, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    .line 1017
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z

    if-nez v1, :cond_6

    .line 1018
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1020
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1023
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1025
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1028
    :cond_3
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1029
    :cond_4
    :goto_1
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 1030
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1031
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->decrementSelectorIndices([I)V

    .line 1032
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1033
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1035
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1038
    :cond_5
    :goto_2
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1039
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1040
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->incrementSelectorIndices([I)V

    .line 1041
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1042
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 1044
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    .line 1048
    :cond_6
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    if-lez p1, :cond_7

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_7

    .line 1050
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto/16 :goto_0

    .line 1053
    :cond_7
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_8

    if-gez p1, :cond_8

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_8

    .line 1055
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto/16 :goto_0

    .line 1058
    :cond_8
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1059
    :cond_9
    :goto_3
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    if-le v1, v2, :cond_a

    .line 1060
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1061
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->decrementSelectorIndices([I)V

    .line 1062
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1063
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_9

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_9

    .line 1065
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_3

    .line 1068
    :cond_a
    :goto_4
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorTextGapWidth:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1069
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementWidth:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    .line 1070
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->incrementSelectorIndices([I)V

    .line 1071
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrent(I)V

    .line 1072
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_a

    .line 1074
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I

    goto :goto_4
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter

    .prologue
    .line 1534
    return-void
.end method

.method public setDensity(I)V
    .locals 1
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 741
    sparse-switch p1, :sswitch_data_0

    .line 755
    sput v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    .line 758
    :goto_0
    return-void

    .line 743
    :sswitch_0
    const/high16 v0, 0x3f40

    sput v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 746
    :sswitch_1
    sput v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 749
    :sswitch_2
    const/high16 v0, 0x3fc0

    sput v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 752
    :sswitch_3
    const/high16 v0, 0x4000

    sput v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDensity:F

    goto :goto_0

    .line 741
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1368
    :cond_0
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1369
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1377
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1378
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1390
    if-eqz p2, :cond_0

    .line 1391
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    .line 1392
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    .line 1394
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1395
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1008
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1009
    return-void
.end method

.method public setFormatter(Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;)V
    .locals 1
    .parameter

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFormatter:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1126
    :cond_0
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mFormatter:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Formatter;

    .line 1127
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 2
    .parameter

    .prologue
    .line 1333
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1336
    :cond_0
    if-gez p1, :cond_1

    .line 1337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :cond_1
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    .line 1340
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    if-ge v0, v1, :cond_2

    .line 1341
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    .line 1343
    :cond_2
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1344
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1345
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1346
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1343
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 2
    .parameter

    .prologue
    .line 1300
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1303
    :cond_0
    if-gez p1, :cond_1

    .line 1304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_1
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    .line 1307
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    if-le v0, v1, :cond_2

    .line 1308
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    .line 1310
    :cond_2
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1311
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1312
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1313
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->updateInputTextView()V

    .line 1314
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1310
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter

    .prologue
    .line 1272
    iput-wide p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLongPressUpdateInterval:J

    .line 1273
    return-void
.end method

.method public setOnScrollFinishedListener(Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnScrollFinishListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;

    .line 1108
    return-void
.end method

.method public setOnScrollListener(Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnScrollListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollListener;

    .line 1105
    return-void
.end method

.method public setOnValueChangedListener(Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mOnValueChangeListener:Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnValueChangeListener;

    .line 1095
    return-void
.end method

.method public setScale(Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;)V
    .locals 2
    .parameter

    .prologue
    .line 761
    sget-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$2;->$SwitchMap$com$mediatek$FMRadio$HorizontalNumberPicker$Scale:[I

    invoke-virtual {p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 775
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorMiddleItemIndex:I

    .line 776
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheel()V

    .line 778
    return-void

    .line 763
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SELECTOR_INDICES_SMALL:[I

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    goto :goto_0

    .line 766
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SELECTOR_INDICES_MEDIUM:[I

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    goto :goto_0

    .line 769
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->SELECTOR_INDICES_LARGE:[I

    iput-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter

    .prologue
    .line 735
    if-lez p1, :cond_0

    .line 736
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mTextSize:I

    .line 737
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 739
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter

    .prologue
    .line 1161
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_4

    .line 1165
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    .line 1167
    :goto_1
    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1168
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    .line 1170
    :cond_1
    :goto_2
    iput v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mValue:I

    .line 1171
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->initializeSelectorWheelIndices()V

    .line 1172
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->updateInputTextView()V

    .line 1173
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1174
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0

    .line 1165
    :cond_2
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    goto :goto_1

    .line 1168
    :cond_3
    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    goto :goto_2

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1249
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1255
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mWrapSelectorWheel:Z

    .line 1256
    invoke-direct {p0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1258
    :cond_1
    return-void
.end method
