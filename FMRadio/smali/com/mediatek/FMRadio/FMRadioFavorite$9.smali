.class Lcom/mediatek/FMRadio/FMRadioFavorite$9;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 662
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1002(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 665
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const-string v2, "STATION_NAME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1202(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1002(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 682
    const-string v1, "STATION_TYPE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v1, "STATION_FREQ"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v1, "STATION_NAME"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v1, "STATION_FREQ_VALUE"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 688
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertIndex(I)I
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1400(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->notifyDataSetChanged()V

    .line 691
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->reset()V

    .line 692
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 693
    return-void

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1002(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
