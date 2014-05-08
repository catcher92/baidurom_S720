.class Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TuneThread"
.end annotation


# instance fields
.field public currentStation:I

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3134
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3135
    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    .line 3136
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3139
    const-string v0, "FMRadioActivity"

    const-string v1, "FM is playing."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 3141
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tune(F)Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;F)Z

    move-result v0

    .line 3142
    if-eqz v0, :cond_0

    .line 3143
    const-string v0, "FMRadioActivity"

    const-string v1, "Tune to the station succeeded."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 3145
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 3148
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 3173
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3174
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 3175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3176
    const-string v2, "MSGID"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3177
    const-string v2, "TUNE_STATION"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3178
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3180
    return-void

    .line 3150
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Can not tune to the station."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3153
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "FM is paused."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 3156
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 3157
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;->start()V

    goto :goto_0
.end method
