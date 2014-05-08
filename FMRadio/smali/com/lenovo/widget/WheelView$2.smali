.class Lcom/lenovo/widget/WheelView$2;
.super Landroid/os/Handler;
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
    .line 852
    iput-object p1, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 854
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 855
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 856
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->lastScrollY:I
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$500(Lcom/lenovo/widget/WheelView;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 857
    iget-object v2, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #setter for: Lcom/lenovo/widget/WheelView;->lastScrollY:I
    invoke-static {v2, v0}, Lcom/lenovo/widget/WheelView;->access$502(Lcom/lenovo/widget/WheelView;I)I

    .line 858
    if-eqz v1, :cond_0

    .line 859
    iget-object v2, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->doScroll(I)V
    invoke-static {v2, v1}, Lcom/lenovo/widget/WheelView;->access$400(Lcom/lenovo/widget/WheelView;I)V

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 865
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 866
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 869
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->animationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$1100(Lcom/lenovo/widget/WheelView;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 875
    :goto_0
    return-void

    .line 870
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 871
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->justify()V
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$1200(Lcom/lenovo/widget/WheelView;)V

    goto :goto_0

    .line 873
    :cond_3
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$2;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v0}, Lcom/lenovo/widget/WheelView;->finishScrolling()V

    goto :goto_0
.end method
