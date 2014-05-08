.class Lcom/mediatek/FMRadio/FMRadioActivity$23;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->setSleepAlarm(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2490
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9600()I

    move-result v0

    if-lez v0, :cond_1

    .line 2492
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2494
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->endSleepTime()V

    .line 2495
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9600()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService;->startSleepTime(J)V

    .line 2496
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->initiateSleepThread()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 2498
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04008c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9600()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2520
    :cond_0
    :goto_0
    return-void

    .line 2500
    :catch_0
    move-exception v0

    .line 2502
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2508
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2510
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->endSleepTime()V

    .line 2511
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopSleepThread()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 2512
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$23;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2514
    :catch_1
    move-exception v0

    .line 2516
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
