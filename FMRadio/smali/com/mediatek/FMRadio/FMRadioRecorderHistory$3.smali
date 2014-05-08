.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$3;
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
    .line 309
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$3;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$3;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsDel()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$400(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    .line 314
    return-void
.end method
