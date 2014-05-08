.class public Lcom/lenovo/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final ADDITIONAL_ITEMS_SPACE:I = 0xa

.field private static final ADDITIONAL_ITEM_HEIGHT:I = 0xf

.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEMS_TEXT_COLOR:I = -0x1000000

.field private static final ITEM_OFFSET:I = 0x4

.field private static final LABEL_OFFSET:I = 0x8

.field private static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final PADDING:I = 0xa

.field private static final SCROLLING_DURATION:I = 0x190

.field private static final SHADOWS_COLORS:[I = null

.field private static final TEXT_SIZE:I = 0x18

.field private static final VALUE_TEXT_COLOR:I = -0x10000000


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private adapter:Lcom/lenovo/widget/WheelAdapter;

.field private animationHandler:Landroid/os/Handler;

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/widget/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/text/StaticLayout;

.field private itemsPaint:Landroid/text/TextPaint;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field private labelLayout:Landroid/text/StaticLayout;

.field private labelWidth:I

.field private lastScrollY:I

.field private scroller:Landroid/widget/Scroller;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/widget/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private valueLayout:Landroid/text/StaticLayout;

.field private valuePaint:Landroid/text/TextPaint;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/widget/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x11t 0x11t 0x11t 0xfft
        0xaat 0xaat 0xaat 0x0t
        0xaat 0xaat 0xaat 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    .line 91
    iput v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 94
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    .line 95
    iput v1, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 101
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 130
    iput-boolean v1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 803
    new-instance v0, Lcom/lenovo/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$1;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 830
    iput v1, p0, Lcom/lenovo/widget/WheelView;->MESSAGE_SCROLL:I

    .line 831
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/widget/WheelView;->MESSAGE_JUSTIFY:I

    .line 852
    new-instance v0, Lcom/lenovo/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$2;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;

    .line 157
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    .line 91
    iput v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 94
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    .line 95
    iput v1, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 101
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 130
    iput-boolean v1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 803
    new-instance v0, Lcom/lenovo/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$1;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 830
    iput v1, p0, Lcom/lenovo/widget/WheelView;->MESSAGE_SCROLL:I

    .line 831
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/widget/WheelView;->MESSAGE_JUSTIFY:I

    .line 852
    new-instance v0, Lcom/lenovo/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$2;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;

    .line 149
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    .line 91
    iput v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 94
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    .line 95
    iput v1, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 101
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 130
    iput-boolean v1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 803
    new-instance v0, Lcom/lenovo/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$1;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 830
    iput v1, p0, Lcom/lenovo/widget/WheelView;->MESSAGE_SCROLL:I

    .line 831
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/widget/WheelView;->MESSAGE_JUSTIFY:I

    .line 852
    new-instance v0, Lcom/lenovo/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$2;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;

    .line 141
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/widget/WheelView;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/widget/WheelView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/widget/WheelView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/widget/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->justify()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/widget/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->clearMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/widget/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->startScrolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/widget/WheelView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/widget/WheelView;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/widget/WheelView;->lastScrollY:I

    return v0
.end method

.method static synthetic access$502(Lcom/lenovo/widget/WheelView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/lenovo/widget/WheelView;->lastScrollY:I

    return p1
.end method

.method static synthetic access$600(Lcom/lenovo/widget/WheelView;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/widget/WheelView;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/widget/WheelView;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/widget/WheelView;)Lcom/lenovo/widget/WheelAdapter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    return-object v0
.end method

.method private buildText(Z)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    iget v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    .line 467
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int/2addr v0, v2

    :goto_0
    iget v3, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_3

    .line 468
    if-nez p1, :cond_0

    iget v3, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    if-eq v0, v3, :cond_1

    .line 469
    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/widget/WheelView;->getTextItem(I)Ljava/lang/String;

    move-result-object v3

    .line 470
    if-eqz v3, :cond_1

    .line 471
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_1
    iget v3, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    .line 475
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculateLayoutWidth(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->initResourcesIfNecessary()V

    .line 535
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getMaxTextLength()I

    move-result v0

    .line 536
    if-lez v0, :cond_4

    .line 537
    const-string v3, "0"

    iget-object v4, p0, Lcom/lenovo/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 538
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    .line 542
    :goto_0
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    .line 544
    iput v2, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    .line 545
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    .line 550
    :cond_0
    const/high16 v0, 0x4000

    if-ne p2, v0, :cond_5

    move v0, v1

    .line 568
    :goto_1
    if-eqz v0, :cond_2

    .line 570
    add-int/lit8 v0, p1, -0x8

    add-int/lit8 v0, v0, -0x14

    .line 571
    if-gtz v0, :cond_1

    .line 572
    iput v2, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    iput v2, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    .line 574
    :cond_1
    iget v1, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    if-lez v1, :cond_7

    .line 575
    iget v1, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    int-to-double v1, v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    iget v4, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    add-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 577
    double-to-int v1, v1

    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    .line 578
    iget v1, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    .line 584
    :cond_2
    :goto_2
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    if-lez v0, :cond_3

    .line 585
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    iget v1, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->createLayouts(II)V

    .line 588
    :cond_3
    return p1

    .line 540
    :cond_4
    iput v2, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    goto :goto_0

    .line 554
    :cond_5
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    iget v3, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x14

    .line 555
    iget v3, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    if-lez v3, :cond_6

    .line 556
    add-int/lit8 v0, v0, 0x8

    .line 560
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 562
    const/high16 v3, -0x8000

    if-ne p2, v3, :cond_8

    if-ge p1, v0, :cond_8

    move v0, v1

    .line 564
    goto :goto_1

    .line 580
    :cond_7
    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    goto :goto_2

    :cond_8
    move p1, v0

    move v0, v2

    goto :goto_1
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 848
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    return-void
.end method

.method private createLayouts(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x4170

    const/high16 v5, 0x3f80

    .line 597
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_5

    .line 598
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    invoke-direct {p0, v1}, Lcom/lenovo/widget/WheelView;->buildText(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-lez p2, :cond_4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 605
    :goto_1
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_9

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getAdapter()Lcom/lenovo/widget/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getAdapter()Lcom/lenovo/widget/WheelAdapter;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    invoke-interface {v0, v1}, Lcom/lenovo/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 607
    :goto_2
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    :goto_3
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-lez p2, :cond_8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_4
    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 617
    :goto_5
    if-lez p2, :cond_3

    .line 618
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p2, :cond_b

    .line 619
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 626
    :cond_3
    :goto_6
    return-void

    .line 598
    :cond_4
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 602
    :cond_5
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_1

    :cond_6
    move-object v1, v8

    .line 606
    goto :goto_2

    .line 607
    :cond_7
    const-string v1, ""

    goto :goto_3

    :cond_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_4

    .line 611
    :cond_9
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_a

    .line 612
    iput-object v8, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_5

    .line 614
    :cond_a
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_5

    .line 623
    :cond_b
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_6
.end method

.method private doScroll(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 763
    iget v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 765
    iget v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int v2, v0, v2

    .line 766
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int/2addr v0, v2

    .line 767
    iget-boolean v3, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v3}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 769
    :goto_0
    if-gez v0, :cond_0

    .line 770
    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v3}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 772
    :cond_0
    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v3}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v3

    rem-int/2addr v0, v3

    .line 788
    :cond_1
    :goto_1
    iget v3, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 789
    iget v4, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    if-eq v0, v4, :cond_6

    .line 790
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->setCurrentItem(IZ)V

    .line 796
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr v0, v2

    sub-int v0, v3, v0

    iput v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 797
    iget v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 798
    iget v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 800
    :cond_2
    return-void

    .line 773
    :cond_3
    iget-boolean v3, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    if-eqz v3, :cond_5

    .line 775
    if-gez v0, :cond_4

    .line 776
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    move v2, v0

    move v0, v1

    .line 777
    goto :goto_1

    .line 778
    :cond_4
    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v3}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 779
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v2}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 780
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 784
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 785
    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v3}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 792
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 740
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 741
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v5

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 742
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 743
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 724
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 725
    const/4 v1, 0x0

    neg-int v0, v0

    iget v2, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 727
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 728
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 729
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 731
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 732
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 681
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 682
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 684
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 686
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 687
    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 695
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 697
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 698
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 701
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 704
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 705
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 711
    const/4 v1, 0x0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 712
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 713
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 715
    :cond_1
    return-void
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .locals 2
    .parameter

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v0

    iget v1, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v0, v0, -0xf

    .line 430
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 515
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 516
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 522
    :goto_0
    return v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 519
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaxTextLength()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getAdapter()Lcom/lenovo/widget/WheelAdapter;

    move-result-object v4

    .line 488
    if-nez v4, :cond_0

    .line 507
    :goto_0
    return v3

    .line 492
    :cond_0
    invoke-interface {v4}, Lcom/lenovo/widget/WheelAdapter;->getMaximumLength()I

    move-result v0

    .line 493
    if-lez v0, :cond_1

    move v3, v0

    .line 494
    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x0

    .line 498
    iget v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    .line 499
    iget v2, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int v0, v2, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    move-object v0, v1

    .line 500
    :goto_1
    iget v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    iget v5, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    add-int/2addr v1, v5

    invoke-interface {v4}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 501
    invoke-interface {v4, v2}, Lcom/lenovo/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    :cond_2
    move-object v0, v1

    .line 500
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 507
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private getTextItem(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 441
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v1}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v1}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v1

    .line 445
    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v2, :cond_0

    .line 448
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    .line 449
    add-int/2addr p1, v1

    goto :goto_1

    .line 453
    :cond_4
    rem-int v0, p1, v1

    .line 454
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v1, v0}, Lcom/lenovo/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 165
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    .line 166
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 167
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;

    .line 168
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 4

    .prologue
    const/high16 v2, 0x41c0

    const v3, 0x3dcccccd

    .line 384
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    .line 388
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    .line 395
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 396
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const v2, -0x3f3f40

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 400
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3

    .line 404
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/lenovo/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_4

    .line 408
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/lenovo/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 411
    :cond_4
    const v0, 0x7f020061

    invoke-virtual {p0, v0}, Lcom/lenovo/widget/WheelView;->setBackgroundResource(I)V

    .line 412
    return-void
.end method

.method private invalidateLayouts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 376
    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 378
    return-void
.end method

.method private justify()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    if-nez v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 886
    :cond_0
    iput v1, p0, Lcom/lenovo/widget/WheelView;->lastScrollY:I

    .line 887
    iget v4, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 888
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    .line 889
    if-lez v4, :cond_4

    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v3}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v6

    .line 890
    :goto_1
    iget-boolean v3, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    int-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v2

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 891
    if-gez v4, :cond_6

    .line 892
    add-int/lit8 v0, v2, 0x1

    add-int/2addr v4, v0

    .line 896
    :cond_2
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_7

    .line 897
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 898
    invoke-direct {p0, v6}, Lcom/lenovo/widget/WheelView;->setNextMessage(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 889
    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    if-lez v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    .line 894
    :cond_6
    add-int/lit8 v0, v2, 0x1

    sub-int/2addr v4, v0

    goto :goto_2

    .line 900
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->finishScrolling()V

    goto :goto_0
.end method

.method private setNextMessage(I)V
    .locals 1
    .parameter

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->clearMessages()V

    .line 840
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 841
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    .line 910
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->notifyScrollingListenersAboutStart()V

    .line 912
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public addScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method finishScrolling()V
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    .line 922
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->invalidateLayouts()V

    .line 923
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    .line 924
    return-void
.end method

.method public getAdapter()Lcom/lenovo/widget/WheelAdapter;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/widget/OnWheelChangedListener;

    .line 263
    invoke-interface {v0, p0, p1, p2}, Lcom/lenovo/widget/OnWheelChangedListener;->onChanged(Lcom/lenovo/widget/WheelView;II)V

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/widget/OnWheelScrollListener;

    .line 297
    invoke-interface {v0, p0}, Lcom/lenovo/widget/OnWheelScrollListener;->onScrollingFinished(Lcom/lenovo/widget/WheelView;)V

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/widget/OnWheelScrollListener;

    .line 288
    invoke-interface {v0, p0}, Lcom/lenovo/widget/OnWheelScrollListener;->onScrollingStarted(Lcom/lenovo/widget/WheelView;)V

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 655
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 656
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    if-nez v0, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->calculateLayoutWidth(II)I

    .line 663
    :cond_0
    :goto_0
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    if-lez v0, :cond_1

    .line 664
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 666
    const/high16 v0, 0x4120

    const/high16 v1, -0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 667
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 668
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->drawValue(Landroid/graphics/Canvas;)V

    .line 669
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 672
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 673
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 674
    return-void

    .line 659
    :cond_2
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemsWidth:I

    iget v1, p0, Lcom/lenovo/widget/WheelView;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->createLayouts(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 630
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 631
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 632
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 633
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 635
    invoke-direct {p0, v3, v1}, Lcom/lenovo/widget/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 638
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_0

    .line 648
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/lenovo/widget/WheelView;->setMeasuredDimension(II)V

    .line 649
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v1}, Lcom/lenovo/widget/WheelView;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v1

    .line 643
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_1

    .line 644
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 747
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getAdapter()Lcom/lenovo/widget/WheelAdapter;

    move-result-object v0

    .line 748
    if-nez v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v1

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->justify()V

    goto :goto_0
.end method

.method public removeChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public removeScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public scroll(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 932
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 933
    iget v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    iput v0, p0, Lcom/lenovo/widget/WheelView;->lastScrollY:I

    .line 934
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v0

    mul-int v3, p1, v0

    .line 935
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/lenovo/widget/WheelView;->lastScrollY:I

    iget v4, p0, Lcom/lenovo/widget/WheelView;->lastScrollY:I

    sub-int v4, v3, v4

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 936
    invoke-direct {p0, v1}, Lcom/lenovo/widget/WheelView;->setNextMessage(I)V

    .line 937
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->startScrolling()V

    .line 938
    return-void
.end method

.method public setAdapter(Lcom/lenovo/widget/WheelAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    .line 184
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->invalidateLayouts()V

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    .line 186
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .parameter

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/widget/WheelView;->setCurrentItem(IZ)V

    .line 350
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 321
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v0, :cond_0

    .line 322
    :goto_1
    if-gez p1, :cond_3

    .line 323
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_1

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 330
    :cond_4
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    if-eq p1, v0, :cond_0

    .line 331
    if-eqz p2, :cond_5

    .line 332
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int v0, p1, v0

    const/16 v1, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->scroll(II)V

    goto :goto_0

    .line 334
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->invalidateLayouts()V

    .line 335
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 336
    iput p1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 337
    iget v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->notifyChangingListeners(II)V

    .line 338
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 367
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    .line 368
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->invalidateLayouts()V

    .line 369
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 194
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;

    .line 195
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/lenovo/widget/WheelView;->label:Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 236
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    .line 238
    :cond_1
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput p1, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    .line 215
    return-void
.end method
