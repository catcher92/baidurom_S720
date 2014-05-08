.class Lcom/lenovo/widget/WheelView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/lenovo/widget/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 805
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$000(Lcom/lenovo/widget/WheelView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 807
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->clearMessages()V
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$200(Lcom/lenovo/widget/WheelView;)V

    .line 810
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 820
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    iget-object v2, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->currentItem:I
    invoke-static {v2}, Lcom/lenovo/widget/WheelView;->access$600(Lcom/lenovo/widget/WheelView;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->getItemHeight()I
    invoke-static {v3}, Lcom/lenovo/widget/WheelView;->access$700(Lcom/lenovo/widget/WheelView;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/lenovo/widget/WheelView;->access$800(Lcom/lenovo/widget/WheelView;)I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/lenovo/widget/WheelView;->lastScrollY:I
    invoke-static {v0, v2}, Lcom/lenovo/widget/WheelView;->access$502(Lcom/lenovo/widget/WheelView;I)I

    .line 821
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    iget-boolean v0, v0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v0, :cond_0

    const v8, 0x7fffffff

    .line 822
    :goto_0
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    iget-boolean v0, v0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v0, :cond_1

    neg-int v7, v8

    .line 823
    :goto_1
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->lastScrollY:I
    invoke-static {v2}, Lcom/lenovo/widget/WheelView;->access$500(Lcom/lenovo/widget/WheelView;)I

    move-result v2

    neg-float v3, p4

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 824
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/widget/WheelView;->access$1000(Lcom/lenovo/widget/WheelView;I)V

    .line 825
    const/4 v0, 0x1

    return v0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->adapter:Lcom/lenovo/widget/WheelAdapter;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$900(Lcom/lenovo/widget/WheelView;)Lcom/lenovo/widget/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->getItemHeight()I
    invoke-static {v2}, Lcom/lenovo/widget/WheelView;->access$700(Lcom/lenovo/widget/WheelView;)I

    move-result v2

    mul-int v8, v0, v2

    goto :goto_0

    :cond_1
    move v7, v1

    .line 822
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 814
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->startScrolling()V
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$300(Lcom/lenovo/widget/WheelView;)V

    .line 815
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    neg-float v1, p4

    float-to-int v1, v1

    #calls: Lcom/lenovo/widget/WheelView;->doScroll(I)V
    invoke-static {v0, v1}, Lcom/lenovo/widget/WheelView;->access$400(Lcom/lenovo/widget/WheelView;I)V

    .line 816
    const/4 v0, 0x1

    return v0
.end method
