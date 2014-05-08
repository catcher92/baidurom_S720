.class Lcom/mediatek/FMRadio/FMRadioActivity$6;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Lcom/lenovo/widget/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->showSleepDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

.field final synthetic val$hours:Lcom/lenovo/widget/WheelView;

.field final synthetic val$mins:Lcom/lenovo/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/lenovo/widget/WheelView;Lcom/lenovo/widget/WheelView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->val$hours:Lcom/lenovo/widget/WheelView;

    iput-object p3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->val$mins:Lcom/lenovo/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/lenovo/widget/WheelView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 847
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->timeScrolled:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 848
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->timeChanged:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4202(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 849
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->val$hours:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->val$mins:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v2}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepTimeMins:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4302(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 850
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->timeChanged:Z
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4202(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 851
    return-void
.end method

.method public onScrollingStarted(Lcom/lenovo/widget/WheelView;)V
    .locals 2
    .parameter

    .prologue
    .line 844
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->timeScrolled:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 845
    return-void
.end method
