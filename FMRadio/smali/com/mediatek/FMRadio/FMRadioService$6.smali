.class Lcom/mediatek/FMRadio/FMRadioService$6;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->onStartCommand(Landroid/content/Intent;II)I
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
    .line 1973
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x4120

    .line 1977
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$4602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1978
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->seek(FZ)F

    move-result v0

    .line 1979
    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1980
    const/16 v1, 0x438

    if-ge v0, v1, :cond_0

    const/16 v1, 0x36b

    if-gt v0, v1, :cond_1

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v0

    const/high16 v1, 0x42d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->seek(FZ)F

    move-result v0

    .line 1983
    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1985
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v1

    int-to-float v2, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->tune(F)Z

    move-result v1

    .line 1986
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v3, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mSeeking:Z
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$4602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1987
    if-eqz v1, :cond_2

    .line 1988
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1989
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1991
    const-string v1, "EXTRA_RDS_TA_DEACTIVED"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1992
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2000
    :cond_2
    :goto_0
    return-void

    .line 1995
    :catch_0
    move-exception v0

    .line 1997
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
