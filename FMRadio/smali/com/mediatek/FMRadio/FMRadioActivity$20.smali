.class Lcom/mediatek/FMRadio/FMRadioActivity$20;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
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
    .line 2346
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$20;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$20;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->hasSleepTimerExpired()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    .line 2349
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2353
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 2354
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2355
    const/16 v2, 0x1002

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2356
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$20;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2357
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$20;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->hasSleepTimerExpired()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2358
    :catch_0
    move-exception v1

    .line 2359
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2362
    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 2363
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2364
    const/16 v1, 0x1001

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2365
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$20;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2367
    :cond_1
    return-void
.end method
