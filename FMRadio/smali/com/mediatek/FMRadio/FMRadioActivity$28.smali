.class Lcom/mediatek/FMRadio/FMRadioActivity$28;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
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
    .line 2869
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$28;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$28;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 2872
    return-void
.end method
