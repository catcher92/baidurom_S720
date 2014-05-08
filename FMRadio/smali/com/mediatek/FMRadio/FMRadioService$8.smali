.class Lcom/mediatek/FMRadio/FMRadioService$8;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->registerSDListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2151
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_1

    .line 2155
    const-string v0, "FMRadioService"

    const-string v1, "SD receiver: FMRecorder is not present!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2159
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2160
    const-string v0, "FMRadioService"

    const-string v1, "MEDIA_MOUNTED"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->onSDInserted()V

    goto :goto_0

    .line 2162
    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 2164
    const-string v1, "FMRadioService"

    const-string v2, "MEDIA_EJECT"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v1, v1, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->onSDRemoved()V

    .line 2168
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 2169
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->onRecorderError(I)V

    .line 2170
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    .line 2173
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2174
    const-string v1, "EXTRA_RECORDING_STATE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2175
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$8;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
