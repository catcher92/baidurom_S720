.class Lcom/mediatek/FMRadio/FMRadioActivity$19;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onDestroy()V
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
    .line 1971
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopScan()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    .line 1974
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1975
    const-string v0, "FMRadioActivity"

    const-string v1, "FM is playing."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 1977
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tune(F)Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;F)Z

    move-result v0

    .line 1978
    if-eqz v0, :cond_0

    .line 1979
    const-string v0, "FMRadioActivity"

    const-string v1, "Tune to the station succeeded."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 1990
    :goto_0
    return-void

    .line 1983
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Can not tune to the station."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1987
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "FM is paused."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0
.end method
