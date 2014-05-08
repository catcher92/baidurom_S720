.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$5;
.super Landroid/os/Handler;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$5;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$5;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$5;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$5;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getTrackCursor(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$700(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 490
    :cond_0
    return-void
.end method
