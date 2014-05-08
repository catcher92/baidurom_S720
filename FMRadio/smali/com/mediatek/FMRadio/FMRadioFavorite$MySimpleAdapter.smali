.class public Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "FMRadioFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field public mIsSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1263
    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mCtx:Landroid/content/Context;

    .line 1264
    iput-object p3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    .line 1265
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    .line 1267
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1333
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1338
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1344
    if-nez p2, :cond_1

    .line 1345
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    .line 1346
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1347
    const v0, 0x7f06005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIvPlayStatus:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$1902(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1348
    const v0, 0x7f06005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mTvStationName:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2002(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1349
    const v0, 0x7f06005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mTvStationValue:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2102(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1350
    const v0, 0x7f06005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIbFavorite:Landroid/widget/ImageButton;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2202(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 1351
    const v0, 0x7f06005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mCbSelect:Landroid/widget/CheckBox;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$202(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 1352
    const v0, 0x7f06005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mTvStationNum:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2302(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1354
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v1

    .line 1358
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1361
    if-eqz v0, :cond_0

    .line 1362
    const-string v1, "STATION_NAME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1363
    const-string v2, "STATION_FREQ"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1364
    const-string v3, "STATION_TYPE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1365
    const-string v5, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1366
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationFreq:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$2400(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1367
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIvPlayStatus:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$1900(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020046

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1371
    :goto_1
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mTvStationName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2000(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mTvStationValue:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2100(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " MHz"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mTvStationNum:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2300(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    const/4 v1, 0x2

    if-ne v1, v3, :cond_3

    .line 1375
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIbFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1381
    :goto_2
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIbFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter$1;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1389
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mEditmodeOn:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1390
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIbFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1391
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mCbSelect:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1400
    :cond_0
    :goto_3
    return-object p2

    .line 1356
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;

    move-object v4, v0

    goto/16 :goto_0

    .line 1369
    :cond_2
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIvPlayStatus:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$1900(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1378
    :cond_3
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIbFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 1393
    :cond_4
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mIbFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$2200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1394
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mCbSelect:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1395
    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->mCbSelect:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;->access$200(Lcom/mediatek/FMRadio/FMRadioFavorite$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method

.method public isAllSelected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1312
    .line 1313
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    move v3, v2

    .line 1314
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1316
    if-eqz v0, :cond_0

    .line 1317
    add-int/lit8 v3, v3, 0x1

    .line 1314
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1321
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$800(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v0

    if-ne v3, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public isAnythingSelected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1300
    .line 1301
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move v1, v0

    .line 1302
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1304
    if-eqz v2, :cond_1

    move v0, v2

    .line 1309
    :cond_0
    return v0

    .line 1302
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1276
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 1279
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1280
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1284
    :cond_0
    return-void
.end method

.method public setAllSelected()V
    .locals 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1294
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1298
    :cond_0
    return-void
.end method

.method public setAllUnSelected()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1286
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1287
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    return-void
.end method

.method public setCheckedByIndex(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$MySimpleAdapter;->mIsSelected:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1274
    :cond_0
    return-void
.end method
