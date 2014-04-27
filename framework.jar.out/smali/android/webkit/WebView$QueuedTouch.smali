.class Landroid/webkit/WebView$QueuedTouch;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedTouch"
.end annotation


# instance fields
.field mEvent:Landroid/view/MotionEvent;

.field mNext:Landroid/webkit/WebView$QueuedTouch;

.field mSequence:J

.field mTed:Landroid/webkit/WebViewCore$TouchEventData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8137
    invoke-direct {p0}, Landroid/webkit/WebView$QueuedTouch;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;
    .locals 5
    .parameter "other"

    .prologue
    .line 8161
    iget-wide v1, p1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v3, p0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 8162
    iput-object p0, p1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8172
    .end local p1
    :goto_0
    return-object p1

    .line 8166
    .restart local p1
    :cond_0
    move-object v0, p0

    .line 8167
    .local v0, insertAt:Landroid/webkit/WebView$QueuedTouch;
    :goto_1
    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v1, v1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v3, p1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 8168
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_1

    .line 8170
    :cond_1
    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8171
    iput-object p1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    move-object p1, p0

    .line 8172
    goto :goto_0
.end method

.method public set(Landroid/view/MotionEvent;J)Landroid/webkit/WebView$QueuedTouch;
    .locals 2
    .parameter "ev"
    .parameter "sequence"

    .prologue
    const/4 v1, 0x0

    .line 8153
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    .line 8154
    iput-wide p2, p0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 8155
    iput-object v1, p0, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    .line 8156
    iput-object v1, p0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8157
    return-object p0
.end method

.method public set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;
    .locals 3
    .parameter "ted"

    .prologue
    const/4 v2, 0x0

    .line 8145
    iget-wide v0, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    iput-wide v0, p0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 8146
    iput-object p1, p0, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    .line 8147
    iput-object v2, p0, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    .line 8148
    iput-object v2, p0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 8149
    return-object p0
.end method
