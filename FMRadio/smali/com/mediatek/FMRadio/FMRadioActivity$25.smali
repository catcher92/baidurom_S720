.class Lcom/mediatek/FMRadio/FMRadioActivity$25;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$25;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2667
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onClick Positive"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$25;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2671
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$25;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 2685
    :cond_0
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onClick Positive"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    return-void

    .line 2673
    :cond_1
    const/4 v0, -0x1

    .line 2675
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$25;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I

    move-result v0

    .line 2676
    const-string v1, "FMRadioActivity"

    const-string v2, "witchAntenna(1)"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2680
    :goto_1
    if-nez v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$25;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 2677
    :catch_0
    move-exception v1

    .line 2678
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: switchAntenna(1)"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
