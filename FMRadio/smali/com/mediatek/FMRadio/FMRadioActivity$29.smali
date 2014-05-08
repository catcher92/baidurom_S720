.class Lcom/mediatek/FMRadio/FMRadioActivity$29;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

.field final synthetic val$iStation:I


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2988
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->val$iStation:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2991
    const-string v0, "FMRadioActivity"

    const-string v1, "FM is playing."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 2993
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->val$iStation:I

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tune(F)Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;F)Z

    move-result v0

    .line 2994
    if-eqz v0, :cond_0

    .line 2995
    const-string v0, "FMRadioActivity"

    const-string v1, "Tune to the station succeeded."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 2997
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->val$iStation:I

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 3000
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 3024
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3025
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 3026
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3027
    const-string v2, "MSGID"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3028
    const-string v2, "TUNE_STATION"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3029
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3030
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3031
    return-void

    .line 3003
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Can not tune to the station."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3007
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "FM is paused."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->val$iStation:I

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 3010
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 3012
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$29;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0
.end method
