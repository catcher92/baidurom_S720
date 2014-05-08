.class Lcom/mediatek/FMRadio/FMRadioFavorite$11;
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
    .line 748
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/high16 v7, 0x4120

    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 751
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v0

    const v4, 0x7f06000a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1002(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v0

    const v3, 0x7f06000c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 753
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 755
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const-string v5, "STATION_NAME"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1202(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v4

    if-ne v0, v4, :cond_6

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v5, 0x7f040015

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1002(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 765
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 769
    :goto_1
    mul-float v4, v0, v7

    .line 770
    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 771
    const/16 v0, 0x36b

    if-lt v5, v0, :cond_9

    const/16 v0, 0x438

    if-gt v5, v0, :cond_9

    int-to-float v0, v5

    sub-float v0, v4, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_9

    .line 773
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 775
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v0, v5, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/app/Activity;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v0, v5, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 779
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteSearchIndex(I)I
    invoke-static {v2, v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1700(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$810(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v0, v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/app/Activity;II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 785
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v0, v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 787
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteFavoriteIndex(I)I
    invoke-static {v2, v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1800(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$810(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    .line 792
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v4

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v6

    invoke-static {v0, v2, v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/app/Activity;Ljava/lang/String;III)V

    move v2, v1

    .line 796
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$800(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v0

    if-lt v2, v0, :cond_7

    .line 824
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 875
    :goto_3
    return-void

    .line 759
    :cond_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1002(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_1

    .line 799
    :cond_7
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 800
    if-eqz v1, :cond_5

    .line 804
    add-int/lit8 v2, v2, 0x1

    .line 805
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1300(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v4

    const-string v0, "STATION_FREQ_VALUE"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_4

    .line 806
    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    :goto_4
    const-string v2, "STATION_NAME"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v2, "STATION_FREQ"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v0, "STATION_FREQ_VALUE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 808
    :cond_8
    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 827
    :cond_9
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$11;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040024

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_a
    move-object v0, v3

    goto :goto_4
.end method
