.class Lcom/mediatek/FMRadio/FMRadioActivity$7;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 858
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->val$hours:Lcom/lenovo/widget/WheelView;

    iput-object p3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->val$mins:Lcom/lenovo/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->val$hours:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->val$mins:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v2}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepTimeMins:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4302(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 863
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSleepTimeMins:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4300(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService;->startSleepTime(J)V

    .line 866
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->initiateSleepThread()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 869
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
