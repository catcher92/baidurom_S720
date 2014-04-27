.class public Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;
.super Landroid/widget/LinearLayout;
.source "LenovoLeWidgetLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoLeWidgetLayout"

.field private static final TOUCH_STATE_NORMAL:I = 0x1

.field private static final TOUCH_STATE_REST:I


# instance fields
.field private mBroadcastString:Ljava/lang/String;

.field private mLastMotionY:F

.field private mSnapVelocityYUpper:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 v0, 0x258

    iput v0, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mSnapVelocityYUpper:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mBroadcastString:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0x258

    iput v0, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mSnapVelocityYUpper:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mBroadcastString:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchSlop:I

    .line 33
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 80
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    iget v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    if-eqz v5, :cond_1

    .line 82
    const-string v4, "LenovoLeWidgetLayout"

    const-string/jumbo v5, "onInterceptTouchEvent:move 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 86
    .local v1, y:F
    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_2
    :goto_1
    iget v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 88
    :pswitch_0
    const-string v5, "LenovoLeWidgetLayout"

    const-string/jumbo v6, "onInterceptTouchEvent:move 2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mLastMotionY:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 90
    .local v2, yDiff:I
    iget v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchSlop:I

    if-le v2, v5, :cond_2

    .line 91
    iput v3, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    goto :goto_1

    .line 96
    .end local v2           #yDiff:I
    :pswitch_1
    iput v1, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mLastMotionY:F

    .line 97
    iput v4, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    goto :goto_1

    .line 102
    :pswitch_2
    iput v4, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    .line 36
    iget-object v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 39
    :cond_0
    iget-object v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 43
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 45
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mLastMotionY:F

    goto :goto_0

    .line 48
    :pswitch_1
    const-string v5, "LenovoLeWidgetLayout"

    const-string/jumbo v6, "onTouchEvent move"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mLastMotionY:F

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v2, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 54
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 55
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 56
    .local v3, velocityX:I
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v4, v5

    .line 58
    .local v4, velocityY:I
    const-string v5, "LenovoLeWidgetLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "velocityX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v5, "LenovoLeWidgetLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "velocityY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mSnapVelocityYUpper:I

    if-le v5, v6, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    const-wide v7, 0x3ffbb645a1cac083L

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 63
    iget-object v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mBroadcastString:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 64
    const-string v5, "LenovoLeWidgetLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mBroadcastString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mBroadcastString:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iput v11, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    goto/16 :goto_0

    .line 72
    .end local v2           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v3           #velocityX:I
    .end local v4           #velocityY:I
    :pswitch_3
    iput v11, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mTouchState:I

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setBroadcast(Ljava/lang/String;)V
    .locals 0
    .parameter "broadcastString"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mBroadcastString:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSnapVelocityYUpper(I)V
    .locals 0
    .parameter "snapVelocityYUpper"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 110
    iput p1, p0, Llenovo/widget/LenovoLeWidget/LenovoLeWidgetLayout;->mSnapVelocityYUpper:I

    .line 111
    return-void
.end method
