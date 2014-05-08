.class Lcom/mediatek/FMRadio/FMRadioActivity$17;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 1390
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$17;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1393
    const-string v0, "FMRadioActivity"

    const-string v1, "play stop button click"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$17;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$17;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPauseFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1420
    :goto_0
    return-void

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$17;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7700(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0
.end method
