.class Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "HorizontalNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/HorizontalNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2181
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x320

    const/4 v1, 0x0

    .line 2183
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #setter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$802(Lcom/mediatek/FMRadio/HorizontalNumberPicker;I)I

    .line 2184
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #setter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mPreviousScrollerX:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$902(Lcom/mediatek/FMRadio/HorizontalNumberPicker;I)I

    .line 2185
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1000(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1100(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2205
    :goto_0
    return-void

    .line 2188
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mHorizontal:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1200(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1000(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1100(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v2

    sub-int v3, v0, v2

    .line 2191
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1300(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2204
    :goto_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->invalidate()V

    goto :goto_0

    .line 2195
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1000(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1100(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 2196
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1400(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    .line 2197
    if-lez v4, :cond_3

    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1400(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_2
    add-int/2addr v4, v0

    .line 2200
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1300(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 2197
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1400(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v0

    goto :goto_2
.end method
