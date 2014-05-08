.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 797
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 799
    .line 801
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$800(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getSelSize()I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$900(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)I

    move-result v0

    .line 805
    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 810
    new-array v2, v0, [J

    move v3, v4

    move v1, v4

    .line 813
    :goto_1
    if-ge v3, v5, :cond_2

    .line 815
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 817
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v0

    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 824
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v2, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 813
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 839
    :goto_4
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {v1, v0, v8}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->deleteTracks(Landroid/content/Context;[JZ)V

    .line 840
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getTrackCursor(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, v1, v2, v8}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$700(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 841
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #setter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$802(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Z)Z

    .line 842
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$800(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 843
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showDeleteMode()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1300(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    .line 848
    :goto_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$800(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->setIsMulti(Z)V

    .line 849
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mAdapter:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 852
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->finish()V

    goto/16 :goto_0

    .line 835
    :cond_3
    new-array v0, v8, [J

    .line 836
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedId:J
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1200(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)J

    move-result-wide v1

    aput-wide v1, v0, v4

    goto :goto_4

    .line 845
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$7;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->hideDeleteMode()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1400(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    goto :goto_5

    .line 825
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method
