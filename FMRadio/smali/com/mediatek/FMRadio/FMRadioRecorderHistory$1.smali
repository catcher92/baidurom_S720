.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$1;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->onCreate(Landroid/os/Bundle;)V
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
    .line 280
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$1;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$1;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$000(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$1;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsSelAll()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$1;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsUnSelAll()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$200(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    goto :goto_0
.end method
