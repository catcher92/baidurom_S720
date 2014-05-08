.class Lcom/mediatek/FMRadio/FMRadioActivity$21;
.super Landroid/os/Handler;
.source "FMRadioActivity.java"


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
    .line 2380
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2382
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2396
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2397
    return-void

    .line 2385
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopSleepThread()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 2390
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateExpiredSleepTime()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9500(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 2382
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
