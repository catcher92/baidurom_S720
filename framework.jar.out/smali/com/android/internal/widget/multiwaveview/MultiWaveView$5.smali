.class Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 158
    const-string v0, "MultiWaveView"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$400(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$400(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$500(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$402(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)I

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$600(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$5;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$702(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)Z

    .line 165
    return-void
.end method