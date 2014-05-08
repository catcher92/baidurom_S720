.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$1;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1594
    check-cast p1, Landroid/widget/CheckBox;

    .line 1595
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1596
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$1;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->access$2500(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1000()Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1597
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter$1;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;->access$2500(Lcom/mediatek/FMRadio/FMRadioRecorderHistory$TrackListAdapter;)Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    move-result-object v0

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->isAllSel()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    .line 1602
    return-void
.end method
